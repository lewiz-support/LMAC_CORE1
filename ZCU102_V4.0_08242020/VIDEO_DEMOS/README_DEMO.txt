
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
//    Language: Verilog
//

Thank you Edgar Iglesias@Xilinx for contributing to the device driver and independent testing.

----------- Aug 26, 2020
Description of the demo hardware, software, system and functionalities
A previous video showed basic usage of LeWiz's LMAC1 Ethernet core using PING, telnet, etc.
This demo showed more intense applications and heavy traffic through LMAC1 Core on Xilinx FPGA board.

Hardware implementation
- LeWiz's LMAC1 Ethernet MAC core (source code is available here)
- LeWiz's AXI-Stream bridge
- Integrated with Xilinx's DMA
- implemented on Xiinx's Zynq Ultrascale+ ZCU102 FPGA board

Ran with
Base Software
- Ubuntu OS
- LeWiz's LMAC1 device driver 
  (included configuration code for ZCU102 board's external clock)

(All of the above hardware project code, constraints, source code, etc. are available at this Github site.)
(released as ZCU102_V4.0_08242020)

Applications (used to test the traffic and connections through LMAC1)
- LeWiz's integrated wireless proxy/gateway - 1 side is wireless port, the other side is LMAC1 connecting to the network and Internet
          (FPGA board acting as a gateway Internet server)
- TCPdump (Wireshark) - Linux app to capture and show traffic through LMAC1 (You'll see LeWiz's Ethernet MAC address displayed)
- remote desktop login - from Windows client on the Ethernet network remote login to the FPGA board via LMAC1

Wireless client (a Windows laptop)
- to establish connection with the FPGA board wirelessly and Web browsing to the Internet via
the LMAC1 Ethernet port

--- DEMO FUNCTIONALITY - heavy simulataneous video traffic
Showed boot up sequence
Showed configuration of the LMAC1 device driver and ZCU102 clocks

Connectivity with wired and wireless clients
Browse the Internet and showed simultaneous playing of multiple videos from different sites
Capture network traffic through the LMAC1 port
Showed different connections established via LMAC1 to different Internet Web sites as expected.

This integrated demo ran very well with heavy traffic for >4 hours until we stopped it.
Others also reported tested it overnight. No problem.
Testings were conducted on Xilinx FPGA boards - both the ZCU102 E9 (standard) and much larger E15 FPGA devices.