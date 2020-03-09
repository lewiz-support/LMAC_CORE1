
//
//
// Copyright (C) 2018 LeWiz Communications, Inc. 
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with this library release; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
// 
// LeWiz can be contacted at:  support@lewiz.com
// or address:  
// PO Box 9276
// San Jose, CA 95157-9276
// www.lewiz.com
// 
//    Author: LeWiz Communications, Inc.
//    Language: Verilog
//

The main purpose of this release is to provide an FPGA emulation for LMAC_CORE1 for 1000BASE-X.
It illustrates an example how to implement Ethernet port on FPGA with Lewiz LMAC_CORE1. This example uses
Xilinx VC709 FPGA evaluation board which contains a Virtex 7 VX690T FPGA chip. (This board is also
compatible with LeWiz's iTrade7240(TM) board. 
http://lewiz.com/products/itrade7240.html - 
except the iTrade7240(TM) board is developed for production deployment.)

This example will show how to connect the LMAC_CORE1 with Xilinx FPGA SerDes.
It will also show how to use Xilinx Vivado2015.4 tool to build the FPGA project, simulate, 
synthesize the design for FPGA, Run Xilinx Implementation (Place & Route), 
meeting timing and generate the bitstream.

This implementation uses Xilinx's VC709 Connectivity Kit design and its test environment as the starting point
except this design uses LeWiz's LMAC CORE1. The Connectivity Kit's test environment and test vector were used to 
re-simulate the gate level netlist (including both the LMAC CORE1 and the SerDes in loopback mode) to
prove that the design is working after going through the Xilinx tool process. This design's main purpose
is to show the Ethernet implementation. Where not needed, other parts of the Connectivity Kit were removed. 

The project's directory contains 3 sub directories:
1) LMAC-vc709-2015-4 -> This directory is for behavioral simulation, synthesis and implementaion of LMAC_CORE1.
2) Screenshots -> 	This directory contains various screenshots of behavioral simulation and gate-level simulation including resulting
waveforms. The main purpose of the screenshots is to show that the functionality of behavioral simulation and gate-level simulation remain the same, i.e. working.
Screenshots of Gate level simulations can be found under GATE_LEVEL_SIMULATION directory. Each screenshot contains explanation of the results in the image

	differential clock input ( from testbench or Board)        
                          |                                 
 -------------------------|------------------------------- 
|LMAC-vc709-2015-4        |                               | 
|                         |                               | 
|                         |                               | 
|                         v                               | 
|    ----------------------------------------------       |   
|   |CLOCK CONTROL BLOCK                           |      | 
|   |provides clock to other modules	           |      |    
|    ----------------------------------------------       | 
|                      |                                  | 
|      		       v                                  |          
|    ----------------------------------------------       | 
|   |NETWORK_PATH_INST_0                           |      | 
|   |                                              |      | 
|   |     -----------------------------------      |      | 
|   |    | LOOPBACK MODULE                   |     |      | 
|   |    | (to loopback input data)          |     |      | 
|   |     -----------------------------------      |      | 
|   |             |         ^                      |      | 
|   |	          v         |                      |      |           
|   |     ------------------------------------     |      | 
|   |    | LMAC SYNTH                         |    |      | 
|   |    |(LEWIZ MAC HDL/GATE TOP)            |    |      | 
|   |     ------------------------------------     |      | 
|   |             |        ^                       |      | 
|   |             v        |                       |      | 
|   |     ------------------------------------     |      |       
|   |    | gig_pcs_pma_inst                  |     |      | 
|   |    |(Xilinx 1G SERDES)                 |     |      | 
|   |     ------------------------------------     |      | 
|   |             |        ^                       |      | 
|   |             |        |                       |      | 
|   |             |        |                       |      | 
|    -------------|--------|-----------------------       | 
|                 |        |                              | 
|                 |        |                              | 
 -----------------|--------|------------------------------  
	          |        |                     
		  v        |                     
	      diff_tx     diff_rx                


LMAC-vc709-2015-4 directory contains 1 sub-directory: Hardware.

The Hardware directory contains 2 sub directories:

	1) sources
	2) vivado
	
	1) sources: This directory contains 5 sub directories namely:
		
		1) constraints : All the constraints files are under this directory. 
		
		2) hdl : This directory mainly consists of verilog code. It contains verilog code of LMAC_CORE1,
                   Loopback module, TOP level file, clock generation logic etc.
		 
		3) ip_catalog : We are using gig_ethernet_pcs_pma ip. This directory contains the source code for that IP.
		
		4) test_mem : This directory contains a script for running the test.
		
		5) testbench : This directory consists the testbench used for simulation.

	2) Vivado: This directory contains Vivado scripts & project files
		
		1)  runs:	 (generated by Vivado)
		2)  waves: It contains the saved waveform configurations.

The following provides instructions for re-running the different process in the design example

******FOR BEHAVIORAL SIMULATION****		
				
	STEPS to duplicate the work.
	
	1)  Copy the LMAC-vc709-2015-4 directory.
	2)  Open Vivado 2015.4 and click on "OPEN PROJECT"
	3)  browse to the location where "../LMAC-vc709-2015-4/hardware/vivado/runs/" and 
             select "LMAC-vc7-9-2015-4.xpr"
	4)  Click OK.
	5)  You should now be able to see the Project Manager window with LMAC-vc709-2015-4 as top design file.
	6)  Click on run simulation under SIMULATION tab and select run behavioral simulation.
	7)  Once the Simulation is completed, open multiple waveform windows by issuing "create_wave_config" 
               in the TCL console.
	8)  Once all the waveform are up, issue "run 3ms" command in TCL console.
	9)  To run the test script, issue command "cd "PATH to LMAC-vc709-2015-4 directory"/hardware/sources/"
	10) Next issue command "source test_mem/script_test_siml"
	11) After running the script enter "run 10us" command to see the waveforms.


******FOR SYNTHESIS****

	1) Click Run Synthesis under "Synthesis tab".


******FOR VIVADO IMPLEMENTATION (FPGA Place & Route) ****

	1) Click Run Implementation under "Implementation tab".
		- you can also generate timing report after implementation, and can also open the implemented design.
		
******FOR VIVADO IGENERATE BITSTREAM ****

	1) Click Generate Bitstream under "Program and debug tab".

		
******FOR GATE LEVEL SIMULATION****

	1)  Click on run simulation under SIMULATION tab and select run post synthesis functional simulation.
	2)  Once the Simulation is completed, open multiple waveform windows by issuing "create_wave_config" 
               in the TCL console.
	3)  Once all the waveform are up, issue "run 3ms" command in TCL console.
	4)  To run the test script, issue command "cd "PATH to LMAC-vc709-2015-4 directory"/hardware/sources/"
	5) 	Next issue command "source test_mem/script_test_siml"
	6) 	After running the script enter "run 10us" command to see the waveforms.
	
	
******TO PROGRAM CLOCK_CONTROL MODULE FOR GENERATING 125MHz CLOCK ****

	1) 	First, you will need to go to the Silicon Labs website and download their DSPLLsim desktop application. This will calculate and generate the exact device register settings you need to load to get the device to output a clock signal of a particular frequency.
	2) \A0When the tool starts select the "Create a new frequency plan with free run mode enable". \A0
	3) 	On the next page select the Si5324 device and then on the following (configuration) page you enter the target frequency (CKOUT1) as well as the channel 1 input frequency (CKIN1). \A0The trick here is that we know the channel 1 input frequency is zero but we need to enter something to satsify the tool (so it can in turn satisfy the device that needs all of its registers initialized with legal values). So enter the crystal frequency (114.285) since that is what will be driven on channel 2 anyway (and as we said before if no frequency is detected on channel 1 it switches to channel 2) and we need to establish the corect ratio values.
	4)	After you have entered the CKIN and CKOUT then press the "Calculate Ratio" button under CKOUT1. This will calculate an appropriate ratio based on your CKIN and CKOUT. \A0Before you leave this page set the number of output clocks to 1 (since only one output is used on the device on the vc709, anyway). \A0Then hit 'Next'.
	5)	Leave the search parameters at default and hit next. \A0This will calculate solutions for the device parameters. If none are found go back to the search parameter page and lower the frequency a bit. \A0Keep iterating until a solution is found.
	6)	When it is found, choose the top solution (it is usually the most accurate and the default one selected anyway) and hit 'Next'.
	7)	You will soon get to a 'Results' page at which time you are asked if you want to use these settings. \A0The answer is, of course, 'OK'. That brings you to the tool's main display and we want to 'export' them So look on the application pulldown in the upper left and choose Options->Save Register Map File... \A0This will generate a text file that contains ALL the register settings that you need to get the device generating your target clock.\A0
	8)	Open the register file and the data you need is between\A0#REGISTER_MAP and #END_REGISTER_MAP as pairs in which the first element in the pair is the register number and the second is the register contents to be programmed. Use these values in your code to\A0load the device registers in the exact order specified using the IIC connection. Then\A0you are ready to go. For the device to load and act on these, you need to restart the device and get it to recalibrate itself. The last register setting in the seqeunce performs that operation.
\A0
	After the load is complete, you should see the Si5324 CKOUT1 generating a clock at the frequency you indicated.
