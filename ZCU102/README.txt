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
		variable: 'temp[0], temp[1], temp[2], temp[3]' which goes to TxPacket.

- ZCU102 (SOURCE) - hard coded for testing
	- IP ADDR: 192.168.7.213
	- MAC ADDR: 00:12:32:FF:FF:FF	//LEWIZ MAC address
	
- DESTINATION SYSTEM - hard coded for testing
	- IP ADDR: 192.168.7.175
	- MAC ADDR: F4:8E:38:B0:2D:02
	
  !!! IMPORTANT: Change this MAC Addr and IP Addr corresponding to the destination on your network.
  Otherwise, you may not see the packet on your destination system.  You may need to run the test once
  for it to register the info on your network router. Then run it again.
  
- ARP Table on the Destination System has to be modified to add LEWIZ MAC ADDR to the IP ADDR as follows
(This will help to generate the PING RESPONSE for correct address).

	lewiz_175:/usr/sbin$ sudo arp -an
	? (192.168.7.213) at <incomplete> on enp1s0
	
	lewiz_175:/usr/sbin$ sudo arp -s 192.168.7.213 00:12:32:ff:ff:ff
	
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
