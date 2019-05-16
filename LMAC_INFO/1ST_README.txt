
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



===========================

REFER to the documents in DOCS.zip file
for more information before using this LMAC CORE1 code release.

----------------------------

The main code of the CORE1 is in directory: LMAC_CORE_TOP

This README file provides quick start instruction for using the LMAC CORE1 test bench
and include with each code release.
- Install the code release in your C:\ drive as LMAC_INFO directory
- The top directory (LMAC_INFO) contains all the AXIS_LMAC verilog codes and memory files 
(Directory description is mentioned in the 'DirectoryDesc_*.pdf').
- Tool used to design/simulate and verify the functionality of AXIS LMAC Core.
	1. MODELSIM	(primarily used)
	
- ModelSim project file 'LMAC_INFO.mpf' is provided in this directory.
- Start ModelSim, then select FILE -> OPEN -> PROJECT goto this directory "C:\LMAC_INFO" 
select the project file 'LMAC_INFO.mpf'.
- Select COMPILE -> COMPILE ALL
- The compilation results can be seen in the transcript window of Modelsim.
- The 'TESTS' directory contains all the simulation scripts along with the results. It consists of
	1. Scripts.
	2. Data and control memories (to point different test cases).
	3. Screenshots of the results.
	4. Readme text file briefly explains each test.
- Each simulation script contains a run command (as a comment) at the top. 
e.g. "source TESTS/Rx_TESTS/CASE00_04B_PACKETGAP/TEST01_EOF04/ARP_PKT/Script4_RxPath_Test_c00t01_1G.txt"
- Copy this command starting from 'source' until the script text file extension '.txt' and 
paste it in the transcript window to run any particular test.
- Relevant waveform configurations for the RX and TX sides are provided in the "C:\LMAC_INFO\waveforms", 
waveforms will be opened automatically. 
- If the packets are received successfully, a message can be seen in the transcript window, 
e.g. "**PASSED: Packet No. # is received as expected".