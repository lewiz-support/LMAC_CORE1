//#include <stdio.h>
#include <unistd.h>
#include "xil_io.h"

#undef GPIO_MASK_DATA_5_MSW_OFFSET 
#define GPIO_MASK_DATA_5_MSW_OFFSET		0XFF0A002C
#undef GPIO_DIRM_5_OFFSET 
#define GPIO_DIRM_5_OFFSET				0XFF0A0344
#undef GPIO_OEN_5_OFFSET 
#define GPIO_OEN_5_OFFSET				0XFF0A0348
#undef GPIO_DATA_5_OFFSET 
#define GPIO_DATA_5_OFFSET				0XFF0A0054

#define XST_SUCCESS 0L
#define XST_FAILURE 1L

//static void mask_delay(u32 delay)
//{
//	usleep(delay);
//}

static void PSU_Mask_Write(unsigned long offset, unsigned long mask, unsigned long val)
{
	unsigned long RegVal = 0x0;

	RegVal = Xil_In32(offset);
	RegVal &= ~(mask);
	RegVal |= (val & mask);
	Xil_Out32(offset, RegVal);
}

int psu_ps_pl_reset_config_data(void)
{
    /*
    * PS PL RESET SEQUENCE
    */
    /*
    * FABRIC RESET USING EMIO
    */
    /*
    * Register : MASK_DATA_5_MSW @ 0XFF0A002C

    * Operation is the same as MASK_DATA_0_LSW[MASK_0_LSW]
    *  PSU_GPIO_MASK_DATA_5_MSW_MASK_5_MSW                         0x8000

    * Maskable Output Data (GPIO Bank5, EMIO, Upper 16bits)
    * (OFFSET, MASK, VALUE)      (0XFF0A002C, 0xFFFF0000U ,0x80000000U)
    */
	PSU_Mask_Write(GPIO_MASK_DATA_5_MSW_OFFSET,
		0xFFFF0000U, 0x80000000U);
/*##################################################################### */

    /*
    * Register : DIRM_5 @ 0XFF0A0344

    * Operation is the same as DIRM_0[DIRECTION_0]
    *  PSU_GPIO_DIRM_5_DIRECTION_5                                 0x80000000

    * Direction mode (GPIO Bank5, EMIO)
    * (OFFSET, MASK, VALUE)      (0XFF0A0344, 0xFFFFFFFFU ,0x80000000U)
    */
	PSU_Mask_Write(GPIO_DIRM_5_OFFSET, 0xFFFFFFFFU, 0x80000000U);
/*##################################################################### */

    /*
    * Register : OEN_5 @ 0XFF0A0348

    * Operation is the same as OEN_0[OP_ENABLE_0]
    *  PSU_GPIO_OEN_5_OP_ENABLE_5                                  0x80000000

    * Output enable (GPIO Bank5, EMIO)
    * (OFFSET, MASK, VALUE)      (0XFF0A0348, 0xFFFFFFFFU ,0x80000000U)
    */
	PSU_Mask_Write(GPIO_OEN_5_OFFSET, 0xFFFFFFFFU, 0x80000000U);
/*##################################################################### */

    /*
    * Register : DATA_5 @ 0XFF0A0054

    * Output Data
    *  PSU_GPIO_DATA_5_DATA_5                                      0x80000000

    * Output Data (GPIO Bank5, EMIO)
    * (OFFSET, MASK, VALUE)      (0XFF0A0054, 0xFFFFFFFFU ,0x80000000U)
    */
	PSU_Mask_Write(GPIO_DATA_5_OFFSET, 0xFFFFFFFFU, 0x80000000U);
/*##################################################################### */

		usleep(1);

/*##################################################################### */

    /*
    * FABRIC RESET USING DATA_5 TOGGLE
    */
    /*
    * Register : DATA_5 @ 0XFF0A0054

    * Output Data
    *  PSU_GPIO_DATA_5_DATA_5                                      0X00000000

    * Output Data (GPIO Bank5, EMIO)
    * (OFFSET, MASK, VALUE)      (0XFF0A0054, 0xFFFFFFFFU ,0x00000000U)
    */
	PSU_Mask_Write(GPIO_DATA_5_OFFSET, 0xFFFFFFFFU, 0x00000000U);
/*##################################################################### */

		usleep(1);

/*##################################################################### */

    /*
    * FABRIC RESET USING DATA_5 TOGGLE
    */
    /*
    * Register : DATA_5 @ 0XFF0A0054

    * Output Data
    *  PSU_GPIO_DATA_5_DATA_5                                      0x80000000

    * Output Data (GPIO Bank5, EMIO)
    * (OFFSET, MASK, VALUE)      (0XFF0A0054, 0xFFFFFFFFU ,0x80000000U)
    */
	PSU_Mask_Write(GPIO_DATA_5_OFFSET, 0xFFFFFFFFU, 0x80000000U);
/*##################################################################### */

    usleep(1500000);
    
	return XST_SUCCESS;
}
