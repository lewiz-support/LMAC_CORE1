//
// Copyright (C) 2020 LeWiz Communications, Inc. 
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

---- HISTORY:
    9jul2020 - as of this date, people in Europe reported this is working in their set up
Make sure you check the FPGA chip on your ZCU102 board and use the correct FPGA device in your Vivado project.

-----------------
This project uses Xilinx's Zynq SoC Ultrascale+ FPGA on ZCU102 board with LWIP software as the base.
It's intended to show the use of LeWiz LMAC1 IP core with SoC FPGA device and DMA.

***IMPORTANT NOTES:
- Project was tested on ZCU102 board with FPGA 'xczu15eg-ffvb1156-2-e' and VIVADO/SDK - 2018.2
The board with LMAC1 was able to connect to the network and ping other systems on the network successfully.
All the project files and code are provided here for the regular ZCU102 board.

- The synthesis, implementation and bitstream generation is already done & released here for 'xczu9eg-ffvb1156-2-e' FPGA

- The software provided will test simple ping packets for network compatibility
- This software hard coded ping packets with fixed IP and MAC addresses (in .../runs_lmac_eth_1g/ps_emio_eth_1g.sdk/hello_world/src/helloworld.c)
	In 'helloworld.c':
		function: 'static int SendPacket(XAxiDma * AxiDmaInstPtr)'
		variable: 'temp[0], temp[1], temp[2], temp[3]' which goes to TxPacket.   //you need to change the hard coded packets in these buffers

- ZCU102 (SOURCE) - hard coded for testing
	- IP ADDR: 192.168.7.213        //change this to your network's IP address and subnet in hex
	- MAC ADDR: 00:12:32:FF:FF:FF	//LEWIZ MAC address
	
- DESTINATION SYSTEM - hard coded for testing
	- IP ADDR: 192.168.7.175       //change this to your network IP addr, in hex: C0 A8 07 AF
	- MAC ADDR: F4:8E:38:B0:2D:02  //F4 is MSB, 02 is LSB
	
  !!! IMPORTANT: Change this MAC Addr and IP Addr corresponding to the destination on your network.
  Otherwise, you may not see the packet on your destination system.  You may need to run the test once
  for it to register the info on your network router. Then run it again.
  The packets are in buffers temp[0], [1], [2], [3] as indicated above.
  
  Fields to change are in "[]"
[F4 8E 38 B0 2D 02] 00 12   <==== change this qword
32 FF FF FF 08 00 45 00 
00 54 6A 2C 40 00 40 01 
3F A8 [C0 A8 07 D5] [C0 A8   <==== change this qword
07 AF] 08 00 C7 93 71 98     <==== change this qword
00 01 00 00 00 00 00 00 
00 00 00 00 00 00 00 00 
00 00 10 11 12 13 14 15 
16 17 18 19 1A 1B 1C 1D 
1E 1F 20 21 22 23 24 25 
26 27 28 29 2A 2B 2C 2D 
2E 2F 30 31 32 33 34 35 
36 37 
  
- ARP Table on the Destination System has to be modified to add LEWIZ MAC ADDR to the IP ADDR as follows
(This will help to generate the PING RESPONSE for correct address).

	lewiz_175:/usr/sbin$ sudo arp -an
	? (192.168.7.213) at <incomplete> on enp1s0
	
	lewiz_175:/usr/sbin$ sudo arp -s 192.168.7.213 00:12:32:ff:ff:ff     //change IP addr to your network's
	
	lewiz_175:/usr/sbin$ sudo arp -an
	? (192.168.7.213) at 00:12:32:ff:ff:ff [ether] PERM on enp1s0

***STEPS below will only work after above configurations:
- Open Vivado, Load the ../runs_lmac_eth_1g/ps_emio_eth_1g.xpr file
- bitstream is already generated and exported in the SDK Directory for the 'xczu9eg-ffvb1156-2-e'
- In vivado, goto FILE -> Launch SDK
- Once SDK finishes loading the hardware files, build project 'hello_world'
- Program FPGA
- Then right click on 'hello_world' click "Run -> Launch on Hardware (System Debugger)"

***Included files:
- 'putty.txt' contains the serial output from the FPGA Board and packets diplayed are on the DMA side.

- As you run the test in your network, you should capture the packets on the Destination Node
to see the packets transmitted and received.
