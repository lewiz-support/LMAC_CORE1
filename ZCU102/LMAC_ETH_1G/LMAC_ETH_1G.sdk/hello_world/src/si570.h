#ifndef SI570_H_
#define SI570_H_

#define SI570_READ_OP  	1
#define SI570_WRITE_OP 	0
#define SI570_HPC_J4 	1
#define SI570_HPC_J5 	0
#define SI570_OP_USER      1
#define SI570_OP_USER_MGT  0

enum si570_freq {
	SI570_FREQ_122_88_MHz,
	SI570_FREQ_156_25_MHz,
	SI570_FREQ_307_20_MHz,
	SI570_FREQ_307_20_MHz_A,
	SI570_FREQ_307_20_MHz_B,
	SI570_FREQ_CNT
};
enum si570_board {
	SI570_BD_XM105,
	SI570_BD_XM107,
	SI570_BD_ZCU102,
	SI570_BD_CNT,
};

extern const char * si570_freq_str[SI570_FREQ_CNT + 1];

/* @brief Read or write the frequency of an SI570 on the ZCU102 or XM105/107 daughter cards
 * @param read_flag 0 = write, 1 = read
 * @param board 	Chooses XM105, XM107, or ZCU102
 * @param option 	Gives more specific HW information.  For ZCU102,
 * 					0 = USER_MGT_SI570 or 1 = USER_SI570.
 * 					For XM105/107, it chooses which FMC connector (HPC0 or HPC1).
 * @param freq		For read, it returns the frequency shown in the register.
 * 					If not recognized, it returns SI570_FREQ_CNT.
 * 					For write, this is the desired frequency.
 *
 */
s32 si570_freq(u8 read_flag, enum si570_board board, u8 option, enum si570_freq * freq);


#endif //#ifdef SI570_H_

