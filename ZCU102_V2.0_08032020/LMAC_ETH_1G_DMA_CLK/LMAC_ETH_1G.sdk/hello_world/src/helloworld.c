/******************************************************************************
* Copyright (C) 2010 - 2020 Xilinx, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

/*****************************************************************************/
/**
 *
 * @file xaxidma_example_sg_poll.c
 *
 * This file demonstrates how to use the xaxidma driver on the Xilinx AXI
 * DMA core (AXIDMA) to transfer packets in polling mode when the AXIDMA
 * core is configured in Scatter Gather Mode.
 *
 * This code assumes a loopback hardware widget is connected to the AXI DMA
 * core for data packet loopback.
 *
 * To see the debug print, you need a Uart16550 or uartlite in your system,
 * and please set "-DDEBUG" in your compiler options. You need to rebuild your
 * software executable.
 *
 * Make sure that MEMORY_BASE is defined properly as per the HW system. The
 * h/w system built in Area mode has a maximum DDR memory limit of 64MB. In
 * throughput mode, it is 512MB. These limits are need to ensured for
 * proper operation of this code.
 *
 *
 * <pre>
 * MODIFICATION HISTORY:
 *
 * Ver   Who  Date     Changes
 * ----- ---- -------- -------------------------------------------------------
 * 1.00a jz   05/17/10 First release
 * 2.00a jz   08/10/10 Second release, added in xaxidma_g.c, xaxidma_sinit.c,
 *                     updated tcl file, added xaxidma_porting_guide.h, removed
 *                     workaround for endianness
 * 4.00a rkv  02/22/11 Name of the file has been changed for naming consistency
 *       	       	   Added interrupt support for ARM.
 * 5.00a srt  03/05/12 Added Flushing and Invalidation of Caches to fix CRs
 *		       		   648103, 648701.
 *		       		   Added V7 DDR Base Address to fix CR 649405.
 * 6.00a srt  03/27/12 Changed API calls to support MCDMA driver.
 * 7.00a srt  06/18/12 API calls are reverted back for backward compatibility.
 * 7.01a srt  11/02/12 Buffer sizes (Tx and Rx) are modified to meet maximum
 *		       DDR memory limit of the h/w system built with Area mode
 * 7.02a srt  03/01/13 Updated DDR base address for IPI designs (CR 703656).
 * 9.1   adk  01/07/16 Updated DDR base address for Ultrascale (CR 799532) and
 *		       removed the defines for S6/V6.
 * 9.2   vak  15/04/16 Fixed compilation warnings in th example
 * 9.3   ms   01/23/17 Modified xil_printf statement in main function to
 *                     ensure that "Successfully ran" and "Failed" strings are
 *                     available in all examples. This is a fix for CR-965028.
 * 9.9   rsp  01/21/19 Fix use of #elif check in deriving DDR_BASE_ADDR.
 * 9.10  rsp  09/17/19 Fix cache maintenance ops for source and dest buffer.
 * </pre>
 *
 * ***************************************************************************
 */
/***************************** Include Files *********************************/

#include <stdio.h>
#include <stdlib.h>

#include "xaxidma.h"
#include "xparameters.h"
#include "xdebug.h"

#include "reset_phy.h"

#ifdef __aarch64__
#include "xil_mmu.h"
#endif

#if defined(XPAR_UARTNS550_0_BASEADDR)
#include "xuartns550_l.h"       /* to use uartns550 */
#endif

#if (!defined(DEBUG))
extern void xil_printf(const char *format, ...);
#endif

/******************** Constant Definitions **********************************/

/*
 * Device hardware build related constants.
 */

#define DMA_DEV_ID		XPAR_AXIDMA_0_DEVICE_ID

#ifdef XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#define DDR_BASE_ADDR		XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#elif defined (XPAR_MIG7SERIES_0_BASEADDR)
#define DDR_BASE_ADDR	XPAR_MIG7SERIES_0_BASEADDR
#elif defined (XPAR_MIG_0_BASEADDR)
#define DDR_BASE_ADDR	XPAR_MIG_0_BASEADDR
#elif defined (XPAR_PSU_DDR_0_S_AXI_BASEADDR)
#define DDR_BASE_ADDR	XPAR_PSU_DDR_0_S_AXI_BASEADDR
#endif

#ifndef DDR_BASE_ADDR
#warning CHECK FOR THE VALID DDR ADDRESS IN XPARAMETERS.H, \
			DEFAULT SET TO 0x01000000
#define MEM_BASE_ADDR		0x01000000
#else
#define MEM_BASE_ADDR		(DDR_BASE_ADDR + 0x1000000)
#endif

#define TX_BD_SPACE_BASE	(MEM_BASE_ADDR)
#define TX_BD_SPACE_HIGH	(MEM_BASE_ADDR + 0x00000FFF)
#define RX_BD_SPACE_BASE	(MEM_BASE_ADDR + 0x00001000)
#define RX_BD_SPACE_HIGH	(MEM_BASE_ADDR + 0x00001FFF)
#define TX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00020000)
#define RX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00030000)
#define RX_BUFFER_HIGH		(MEM_BASE_ADDR + 0x0003FFFF)
//#define TX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00100000)
//#define RX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00300000)
//#define RX_BUFFER_HIGH		(MEM_BASE_ADDR + 0x004FFFFF)


// #define MAX_PKT_LEN		0x20
//#define MAX_PKT_LEN		0x28
#define MAX_PKT_LEN		0x62
#define MARK_UNCACHEABLE        0x701

#define TEST_START_VALUE	0xC

/**************************** Type Definitions *******************************/


/***************** Macros (Inline Functions) Definitions *********************/


/************************** Function Prototypes ******************************/
#if defined(XPAR_UARTNS550_0_BASEADDR)
static void Uart550_Setup(void);
#endif

static int RxSetup(XAxiDma * AxiDmaInstPtr);
static int TxSetup(XAxiDma * AxiDmaInstPtr);
static int SendPacket(XAxiDma * AxiDmaInstPtr, int pkt_number, u8 pkt_cnt);
static int CheckData(u8 pkt_cnt);
static int CheckDmaResult(XAxiDma * AxiDmaInstPtr, u8 pkt_cnt);

u64 offset;

/************************** Variable Definitions *****************************/
/*
 * Device instance definitions
 */
XAxiDma AxiDma;

/*
 * Buffer for transmit packet. Must be 32-bit aligned to be used by DMA.
 */
u32 *Packet = (u32 *) TX_BUFFER_BASE;

static XAxiDma_Bd *LastRxBdPtr = NULL;

/*****************************************************************************/
/**
*
* Main function
*
* This function is the main entry of the tests on DMA core. It sets up
* DMA engine to be ready to receive and send packets, then a packet is
* transmitted and will be verified after it is received via the DMA loopback
* widget.
*
* @param	None
*
* @return
*		- XST_SUCCESS if test passes
*		- XST_FAILURE if test fails.
*
* @note		None.
*
******************************************************************************/

int ProgramSi570(void);

int main(void)
{
	int Status;
    u8 i, pkt_cnt;
	XAxiDma_Config *Config;

    xil_printf("\r\n\r\n***LPRINTs\n\r");
    
//***LEWIZ CODE TO PROGRAM SI570

   	xil_printf("***Going to ProgramSi570\n\r");
   	Status = ProgramSi570();
   	if (Status != XST_SUCCESS) {
   		xil_printf("ProgramSi570_FAILED\n\r");
   	}
  	xil_printf("***Done ProgramSi570\n\r");

//*** LEWIZ - Reset the PHY only

	xil_printf("***Going to Reset the PHY only.\n\r");
   	Status = psu_ps_pl_reset_config_data();
   	if (Status != XST_SUCCESS) {
   		xil_printf("FAILED: Reset the PHY only.\n\r");
   	}
  	xil_printf("***DONE: Reset the PHY only.\n\n\r");

//***LEWIZ CODE END

#if defined(XPAR_UARTNS550_0_BASEADDR)

	Uart550_Setup();

#endif

#ifdef __aarch64__
	Xil_SetTlbAttributes(TX_BD_SPACE_BASE, NORM_NONCACHE);
	Xil_SetTlbAttributes(RX_BD_SPACE_BASE, NORM_NONCACHE);
#endif

	Config = XAxiDma_LookupConfig(DMA_DEV_ID);
	if (!Config) {
		xil_printf("No config found for %d\r\n", DMA_DEV_ID);

		return XST_FAILURE;
	}

	//xil_printf("\r\n--- DONE: XAxiDma_LookupConfig --- \r\n");

	/* Initialize DMA engine */
	Status = XAxiDma_CfgInitialize(&AxiDma, Config);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

	//xil_printf("\r\n--- DONE: XAxiDma_CfgInitialize --- \r\n");

	if(!XAxiDma_HasSg(&AxiDma)) {
		xil_printf("Device configured as Simple mode \r\n");

		return XST_FAILURE;
	}

	Status = TxSetup(&AxiDma);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	//xil_printf("\r\n--- DONE: TxSetup --- \r\n");
    
	Status = RxSetup(&AxiDma);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	//xil_printf("\r\n--- DONE: RxSetup --- \r\n");
		
  	xil_printf("***DONE: DMA SETUP.\n\r");
    
	xil_printf("\r\n--- Starting PING Test --- \r\n");
    
	
	offset = 0;
	
	/* Send 4 packets */
	pkt_cnt = 4;
  	xil_printf("\r\n***Sending %d packets.\n\r", pkt_cnt);
    for (i=0; i<pkt_cnt; i++) {
        Status = SendPacket(&AxiDma, i, pkt_cnt);

        if (Status != XST_SUCCESS) {
            return XST_FAILURE;
        }

        xil_printf("\r\n--- DONE: SendPacket %d --- \r\n\r\n", (i+1));	
    }
    
    /* Check DMA transfer result */
    Status = CheckDmaResult(&AxiDma, pkt_cnt);

    xil_printf("\r\n--- DONE: Reading RxPacket --- \r\n");

    if (Status != XST_SUCCESS) {
        xil_printf("PING Test Failed\r\n");
        return XST_FAILURE;
    }
    
	
	/* Send 6 packets */
	pkt_cnt = 6;
 	xil_printf("\r\n***Sending %d packets.\n\r", pkt_cnt);
   for (i = 4; i<10; i++) {
       Status = SendPacket(&AxiDma, i, pkt_cnt);

       if (Status != XST_SUCCESS) {
           return XST_FAILURE;
       }

       xil_printf("\r\n--- DONE: SendPacket %d --- \r\n\r\n", (i+1));	
   }
   
   /* Check DMA transfer result */
   Status = CheckDmaResult(&AxiDma, pkt_cnt);

   xil_printf("\r\n--- DONE: Reading RxPacket --- \r\n");

   if (Status != XST_SUCCESS) {
       xil_printf("PING Test Failed\r\n");
       return XST_FAILURE;
   }
    
    
    xil_printf("\r\n\r\n*** Successfully ran the PING Test. ***\r\n");
        
	return XST_SUCCESS;
}

#if defined(XPAR_UARTNS550_0_BASEADDR)
/*****************************************************************************/
/*
*
* Uart16550 setup routine, need to set baudrate to 9600, and data bits to 8
*
* @param	None
*
* @return	None
*
* @note		None.
*
******************************************************************************/
static void Uart550_Setup(void)
{

	/* Set the baudrate to be predictable
	 */
	XUartNs550_SetBaud(XPAR_UARTNS550_0_BASEADDR,
			XPAR_XUARTNS550_CLOCK_HZ, 9600);

	XUartNs550_SetLineControlReg(XPAR_UARTNS550_0_BASEADDR,
			XUN_LCR_8_DATA_BITS);

}
#endif

/*****************************************************************************/
/**
*
* This function sets up RX channel of the DMA engine to be ready for packet
* reception
*
* @param	AxiDmaInstPtr is the pointer to the instance of the DMA engine.
*
* @return	XST_SUCCESS if the setup is successful, XST_FAILURE otherwise.
*
* @note		None.
*
******************************************************************************/
static int RxSetup(XAxiDma * AxiDmaInstPtr)
{
	XAxiDma_BdRing *RxRingPtr;
	int Delay = 0;
	int Coalesce = 1;
	int Status;
	XAxiDma_Bd BdTemplate;
	XAxiDma_Bd *BdPtr;
	XAxiDma_Bd *BdCurPtr;
	u32 BdCount;
	u32 FreeBdCount;
	UINTPTR RxBufferPtr;
	int Index;

	//xil_printf("\r\n--- IN: RxSetup --- \r\n");
	
	RxRingPtr = XAxiDma_GetRxRing(&AxiDma);

	/* Disable all RX interrupts before RxBD space setup */
	XAxiDma_BdRingIntDisable(RxRingPtr, XAXIDMA_IRQ_ALL_MASK);

	//xil_printf("\r\n--- DONE: XAxiDma_BdRingIntDisable --- \r\n");
	
	/* Set delay and coalescing */
	XAxiDma_BdRingSetCoalesce(RxRingPtr, Coalesce, Delay);

	//xil_printf("\r\n--- DONE: XAxiDma_BdRingSetCoalesce --- \r\n");
	
	/* Setup Rx BD space */
	BdCount = XAxiDma_BdRingCntCalc(XAXIDMA_BD_MINIMUM_ALIGNMENT,
				RX_BD_SPACE_HIGH - RX_BD_SPACE_BASE + 1);

	//xil_printf("\r\n--- DONE: Setup Rx BD space --- \r\n");
	
	Status = XAxiDma_BdRingCreate(RxRingPtr, RX_BD_SPACE_BASE,
				RX_BD_SPACE_BASE,
				XAXIDMA_BD_MINIMUM_ALIGNMENT, BdCount);

	if (Status != XST_SUCCESS) {
		xil_printf("RX create BD ring failed %d\r\n", Status);

		return XST_FAILURE;
	}

	//xil_printf("\r\n--- DONE: XAxiDma_BdRingCreate --- \r\n");
	
	/*
	 * Setup an all-zero BD as the template for the Rx channel.
	 */
	XAxiDma_BdClear(&BdTemplate);

	Status = XAxiDma_BdRingClone(RxRingPtr, &BdTemplate);
	if (Status != XST_SUCCESS) {
		xil_printf("RX clone BD failed %d\r\n", Status);

		return XST_FAILURE;
	}

	//xil_printf("\r\n--- DONE: Setup an all-zero BD as the template for the Rx channel. --- \r\n");
	
	/* Attach buffers to RxBD ring so we are ready to receive packets */
	FreeBdCount = XAxiDma_BdRingGetFreeCnt(RxRingPtr);

	Status = XAxiDma_BdRingAlloc(RxRingPtr, FreeBdCount, &BdPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("RX alloc BD failed %d\r\n", Status);

		return XST_FAILURE;
	}
	
	//xil_printf("\r\n--- DONE: Attach buffers to RxBD ring so we are ready to receive packets. --- \r\n");

	BdCurPtr = BdPtr;
	RxBufferPtr = RX_BUFFER_BASE;
	for (Index = 0; Index < FreeBdCount; Index++) {
		Status = XAxiDma_BdSetBufAddr(BdCurPtr, RxBufferPtr);

		if (Status != XST_SUCCESS) {
			xil_printf("Set buffer addr %x on BD %x failed %d\r\n",
			    (unsigned int)RxBufferPtr,
			    (UINTPTR)BdCurPtr, Status);

			return XST_FAILURE;
		}

		Status = XAxiDma_BdSetLength(BdCurPtr, MAX_PKT_LEN,
				RxRingPtr->MaxTransferLen);
		if (Status != XST_SUCCESS) {
			xil_printf("Rx set length %d on BD %x failed %d\r\n",
			    MAX_PKT_LEN, (UINTPTR)BdCurPtr, Status);

			return XST_FAILURE;
		}

		/* Receive BDs do not need to set anything for the control
		 * The hardware will set the SOF/EOF bits per stream status
		 */
		XAxiDma_BdSetCtrl(BdPtr, 0);
		XAxiDma_BdSetId(BdCurPtr, RxBufferPtr);
		RxBufferPtr += MAX_PKT_LEN;

		if (Index == (FreeBdCount - 1)) {
			LastRxBdPtr = BdCurPtr;
		}

		BdCurPtr = (XAxiDma_Bd *)XAxiDma_BdRingNext(RxRingPtr, BdCurPtr);
	}

	Status = XAxiDma_BdRingToHw(RxRingPtr, FreeBdCount, BdPtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Start RX DMA channel */
	Status = XAxiDma_BdRingStart(RxRingPtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function sets up the TX channel of a DMA engine to be ready for packet
* transmission
*
* @param	AxiDmaInstPtr is the instance pointer to the DMA engine.
*
* @return	XST_SUCCESS if the setup is successful, XST_FAILURE otherwise.
*
* @note		None.
*
******************************************************************************/
static int TxSetup(XAxiDma * AxiDmaInstPtr)
{
	XAxiDma_BdRing *TxRingPtr;
	XAxiDma_Bd BdTemplate;
	int Delay = 0;
	int Coalesce = 1;
	int Status;
	u32 BdCount;

	TxRingPtr = XAxiDma_GetTxRing(&AxiDma);

	/* Disable all TX interrupts before TxBD space setup */

	XAxiDma_BdRingIntDisable(TxRingPtr, XAXIDMA_IRQ_ALL_MASK);

	/* Set TX delay and coalesce */
	XAxiDma_BdRingSetCoalesce(TxRingPtr, Coalesce, Delay);

	/* Setup TxBD space  */
	BdCount = XAxiDma_BdRingCntCalc(XAXIDMA_BD_MINIMUM_ALIGNMENT,
				TX_BD_SPACE_HIGH - TX_BD_SPACE_BASE + 1);

	Status = XAxiDma_BdRingCreate(TxRingPtr, TX_BD_SPACE_BASE,
				TX_BD_SPACE_BASE,
				XAXIDMA_BD_MINIMUM_ALIGNMENT, BdCount);
	if (Status != XST_SUCCESS) {
		xil_printf("failed create BD ring in txsetup\r\n");

		return XST_FAILURE;
	}

	/*
	 * We create an all-zero BD as the template.
	 */
	XAxiDma_BdClear(&BdTemplate);

	Status = XAxiDma_BdRingClone(TxRingPtr, &BdTemplate);
	if (Status != XST_SUCCESS) {
		xil_printf("failed bdring clone in txsetup %d\r\n", Status);

		return XST_FAILURE;
	}

	/* Start the TX channel */
	Status = XAxiDma_BdRingStart(TxRingPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("failed start bdring txsetup %d\r\n", Status);

		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function transmits one packet non-blockingly through the DMA engine.
*
* @param	AxiDmaInstPtr points to the DMA engine instance
*
* @return	- XST_SUCCESS if the DMA accepts the packet successfully,
*		- XST_FAILURE otherwise.
*
* @note     None.
*
******************************************************************************/
static int SendPacket(XAxiDma * AxiDmaInstPtr, int pkt_number, u8 pkt_cnt)
{
	XAxiDma_BdRing *TxRingPtr;
	u8 *TxPacket;
	XAxiDma_Bd *BdPtr;
	int Status;
    char * temp[10];

    temp[0] = "f48e38b02d02001232ffffff0800450000546a2c400040013fa8c0a807d5c0a807af0800c7937198000100000000000000000000000000000000101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f3031323334353637";
    temp[1] = "f48e38b02d02001232ffffff0800450000546a2c400040013fa8c0a807d5c0a807af0800c7927198000200000000000000000000000000000000101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f3031323334353637";
    temp[2] = "f48e38b02d02001232ffffff0800450000546a2c400040013fa8c0a807d5c0a807af0800c7917198000300000000000000000000000000000000101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f3031323334353637";
    temp[3] = "f48e38b02d02001232ffffff0800450000546a2c400040013fa8c0a807d5c0a807af0800c7907198000400000000000000000000000000000000101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f3031323334353637";
    temp[4] = "f48e38b02d02001232ffffff0800450000546a2c400040013fa8c0a807d5c0a807af0800c78f7198000500000000000000000000000000000000101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f3031323334353637";
    temp[5] = "f48e38b02d02001232ffffff0800450000546a2c400040013fa8c0a807d5c0a807af0800c78e7198000600000000000000000000000000000000101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f3031323334353637";
    temp[6] = "f48e38b02d02001232ffffff0800450000546a2c400040013fa8c0a807d5c0a807af0800c78d7198000700000000000000000000000000000000101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f3031323334353637";
    temp[7] = "f48e38b02d02001232ffffff0800450000546a2c400040013fa8c0a807d5c0a807af0800c78c7198000800000000000000000000000000000000101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f3031323334353637";
    temp[8] = "f48e38b02d02001232ffffff0800450000546a2c400040013fa8c0a807d5c0a807af0800c78b7198000900000000000000000000000000000000101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f3031323334353637";
    temp[9] = "f48e38b02d02001232ffffff0800450000546a2c400040013fa8c0a807d5c0a807af0800c78a7198000a00000000000000000000000000000000101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f3031323334353637";
    
    unsigned int tx_temp_byte;
	//TxRingPtr = XAxiDma_GetTxRing(AxiDmaInstPtr);

	/* Create pattern in the packet to transmit */
	TxPacket = (u8 *) Packet;
    for(int i=0; i<196; i=(i+2))
    {
        sscanf((temp[pkt_number]+i),"%2x", &tx_temp_byte);
        
        TxPacket[i/2] = (u8) tx_temp_byte;
        
        if ((i%16) == 0)
        	xil_printf("\r\n");
            
        xil_printf("%02x ", TxPacket[i/2]);
    }
    
    //--
    
	/* Flush the buffers before the DMA transfer, in case the Data Cache
	 * is enabled
	 */
	Xil_DCacheFlushRange((UINTPTR)TxPacket, (MAX_PKT_LEN * pkt_cnt));
	Xil_DCacheFlushRange((UINTPTR)RX_BUFFER_BASE, (MAX_PKT_LEN * pkt_cnt));

	TxRingPtr = XAxiDma_GetTxRing(AxiDmaInstPtr);
	
	/* Allocate a BD */
	Status = XAxiDma_BdRingAlloc(TxRingPtr, 1, &BdPtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	
	//xil_printf("\r\n--- DONE: Allocate a BD --- \r\n");

	/* Set up the BD using the information of the packet to transmit */
	Status = XAxiDma_BdSetBufAddr(BdPtr, (UINTPTR) Packet);
	if (Status != XST_SUCCESS) {
		xil_printf("Tx set buffer addr %x on BD %x failed %d\r\n",
		    (UINTPTR)Packet, (UINTPTR)BdPtr, Status);

		return XST_FAILURE;
	}
    
	Status = XAxiDma_BdSetLength(BdPtr, MAX_PKT_LEN,
				TxRingPtr->MaxTransferLen);
	if (Status != XST_SUCCESS) {
		xil_printf("Tx set length %d on BD %x failed %d\r\n",
		    MAX_PKT_LEN, (UINTPTR)BdPtr, Status);

		return XST_FAILURE;
	}

	//xil_printf("\r\n--- DONE: Setup the BD --- \r\n");
    
#if (XPAR_AXIDMA_0_SG_INCLUDE_STSCNTRL_STRM == 1)
	Status = XAxiDma_BdSetAppWord(BdPtr,
	    XAXIDMA_LAST_APPWORD, MAX_PKT_LEN);

	/* If Set app length failed, it is not fatal
	 */
	if (Status != XST_SUCCESS) {
		xil_printf("Set app word failed with %d\r\n", Status);
	}
#endif

	/* For single packet, both SOF and EOF are to be set
	 */
	XAxiDma_BdSetCtrl(BdPtr, XAXIDMA_BD_CTRL_TXEOF_MASK |
						XAXIDMA_BD_CTRL_TXSOF_MASK);

	XAxiDma_BdSetId(BdPtr, (UINTPTR)Packet);

	/* Give the BD to DMA to kick off the transmission. */
	Status = XAxiDma_BdRingToHw(TxRingPtr, 1, BdPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("to hw failed %d\r\n", Status);
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/*****************************************************************************/
/*
*
* This function checks data buffer after the DMA transfer is finished.
*
* @param	None
*
* @return	- XST_SUCCESS if validation is successful
*		- XST_FAILURE if validation is failure.
*
* @note		None.
*
******************************************************************************/
static int CheckData(u8 pkt_cnt)
{
	u8 *RxPacket;
	int Index = 0;
	int i = 0, j = 0;

	RxPacket = (u8 *) (RX_BUFFER_BASE + offset);
	//Value = TEST_START_VALUE;
    //-- COMPARE with LEWIZ PACKET 40Bytes
    
    //xil_printf("\r\n--- Inside: CheckData --- \r\n");
               
	/* Invalidate the DestBuffer before receiving the data, in case the
	 * Data Cache is enabled
	 */
	Xil_DCacheInvalidateRange((UINTPTR)RxPacket, (MAX_PKT_LEN * pkt_cnt));
    
    xil_printf("\r\n--- Start reading RxPacket --- \r\n");

    for(i=0;i<pkt_cnt;i++)
    {
		for(j=0;j<MAX_PKT_LEN;j++)
		{
			Index = (i*MAX_PKT_LEN) + j;
			if(j%8==0)
				xil_printf("\r\n");
			xil_printf("%02x ", (unsigned int)RxPacket[Index]);
		}    
		xil_printf("\r\n");
		//xil_printf("--- Index = %d ---\r\n", Index);
		xil_printf("--- DONE: Read RxPacket %d ---\r\n\r\n", (i+1));
	}
	
	offset = (offset + Index + 1);
	
	return XST_SUCCESS;
}


/*****************************************************************************/
/**
*
* This function waits until the DMA transaction is finished, checks data,
* and cleans up.
*
* @param	None
*
* @return	- XST_SUCCESS if DMA transfer is successful and data is correct,
*		- XST_FAILURE if fails.
*
* @note		None.
*
******************************************************************************/
static int CheckDmaResult(XAxiDma * AxiDmaInstPtr, u8 pkt_cnt)
{
	XAxiDma_BdRing *TxRingPtr;
	XAxiDma_BdRing *RxRingPtr;
	XAxiDma_Bd *BdPtr;
	u32 ProcessedBdCount = 0;
	u32 FreeBdCount;
	int Status;

    //xil_printf("\r\n--- Inside: CheckDmaResult --- \r\n");
    
	TxRingPtr = XAxiDma_GetTxRing(AxiDmaInstPtr);
	RxRingPtr = XAxiDma_GetRxRing(AxiDmaInstPtr);

	/* Wait until the one BD TX transaction is done */
	while ((ProcessedBdCount = XAxiDma_BdRingFromHw(TxRingPtr,
						       XAXIDMA_ALL_BDS,
						       &BdPtr)) == 0) {
	}
	
//	/* Wait until the TX transactions are done */
//	while (ProcessedBdCount < pkt_cnt) {
//		ProcessedBdCount += XAxiDma_BdRingFromHw(TxRingPtr,
//					       XAXIDMA_ALL_BDS, &BdPtr);
//	}

	//xil_printf("\r\n--- DONE:  Wait until the TX transactions are done --- \r\n");
    
	/* Free all processed TX BDs for future transmission */
	Status = XAxiDma_BdRingFree(TxRingPtr, ProcessedBdCount, BdPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Failed to free %d tx BDs %d\r\n",
		    ProcessedBdCount, Status);
		return XST_FAILURE;
	}

	//xil_printf("\r\n--- DONE: Free all processed TX BDs for future transmission --- \r\n");
    
	/* Wait until the data has been received by the Rx channel */
	ProcessedBdCount = 0;

	//xil_printf("RxRingPtr = %d\r\n", RxRingPtr->HwHead);
	
	while (ProcessedBdCount < pkt_cnt) {

		ProcessedBdCount += XAxiDma_BdRingFromHw(RxRingPtr,
					       XAXIDMA_ALL_BDS, &BdPtr);
		//xil_printf("\r\nProcessedBdCount = %d\r\n", ProcessedBdCount);
	}

	//xil_printf("RxRingPtr = %d\r\n", RxRingPtr->HwHead);

	/* Check received data */
	if (CheckData(pkt_cnt) != XST_SUCCESS) {

		return XST_FAILURE;
	}

	/* Free all processed RX BDs for future transmission */
	Status = XAxiDma_BdRingFree(RxRingPtr, ProcessedBdCount, BdPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("free bd failed\r\n");
		return XST_FAILURE;
	}

	/* Return processed BDs to RX channel so we are ready to receive new
	 * packets:
	 *    - Allocate all free RX BDs
	 *    - Pass the BDs to RX channel
	 */
	FreeBdCount = XAxiDma_BdRingGetFreeCnt(RxRingPtr);
	Status = XAxiDma_BdRingAlloc(RxRingPtr, FreeBdCount, &BdPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("bd alloc failed\r\n");
		return XST_FAILURE;
	}

	Status = XAxiDma_BdRingToHw(RxRingPtr, FreeBdCount, BdPtr);

	return Status;
}
