#include "xil_printf.h"
#include "xiicps.h"
#include "xil_io.h"
//#include "nxp_test.h"
#include "si570.h"
#include "xscugic.h"

typedef int BaseType_t;

/* I2C0 - Connects to I/O Expanders U61 and U97 and I2C Mux)
 * That connects to the XCVR_PRESENT signals on the XCVR
 * XCVR_PRESENT on J5 is U97.13
 * XCVR_PRESENT on J4 is U97.14
 */

/* I2C1 - Connects to TCA9548 I2C Multiplexer (U135)
 * That connects to the EEPROM on the WB XCVR and the SI570 on the XM105/107
 */

/* XCVR_PRESENT signals are routing to processor via TCA6416A (U97)
 * I/O Expander.  It has 16 GPIOs connected to I2C0 on the PS.
 * Then,
 */

#define U34_TCA9548A_ADDR  		(0x74)  /* I2C1 I2C Mux to SI570/EEPROM */
#define U135_TCA9548A_ADDR 		(0x75)  /* I2C1 I2C Mux to SFP, FMC I2C bus, DDR SO-DIMM CTRL */
#define U56_USR_MGT_SI570_ADDR  (0x5D)  /* This is the SI570 on the ZCU102 */
#define U135_FMC_HPC0_IIC_PORT 	0  /* I2C Port on FMC connector 0 (J5) */
#define U135_FMC_HPC1_IIC_PORT 	1  /* I2C Port on FMC connector 0 (J4) -> */
#define U34_USER_SI570_PORT     	2
#define U34_USER_MGT_SI570_PORT     3

#define IIC_DEVICE_ID XPAR_XIICPS_1_DEVICE_ID
#define XIICCFG	XIicPs_Config
#define XIIC XIicPs
#define INTC XScuGic
#define IIC_SCLK_RATE 100000

typedef struct {
	XIIC I2cInstance;
	INTC IntcInstance;
	volatile u8 TransmitComplete;   /* Flag to check completion of Transmission */
	volatile u8 ReceiveComplete;    /* Flag to check completion of Reception */
	volatile u32 TotalErrorCount;
} XIIC_LIB;

#define SI570_REGS_LEN 6
#define SI570_RST_FRZ_REG 135
#define SI570_FREEZE_BIT  0x10
#define SI570_FIRST_REG   0x07

static u8 iicps_tx_buf[8] = {0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07};
static u8 iicps_rx_buf[8] = {0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE};

const u8 si570_regs_125[SI570_REGS_LEN] = {0x21, 0xC2, 0xBC, 0x01, 0x1E, 0xB8};
//const u8 si570_regs_125[SI570_REGS_LEN] = {0x21, 0xC2, 0xBB, 0xFF, 0x53, 0xF7};

int I2cSetupHardware(XIIC_LIB *I2cLibPtr)
{
	int Status;
	XIICCFG *ConfigPtr;
	XIIC *I2cInstancePtr;

	I2cInstancePtr = &I2cLibPtr->I2cInstance;
	
	//xil_printf("***IN I2cSetupHardware\n\r");
	
	/*
	 * Initialize the IIC driver so that it is ready to use.
	 */
	ConfigPtr = XIicPs_LookupConfig(IIC_DEVICE_ID);
	if (ConfigPtr == NULL) {
		return XST_FAILURE;
	}

	//xil_printf("***DONE XIicPs_LookupConfig\n\r");
	
	Status = XIicPs_CfgInitialize(I2cInstancePtr, ConfigPtr, ConfigPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	
	//xil_printf("***DONE XIicPs_CfgInitialize\n\r");
	
	/* Perform a self-test to ensure that the hardware was built correctly. */
	Status = XIicPs_SelfTest(I2cInstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	
	//xil_printf("***DONE: Perform a self-test to ensure that the hardware was built correctly.\n\r");
	
	/* Set the IIC serial clock rate. */
	XIicPs_SetSClk(I2cInstancePtr, IIC_SCLK_RATE);
	
	//xil_printf("***DONE: Set the IIC serial clock rate.\n\r");

	/* Set the selection of the I2C Mux on the ZCU102*/
	while (XIicPs_BusIsBusy(I2cInstancePtr)) { /* NOP */ }
		;
	
	//xil_printf("***DONE: Set the selection of the I2C Mux on the ZCU102.\n\r");
	
	iicps_tx_buf[0] = (1 << U34_USER_MGT_SI570_PORT); /* Command byte on TCA9548 */
	Status = XIicPs_MasterSendPolled(I2cInstancePtr, &iicps_tx_buf[0], 1, U34_TCA9548A_ADDR);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

static s32 si570_reg_read(u8 addr, u8 * data, XIIC_LIB *I2cLibPtr)
{
	BaseType_t xStatus;
	XIIC *I2cInstancePtr;

	I2cInstancePtr = &I2cLibPtr->I2cInstance;
	
	while (XIicPs_BusIsBusy(I2cInstancePtr)) { /* NOP */ }
	xStatus = XIicPs_MasterSendPolled(I2cInstancePtr, &addr, 1, U56_USR_MGT_SI570_ADDR);
	if (xStatus != XST_SUCCESS) {
		return XST_FAILURE;
	}

	while (XIicPs_BusIsBusy(I2cInstancePtr)) { /* NOP */ }
	xStatus = XIicPs_MasterRecvPolled(I2cInstancePtr, data, 1, U56_USR_MGT_SI570_ADDR);
	if (xStatus != XST_SUCCESS) {
		return XST_FAILURE;
	}

	xil_printf("Read reg 0x%02X, value: 0x%02X\r\n", addr, *data);
	return XST_SUCCESS;
}

static s32 si570_reg_write(u8 addr, u8 data, XIIC_LIB *I2cLibPtr)
{
	BaseType_t xStatus;
	XIIC *I2cInstancePtr;

	I2cInstancePtr = &I2cLibPtr->I2cInstance;
	
	xil_printf("Writing to reg 0x%02X, value: 0x%02X\r\n", addr, data);
	
	while (XIicPs_BusIsBusy(I2cInstancePtr)) { /* NOP */ }
	
	iicps_tx_buf[0] = addr;
	iicps_tx_buf[1] = data;
	
	xStatus = XIicPs_MasterSendPolled(I2cInstancePtr, iicps_tx_buf, 2, U56_USR_MGT_SI570_ADDR);
	if (xStatus != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

static s32 si570_dco_freeze(u8 enable, XIIC_LIB I2cLibPtr) 
{
	return (si570_reg_write(SI570_RST_FRZ_REG, enable ? SI570_FREEZE_BIT : 0x00, &I2cLibPtr));
}

int ProgramSi570(void)
{
	int i;
	int Status;
	XIIC_LIB I2cLibInstance;

	//xil_printf("***Inside ProgramSi570\n\r");

	Status = I2cSetupHardware(&I2cLibInstance);
	if (Status != XST_SUCCESS) {
		xil_printf("Si5324: Configuring HW failed\n\r");
		return XST_FAILURE;
	}
	
	//xil_printf("***Done I2cSetupHardware\n\r");
	
	/* Read the seven divider regsiters */
	i = 0;
	while (i < SI570_REGS_LEN) {
		Status = si570_reg_read(i + SI570_FIRST_REG, &iicps_rx_buf[i], &I2cLibInstance);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}
		i++;
	}
	
	xil_printf("***READ_Done\n\r");

	/* Freeze DCO */
	xil_printf("***Freeze DCO\n\r");
	si570_dco_freeze(TRUE, I2cLibInstance);
	
	/* Write the seven divider regsiters with value for 125MHz */
	xil_printf("***Write the seven divider regsiters with value for 125MHz.\n\r");
	i = 0;
	while (i < SI570_REGS_LEN) {
		Status = si570_reg_write(i + SI570_FIRST_REG, si570_regs_125[i], &I2cLibInstance);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}
		i++;
	}

	/* DCO Unfreeze */
	xil_printf("***Unfreeze DCO\n\r");
	si570_dco_freeze(FALSE, I2cLibInstance);
	
	xil_printf("***WRITE_Done\n\r");

	/* Read the seven divider regsiters */
	xil_printf("***Read the registers again to verify if the values are correctly written.\n\r");
	i = 0;
	while (i < SI570_REGS_LEN) {
		Status = si570_reg_read(i + SI570_FIRST_REG, &iicps_rx_buf[i], &I2cLibInstance);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}
		i++;
	}
	
	xil_printf("***READ_Done\n\r");
	
	return XST_SUCCESS;
	
}
