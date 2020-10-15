/*
 * Driver for the LeWiz LMAC1 with a Xilinx AXI DMA.
 *
 * References:
 * https://www.xilinx.com/support/documentation/ip_documentation/axi_dma/v7_1/pg021_axi_dma.pdf
 * https://github.com/lewiz-support/LMAC_CORE2
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 */

#include <linux/module.h>
#include <linux/uaccess.h>
#include <linux/netdevice.h>
#include <linux/etherdevice.h>
#include <linux/skbuff.h>
#include <linux/io.h>
#include <linux/slab.h>
#include <linux/of_address.h>
#include <linux/of_device.h>
#include <linux/of_platform.h>
#include <linux/of_mdio.h>
#include <linux/of_net.h>
#include <linux/phy.h>
#include <linux/phy/phy.h>
#include <linux/interrupt.h>
#include <linux/clk.h>
#include <linux/clk-provider.h>
#include <linux/gpio.h>
#include <linux/of_gpio.h>

#include <linux/version.h>

#define D(x)

#define DRIVER_NAME		"lmac1"
#define TX_TIMEOUT		(10 * HZ)	/* Tx timeout is 10 seconds. */
#define MAX_FRAME_SIZE		(2048)

//#define USE_BOUNCE_BUFFER

/* DMA TX/RX Base offsets.  */
#define DMA_M2S_OFFSET		0x00
#define DMA_S2M_OFFSET		0x30

/* Register offsets and bit-field definitions.  */
#define DMA_CR_RS		(1 << 0)
#define DMA_CR_RESET		(1 << 2)
#define DMA_CR_KEYHOLE		(1 << 3)
#define DMA_CR_CYCLIC_BD	(1 << 4)
#define DMA_CR_IOC_IRQ_EN	(1 << 12)
#define DMA_CR_DLY_IRQ_EN	(1 << 13)
#define DMA_CR_ERR_IRQ_EN	(1 << 14)

#define DMA_SR_HALTED		(1 << 0)
#define DMA_SR_IDLE		(1 << 1)
#define DMA_SR_SGINCLD		(1 << 3)
#define DMA_SR_IOC_IRQ		(1 << 12)
#define DMA_SR_DLY_IRQ		(1 << 13)
#define DMA_SR_ERR_IRQ		(1 << 14)

#define DMA_R_CR		0x0
#define DMA_R_SR		0x4
#define DMA_R_CURDESC           0x08
#define DMA_R_CURDESC_MSB       0x0C
#define DMA_R_TAILDESC          0x10
#define DMA_R_TAILDESC_MSB      0x14

#define CTRL_EOF (1U << 26)
#define CTRL_SOF (1U << 27)
#define CTRL_LEN_MASK ((1U << 26) - 1)

#define DEBUG 0

#define CONTROL_PAYLOAD_WORDS 5

struct dma_sg_descr {
	u64 next;
	u64 addr;
	u64 reserved;
	u32 control;
	u32 status;
	u32 app[CONTROL_PAYLOAD_WORDS];

	u32 pad[3];
};

struct net_local {
	struct net_device *ndev;
	struct platform_device *pdev;
	void __iomem *base_addr;

	int rx_irq;
	struct clk *pl_clk[2];
	struct clk *user_clk;
	struct clk *sfp_clk;
	struct phy *phy;


	u8 *bounce;
	dma_addr_t bounce_handle;

	struct {
		spinlock_t lock;
		unsigned int size;
		struct dma_sg_descr *descr;
		dma_addr_t descr_dma;
		struct sk_buff **skb; /* Allocated SKB.  */

		unsigned int pos;
		unsigned int done_pos;

		u32 r_cr;

		void *bounce[1024];
		unsigned int in_flight;
	} tx, rx;
};

static void print_descr(const char *prefix, struct dma_sg_descr *d)
{
	printk("%s %p:\n", prefix, d);
	printk("next 0x%llx\n", d->next);
	printk("addr 0x%llx\n", d->addr);
	printk("reserved 0x%llx\n", d->reserved);
	printk("control 0x%x\n", d->control);
	printk("status 0x%x\n", d->status);
#if 0
	printk("APP0 0x%x\n", d->app[0]);
	printk("APP1 0x%x\n", d->app[1]);
	printk("APP2 0x%x\n", d->app[2]);
	printk("APP3 0x%x\n", d->app[3]);
	printk("APP4 0x%x\n", d->app[4]);
	printk("PAD0 0x%x\n", d->pad[0]);
	printk("PAD1 0x%x\n", d->pad[1]);
	printk("PAD2 0x%x\n", d->pad[2]);
#endif
}

static void lmac_tx_tail(struct net_local *lp, unsigned int d)
{
	dma_addr_t addr = lp->tx.descr_dma + sizeof lp->tx.descr[0] * d;

	writel(addr, lp->base_addr + DMA_M2S_OFFSET + DMA_R_TAILDESC);
	wmb();
	writel(addr >> 32, lp->base_addr + DMA_M2S_OFFSET + DMA_R_TAILDESC_MSB);
	wmb();
}

static void lmac_rx_tail(struct net_local *lp, unsigned int d)
{
	dma_addr_t addr = lp->rx.descr_dma + sizeof lp->rx.descr[0] * d;

	writel(addr, lp->base_addr + DMA_S2M_OFFSET + DMA_R_TAILDESC);
	wmb();
	writel(addr >> 32, lp->base_addr + DMA_S2M_OFFSET + DMA_R_TAILDESC_MSB);
	wmb();
//	printk("%s: %llx\n", __func__, lp->rx.descr_dma + sizeof lp->rx.descr[0] * d);
}

static void lmac_reset(struct net_local *lp, unsigned int offset) {
	u32 cr;

	writel(DMA_CR_RESET, lp->base_addr + offset + DMA_R_CR);
	wmb();
	do {
		cr = readl(lp->base_addr + offset + DMA_R_CR);
	} while (cr & DMA_CR_RESET);
}

static void lmac_start_tx(struct net_local *lp, unsigned int d)
{
	dma_addr_t addr = lp->tx.descr_dma + sizeof lp->tx.descr[0] * d;

	lp->tx.r_cr |= DMA_CR_RS;
	writel(addr, lp->base_addr + DMA_M2S_OFFSET + DMA_R_CURDESC);
	wmb();
	writel(addr >> 32, lp->base_addr + DMA_M2S_OFFSET + DMA_R_CURDESC_MSB);
	//printk("%s: pos=%d write_cr=%x\n", __func__, d, lp->tx.r_cr | DMA_CR_RS);
	writel(lp->tx.r_cr,
		lp->base_addr + DMA_M2S_OFFSET + DMA_R_CR);
	wmb();
}

static void lmac_start_rx(struct net_local *lp)
{
	dma_addr_t addr = lp->rx.descr_dma;

	lp->rx.pos = 0;
	lp->rx.done_pos = 0;
	lp->rx.r_cr |= DMA_CR_RS;

	writel(addr, lp->base_addr + DMA_S2M_OFFSET + DMA_R_CURDESC);
	writel(addr >> 32, lp->base_addr + DMA_S2M_OFFSET + DMA_R_CURDESC_MSB);
	wmb();

	writel(lp->rx.r_cr,
		lp->base_addr + DMA_S2M_OFFSET + DMA_R_CR);
	wmb();
	lmac_rx_tail(lp, lp->rx.size - 1);
	wmb();
}

static void lmac_alloc_skb(struct net_device *dev, unsigned int i)
{
	struct net_local *lp = netdev_priv(dev);
	struct sk_buff *skb;
	dma_addr_t handle;

	BUG_ON(i > lp->rx.size);

	lp->rx.skb[i] = skb = netdev_alloc_skb_ip_align(dev, MAX_FRAME_SIZE);

#ifdef USE_BOUNCE_BUFFER
	handle = lp->bounce_handle + i * MAX_FRAME_SIZE;
	lp->rx.bounce[i] = lp->bounce + i * MAX_FRAME_SIZE;
	printk("bounce[%d] = %p %llx\n", i, lp->rx.bounce[i], handle);
#else
	/* Map to a DMA (physical) address.  */
	handle = dma_map_single(&lp->pdev->dev,
				skb->data, MAX_FRAME_SIZE,
				DMA_FROM_DEVICE);
	if (dma_mapping_error(&lp->pdev->dev, handle)) {
		printk("RX DMA Mapping error!!!\n");
	}
#endif
	//printk("rx skb map %p -> %llx\n", skb->data, handle);

	lp->rx.descr[i].addr = handle;
	lp->rx.descr[i].control = MAX_FRAME_SIZE;
	wmb();
//	print_descr("rx", &lp->rx.descr[i]);
}

static void lmac_alloc_dma_rings(struct net_device *dev)
{
	struct net_local *lp = netdev_priv(dev);
	unsigned int i;

	lp->tx.skb = devm_kzalloc(&dev->dev,
				sizeof lp->tx.skb * lp->tx.size,
				GFP_KERNEL);
	lp->rx.skb = devm_kzalloc(&dev->dev,
				sizeof lp->rx.skb * lp->rx.size,
				GFP_KERNEL);

	lp->tx.descr = dma_alloc_coherent(&lp->pdev->dev,
					sizeof lp->tx.descr[0] * lp->tx.size + 64,
					&lp->tx.descr_dma, GFP_KERNEL | GFP_DMA);
	lp->rx.descr = dma_alloc_coherent(&lp->pdev->dev,
					sizeof lp->rx.descr[0] * lp->rx.size + 63,
					&lp->rx.descr_dma, GFP_KERNEL | GFP_DMA);


	if (dma_mapping_error(&lp->pdev->dev, lp->tx.descr_dma)) {
		printk("TX DMA DESCR Mapping error!!!\n");
	}

	if (dma_mapping_error(&lp->pdev->dev, lp->rx.descr_dma)) {
		printk("RX DMA DESCR Mapping error!!!\n");
	}

	for (i = 0; i < lp->tx.size; i++) {
		unsigned int next = i + 1;

		if (next == lp->tx.size) {
			next = 0;
		}

		memset(&lp->tx.descr[i], 0, sizeof lp->tx.descr[i]);
		lp->tx.descr[i].next = lp->tx.descr_dma +
			sizeof lp->tx.descr[0] * next;

		//printk("tx[%d] descr=%llx next=%llx\n", i,
		//	lp->tx.descr_dma + sizeof lp->tx.descr[0] * i,
		//	lp->tx.descr[i].next);
	}

	lp->bounce = dma_alloc_coherent(&lp->pdev->dev,
					lp->rx.size * MAX_FRAME_SIZE,
					&lp->bounce_handle, GFP_ATOMIC);

	//printk("lp->bounce = %p\n", lp->bounce);
	for (i = 0; i < lp->rx.size; i++) {
		unsigned int next = i + 1;

		if (next == lp->rx.size) {
			next = 0;
		}

		memset(&lp->rx.descr[i], 0, sizeof lp->rx.descr[i]);
		lp->rx.descr[i].next = lp->rx.descr_dma +
			sizeof lp->rx.descr[0] * next;
		lmac_alloc_skb(dev, i);
		//D(printk("rx[%d] descr=%llx next=%llx\n", i,
		//	lp->rx.descr_dma + sizeof lp->rx.descr[0] * i,
		//	lp->rx.descr[i].next));
	}

	//print_hex_dump(KERN_WARNING, "rx.skb[0] pre data: ", DUMP_PREFIX_ADDRESS,
	//		16, 1, lp->rx.skb[0]->data, 32, true);

	//printk("DMA tx=%llx rx=%llx\n", lp->tx.descr_dma, lp->rx.descr_dma);
	lp->tx.pos = 0;
	lp->tx.done_pos = 0;
	lp->rx.pos = 0;
	lp->rx.done_pos = 0;

	lp->tx.in_flight = 0;
	wmb();
}

static inline void lmac1_ack_interrupt(struct net_local *lp,
					unsigned long offset,
					uint32_t status)
{
	u32 r_sr;

	// Ack the IRQ.
	writel(DMA_SR_IOC_IRQ, lp->base_addr + offset + DMA_R_SR);

	wmb();
	// When co-simulating there might be a long delay for
	// the interrupt ACK to propagate. Read-back to make sure
	// it has bitten.
	r_sr = readl(lp->base_addr + offset + DMA_R_SR);
}

#if LINUX_VERSION_CODE < KERNEL_VERSION(5,0,0)
static void lmac1_tx_timeout(struct net_device *dev)
#else
static void lmac1_tx_timeout(struct net_device *dev, unsigned int txqueue)
#endif
{
	printk("%s: timeout\n", __func__);
	// TODO: Dump registers, reset everything and start again..
}

static void lmac_rx_process(struct net_device *dev, unsigned int pos)
{
	struct net_local *lp = netdev_priv(dev);
	struct sk_buff *skb = lp->rx.skb[pos];
	u32 len;

#ifndef USE_BOUNCE_BUFFER
	dma_unmap_single(&lp->pdev->dev, lp->rx.descr[pos].addr,
			MAX_FRAME_SIZE, DMA_FROM_DEVICE);
//	printk("skb unmap %p -> %llx\n", lp->rx.skb[pos]->data, lp->rx.descr[pos].addr);
#endif

//	print_descr("rx", &lp->rx.descr[pos]);
	WARN_ON(!(lp->rx.descr[pos].status & (1U << 31)));
	WARN_ON(!(lp->rx.descr[pos].status & CTRL_EOF));
	WARN_ON(!(lp->rx.descr[pos].status & CTRL_SOF));

	len = lp->rx.descr[pos].status & CTRL_LEN_MASK;
	len += 4;
	// Copy bounce buffer
#ifdef USE_BOUNCE_BUFFER
	if (lp->rx.bounce[pos]) {
		memcpy(skb->data, lp->rx.bounce[pos], len);
	} else {
		//printk("rx bounce pos=%d is NULL\n", pos);
	}
#endif

	//printk("rx pos=%u len=%d\n", pos, len);
#if 1
	//print_hex_dump(KERN_WARNING, "rx data: ", DUMP_PREFIX_ADDRESS,
	//		16, 1, skb->data, len > 32 ? 32 : len, true);
#endif
	// Inject the packet into the Linux stack.
	skb_put(skb, len);

	skb->protocol = eth_type_trans(skb, dev);
//	skb->ip_summed = CHECKSUM_NONE;
//	skb->ip_summed = CHECKSUM_UNNECESSARY;

	dev->stats.rx_packets++;
	dev->stats.rx_bytes += len;

	netif_rx(skb);

	/* Clear the Complete flag to give back the descriptor.  */
	lmac_alloc_skb(dev, pos);
	lp->rx.descr[pos].status = 0;
	wmb();
}

static irqreturn_t lmac1_rx_interrupt(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct net_local *lp = netdev_priv(dev);
	irqreturn_t ret = IRQ_HANDLED;
	unsigned int pos = lp->rx.done_pos;
	int new_tail  = -1;
	u32 rx_sr;

	/* Check the Status Register for pending RX interrupts.  */
	rx_sr = readl(lp->base_addr + DMA_S2M_OFFSET + DMA_R_SR);
	lmac1_ack_interrupt(lp, DMA_S2M_OFFSET, rx_sr);

//	printk("%s: pos=%u sr=%x\n", __func__, pos, rx_sr);
	if (rx_sr & DMA_SR_ERR_IRQ) {
		u64 r_cur, r_tail;
		u32 r_cr;

		r_cr = readl(lp->base_addr + DMA_S2M_OFFSET + DMA_R_CR);
		r_cur = readq(lp->base_addr + DMA_S2M_OFFSET + DMA_R_CURDESC);
		r_tail = readq(lp->base_addr + DMA_S2M_OFFSET + DMA_R_TAILDESC);

		printk("RX-ERROR: sr=%x cr=%x cur=%llx tail=%llx\n",
			rx_sr, r_cr, r_cur, r_tail);
	}

	if (rx_sr & DMA_SR_HALTED) {
		u64 r_cur, r_tail;
		u32 r_cr;

		r_cr = readl(lp->base_addr + DMA_S2M_OFFSET + DMA_R_CR);
		r_cur = readq(lp->base_addr + DMA_S2M_OFFSET + DMA_R_CURDESC);
		r_tail = readq(lp->base_addr + DMA_S2M_OFFSET + DMA_R_TAILDESC);

		printk("RX-HALTED: sr=%x cr=%x cur=%llx tail=%llx\n",
			rx_sr, r_cr, r_cur, r_tail);
	}

	if (rx_sr & DMA_SR_IOC_IRQ) {
	//	printk("descr[%d] status=%x\n", pos, lp->rx.descr[pos].status);
		dma_wmb();
		while (lp->rx.descr[pos].status & 0xF0000000) {
			if (lp->rx.descr[pos].status & (1U << 31)) {
				lmac_rx_process(dev, pos);
				new_tail = pos;
			} else {
				printk("ERROR detected rx[%d] status=%x\n",
					pos, lp->rx.descr[pos].status);
				lp->rx.descr[pos].status = 0;
			}

			wmb();

			lp->rx.done_pos++;
			lp->rx.done_pos %= lp->rx.size;
			pos = lp->rx.done_pos;
			dma_wmb();
			//printk("descr[%d] status=%x\n", pos, lp->rx.descr[pos].status);
		}

		rx_sr = readl(lp->base_addr + DMA_S2M_OFFSET + DMA_R_SR);
		if (new_tail != -1) {
			lmac_rx_tail(lp, new_tail);
		}
		if (rx_sr & DMA_SR_IDLE) {
			lmac_rx_tail(lp, new_tail);
			wmb();
			rx_sr = readl(lp->base_addr + DMA_S2M_OFFSET + DMA_R_SR);
		}
		if (rx_sr & (DMA_SR_HALTED | DMA_SR_IDLE)) {
			u64 r_cur, r_tail;
			u32 r_cr;

			r_cr = readl(lp->base_addr + DMA_S2M_OFFSET + DMA_R_CR);
			r_cur = readq(lp->base_addr + DMA_S2M_OFFSET + DMA_R_CURDESC);
			r_tail = readq(lp->base_addr + DMA_S2M_OFFSET + DMA_R_TAILDESC);

			printk("RX-HALTED or IDLE: sr=%x cr=%x cur=%llx tail=%llx\n",
				rx_sr, r_cr, r_cur, r_tail);
		}

		if (rx_sr & (DMA_SR_HALTED | DMA_SR_IDLE)) {
			// Halted, restart.
			printk("RX restart (HALTED)\n");
//			writel(lp->rx.r_cr | DMA_CR_RS,
//				lp->base_addr + DMA_S2M_OFFSET + DMA_R_CR);
//			lmac_rx_tail(lp, pos);
			lmac_start_rx(lp);
		}
	} else {
		printk("%s: Rx IRQ not handled\n", __func__);
		ret = IRQ_NONE;
	}

//	printk("RX IRQ done\n");
	return ret;
}

static irqreturn_t lmac1_tx_interrupt(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct net_local *lp = netdev_priv(dev);
	irqreturn_t ret = IRQ_HANDLED;
	unsigned int pos = lp->tx.done_pos;
	u32 tx_sr;

        spin_lock(&lp->tx.lock);

	tx_sr = readl(lp->base_addr + DMA_M2S_OFFSET + DMA_R_SR);
	lmac1_ack_interrupt(lp, DMA_M2S_OFFSET, tx_sr);

//	printk("%s: pos=%u sr=%x\n", __func__, pos, tx_sr);
	if (tx_sr & DMA_SR_ERR_IRQ) {
		u64 r_cur, r_tail;
		u32 r_cr;

		r_cr = readl(lp->base_addr + DMA_M2S_OFFSET + DMA_R_CR);
		r_cur = readq(lp->base_addr + DMA_M2S_OFFSET + DMA_R_CURDESC);
		r_tail = readq(lp->base_addr + DMA_M2S_OFFSET + DMA_R_TAILDESC);

		printk("TX-ERROR: sr=%x cr=%x cur=%llx tail=%llx\n",
			tx_sr, r_cr, r_cur, r_tail);
	}

	if (tx_sr & DMA_SR_IOC_IRQ) {
		dma_wmb();
		while (lp->tx.descr[pos].status & 0xF0000000) {

			WARN_ON(!(lp->tx.descr[pos].status & (1U << 31)));
			if (lp->tx.descr[pos].status & 0x70000000) {
				printk("TX ERR: pos=%d status=%x\n", pos,
					lp->tx.descr[pos].status);
			}


#if 0
			printk("DONE UNMAP: descr[%d].addr=%llx ctrl=%x status=%x\n",
				pos,
				lp->tx.descr[pos].addr,
				lp->tx.descr[pos].control,
				lp->tx.descr[pos].status);
#endif
			dma_unmap_single(&lp->pdev->dev, lp->tx.descr[pos].addr,
					lp->tx.skb[pos]->len, DMA_TO_DEVICE);
			dev->stats.tx_packets++;
			dev->stats.tx_bytes += lp->tx.skb[pos]->len;

#if LINUX_VERSION_CODE <= KERNEL_VERSION(5,7,0)
			dev_kfree_skb_irq(lp->tx.skb[pos]);
#else
			dev_consume_skb_irq(lp->tx.skb[pos]);
#endif
			lp->tx.skb[pos] = NULL;
			lp->tx.descr[pos].addr = 0;
			/* Clear the Complete flag to give back the descriptor.  */
			lp->tx.descr[pos].status = 0;
			dma_wmb();

			lp->tx.in_flight--;

			lp->tx.done_pos++;
			lp->tx.done_pos %= lp->tx.size;
			pos = lp->tx.done_pos;
			dma_wmb();
		}
		netif_trans_update(dev);
		netif_wake_queue(dev);
	} else {
		// FIXME: We have an issue with spurious interrupts.
		// May be related to remote-port IRQ's being posted.
		if (DEBUG) {
			printk("TX IRQ not handled1 tx_sr=%x\n",
				tx_sr);
		}
		ret = IRQ_NONE;
	}

//	printk("TX IRQ done\n");
        spin_unlock(&lp->tx.lock);
	return ret;
}

static int lmac1_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
	struct net_local *lp = netdev_priv(dev);
	unsigned long flags;
	unsigned int len;
	unsigned int pos;
	u32 tx_sr;

	len = skb->len;

	if (len < 64)
		len = 64;

        spin_lock_irqsave(&lp->tx.lock, flags);

	pos = lp->tx.pos;

	//printk("%s: pos=%u len=%d in-flight=%d\n", __func__, pos, len,
	//	lp->tx.in_flight);
	lp->tx.skb[pos] = skb;
	lp->tx.descr[pos].addr = dma_map_single(&lp->pdev->dev,
					skb->data, skb->len,
					DMA_TO_DEVICE);
//	printk("tx skb map %p -> %llx\n", lp->tx.skb[pos]->data, lp->tx.descr[pos].addr);
	if (dma_mapping_error(&lp->pdev->dev, lp->tx.descr[pos].addr)) {
		printk("TX DMA Mapping error!!!\n");
		goto done;
	}

	lp->tx.descr[pos].control = len | CTRL_SOF | CTRL_EOF;
	lp->tx.descr[pos].status = 0;
	wmb();

#if 0
	//printk("descr[%d].addr=%llx ctrl=%x\n", pos, lp->tx.descr[pos].addr,
	//	lp->tx.descr[pos].control);
	//print_hex_dump(KERN_WARNING, "tx data: ", DUMP_PREFIX_ADDRESS,
	//		16, 1, skb->data, len, true);
#endif
	tx_sr = readl(lp->base_addr + DMA_M2S_OFFSET + DMA_R_SR);
	lmac_tx_tail(lp, pos);
	if (tx_sr & DMA_SR_HALTED) {
		u64 r_cur, r_tail;
		u32 r_cr;

		r_cr = readl(lp->base_addr + DMA_M2S_OFFSET + DMA_R_CR);
		r_cur = readq(lp->base_addr + DMA_M2S_OFFSET + DMA_R_CURDESC);
		r_tail = readq(lp->base_addr + DMA_M2S_OFFSET + DMA_R_TAILDESC);

		printk("TX-HALTED: pos=%d sr=%x cr=%x cur=%llx tail=%llx\n",
			pos, tx_sr, r_cr, r_cur, r_tail);
		WARN_ON(1);
		lmac_start_tx(lp, pos);
		lmac_tx_tail(lp, pos);
	}

	lp->tx.in_flight++;
	lp->tx.pos++;
	lp->tx.pos %= lp->tx.size;

	if (lp->tx.pos == lp->tx.done_pos) {
		netif_stop_queue(dev);
	}

done:
	spin_unlock_irqrestore(&lp->tx.lock, flags);
	return NETDEV_TX_OK;
}

static int lmac1_open(struct net_device *dev)
{
	struct net_local *lp = netdev_priv(dev);
	int retval;

	lmac_reset(lp, DMA_M2S_OFFSET);
	lmac_reset(lp, DMA_S2M_OFFSET);

	/* Grab the IRQ */
	retval = request_irq(dev->irq, lmac1_tx_interrupt, IRQF_SHARED,
				dev->name, dev);
	if (retval) {
		dev_err(&lp->ndev->dev, "Could not allocate interrupt %d\n",
			dev->irq);
		return retval;
	}

	retval = request_irq(lp->rx_irq, lmac1_rx_interrupt, IRQF_SHARED,
			dev->name, dev);
	if (retval) {
		dev_err(&lp->ndev->dev, "Could not allocate interrupt %d\n",
			lp->rx_irq);
		return retval;
	}

	lp->tx.r_cr = readl(lp->base_addr + DMA_M2S_OFFSET + DMA_R_CR);
	lp->rx.r_cr = readl(lp->base_addr + DMA_S2M_OFFSET + DMA_R_CR);

	lp->tx.size = 128;
	lp->rx.size = 128;
	lmac_alloc_dma_rings(dev);
	lmac_start_tx(lp, 0);
	lmac_start_rx(lp);

	//printk("CR=%x.%x\n", lp->tx.r_cr, lp->rx.r_cr);
	// Enable interrupts.
	lp->tx.r_cr |= DMA_CR_IOC_IRQ_EN | DMA_CR_ERR_IRQ_EN;
	lp->rx.r_cr |= DMA_CR_IOC_IRQ_EN | DMA_CR_ERR_IRQ_EN;
	writel(lp->tx.r_cr, lp->base_addr + DMA_M2S_OFFSET + DMA_R_CR);
	writel(lp->rx.r_cr, lp->base_addr + DMA_S2M_OFFSET + DMA_R_CR);

	/* We're ready to go */
	netif_start_queue(dev);
	return 0;
}

static int lmac1_close(struct net_device *dev)
{
	struct net_local *lp = netdev_priv(dev);

	// Disable interrupts.
	writel(0, lp->base_addr + DMA_S2M_OFFSET + DMA_R_CR);
	writel(0, lp->base_addr + DMA_M2S_OFFSET + DMA_R_CR);

	netif_stop_queue(dev);
	free_irq(dev->irq, dev);
	free_irq(lp->rx_irq, dev);
	return 0;
}

static const struct net_device_ops lmac1_netdev_ops;

static int lmac1_of_probe(struct platform_device *ofdev)
{
	struct resource *res;
	struct net_device *ndev = NULL;
	struct net_local *lp = NULL;
	struct device *dev = &ofdev->dev;
	const void *mac_address;
	enum of_gpio_flags flags;
        int reset_gpios;
	int rc = 0;

	/* Create an ethernet device instance */
	ndev = alloc_etherdev(sizeof(struct net_local));
	if (!ndev)
		return -ENOMEM;

	dev_set_drvdata(dev, ndev);
	SET_NETDEV_DEV(ndev, &ofdev->dev);

	lp = netdev_priv(ndev);
	lp->ndev = ndev;
	lp->pdev = ofdev;

        spin_lock_init(&lp->tx.lock);

	/* Get IRQ for the device */
	res = platform_get_resource(ofdev, IORESOURCE_IRQ, 0);
	if (!res) {
		dev_err(dev, "no IRQ found\n");
		rc = -ENXIO;
		goto error;
	}

	ndev->irq = res->start;

	res = platform_get_resource(ofdev, IORESOURCE_IRQ, 1);
	if (!res) {
		dev_err(dev, "no IRQ found\n");
		rc = -ENXIO;
		goto error;
	}

	lp->rx_irq = res->start;

	res = platform_get_resource(ofdev, IORESOURCE_MEM, 0);
	lp->base_addr = devm_ioremap_resource(&ofdev->dev, res);
	if (IS_ERR(lp->base_addr)) {
		rc = PTR_ERR(lp->base_addr);
		goto error;
	}

	ndev->mem_start = res->start;
	ndev->mem_end = res->end;

	lp->pl_clk[0] = devm_clk_get(&ofdev->dev, "pl-clk0");
	if (!IS_ERR(lp->pl_clk[0])) {
		printk("GOT PL CLK0\n");
		clk_prepare_enable(lp->pl_clk[0]);
		printk("pl-clk0 get rate=%lu\n", clk_get_rate(lp->pl_clk[0]));
		clk_set_rate(lp->pl_clk[0], 125000000);
		printk("pl-clk0 set rate=%lu\n", clk_get_rate(lp->pl_clk[0]));
	}

	lp->pl_clk[1] = devm_clk_get(&ofdev->dev, "pl-clk1");
	if (!IS_ERR(lp->pl_clk[1])) {
		printk("GOT PL CLK1\n");
		clk_prepare_enable(lp->pl_clk[1]);
		printk("pl-clk1 get rate=%lu\n", clk_get_rate(lp->pl_clk[1]));
		clk_set_rate(lp->pl_clk[1], 50000000);
		printk("pl-clk1 set rate=%lu\n", clk_get_rate(lp->pl_clk[1]));
	}

	lp->user_clk = devm_clk_get(&ofdev->dev, "si570-user-clk");
	if (!IS_ERR(lp->user_clk)) {
		printk("got user-clk\n");
		clk_prepare_enable(lp->user_clk);
		printk("user-clk get rate=%lu\n", clk_get_rate(lp->user_clk));
		clk_set_rate(lp->user_clk, 300000000);
		printk("user-clk set rate=%lu\n", clk_get_rate(lp->user_clk));
	} else {
		printk("No USER clk, assumed it got setup somewhere else\n");
	}

	lp->sfp_clk = devm_clk_get(&ofdev->dev, "sfp-clk");
	if (!IS_ERR(lp->sfp_clk)) {
		printk("got sfp-clk\n");
		clk_prepare_enable(lp->sfp_clk);
		printk("sfp-clk get rate=%lu\n", clk_get_rate(lp->sfp_clk));
		clk_set_rate(lp->sfp_clk, 125000000);
		printk("sfp-clk set rate=%lu\n", clk_get_rate(lp->sfp_clk));
	} else {
		printk("No SFP clk, assumed it got setup somewhere else\n");
	}

	printk("get phy\n");
	lp->phy = devm_phy_get(&ofdev->dev, "sfp-phy");
	if (!IS_ERR(lp->phy)) {
		printk("GOT PHY %p\n", lp->phy);

		phy_init(lp->phy);
		phy_power_on(lp->phy);
	}

        reset_gpios = of_get_named_gpio_flags(dev->of_node, "reset-gpios", 0,
                                              &flags);
	if (gpio_is_valid(reset_gpios)) {
		int ret = devm_gpio_request_one(dev, reset_gpios, flags,
				"pl");
		if (ret) {
			dev_err(dev, "failed to request reset gpio %d: %d\n",
					reset_gpios, ret);
                } else {
			bool active = 0;

			printk("Got a reset-gpio, Reset the PL! flags=%x active=%d -> %d\n",
				flags, active, !active);
			gpio_set_value(reset_gpios, active);
			msleep(5);
			gpio_set_value(reset_gpios, !active);
			msleep(5);
		}
        }

//	rc = dma_set_mask(&ofdev->dev, DMA_BIT_MASK(39));
	rc = dma_set_mask_and_coherent(&ofdev->dev, DMA_BIT_MASK(32));
        if (rc) {
                dev_err(&ofdev->dev, "No suitable DMA available\n");
                goto error;
        }

	printk("%s: %llx - %llx\n", __func__, res->start, res->end);

	mac_address = of_get_mac_address(ofdev->dev.of_node);

	if (mac_address) {
		/* Set the MAC address. */
		memcpy(ndev->dev_addr, mac_address, ETH_ALEN);
	} else {
		dev_warn(dev, "No MAC address found, using random\n");
		eth_hw_addr_random(ndev);
	}

	ndev->netdev_ops = &lmac1_netdev_ops;
	ndev->watchdog_timeo = TX_TIMEOUT;

	/* Finally, register the device */
	rc = register_netdev(ndev);
	if (rc) {
		dev_err(dev,
			"Cannot register network device, aborting\n");
		goto error;
	}

	dev_info(dev,
		 "Lewiz version 3 is at 0x%08X mapped to 0x%08lX, tx-irq=%d rx-irq=%d\n",
		 (unsigned int __force)ndev->mem_start,
		 (unsigned long __force)lp->base_addr, ndev->irq, lp->rx_irq);
	return 0;

error:
	free_netdev(ndev);
	return rc;
}

static int lmac1_of_remove(struct platform_device *of_dev)
{
	struct net_device *ndev = platform_get_drvdata(of_dev);
	struct net_local *lp = netdev_priv(ndev);

	if (!IS_ERR(lp->phy)) {
		phy_exit(lp->phy);
	}
	unregister_netdev(ndev);
	free_netdev(ndev);
	return 0;
}

#ifdef CONFIG_NET_POLL_CONTROLLER
static void
lmac1_poll_controller(struct net_device *ndev)
{
	/* FIXME.  */
	disable_irq(ndev->irq);
	lmac1_interrupt(ndev->irq, ndev);
	enable_irq(ndev->irq);
}
#endif

static const struct net_device_ops lmac1_netdev_ops = {
	.ndo_open		= lmac1_open,
	.ndo_stop		= lmac1_close,
	.ndo_start_xmit		= lmac1_start_xmit,
	.ndo_tx_timeout		= lmac1_tx_timeout,
#ifdef CONFIG_NET_POLL_CONTROLLER
	.ndo_poll_controller = lmac1_poll_controller,
#endif
};

/* Match table for OF platform binding */
static const struct of_device_id lmac1_of_match[] = {
	{ .compatible = "lewiz,lmac1", },
	{ /* end of list */ },
};
MODULE_DEVICE_TABLE(of, lmac1_of_match);

static struct platform_driver lmac1_of_driver = {
	.driver = {
		.name = DRIVER_NAME,
		.of_match_table = lmac1_of_match,
	},
	.probe		= lmac1_of_probe,
	.remove		= lmac1_of_remove,
};

module_platform_driver(lmac1_of_driver);

MODULE_AUTHOR("Edgar E. Iglesias <edgar.iglesias@gmail.com>");
MODULE_DESCRIPTION("LeWiz LMAC2 driver");
MODULE_LICENSE("GPL");
