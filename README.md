# LMAC_CORE1

Copyright (C) 2018-2020 LeWiz Communications, Inc.
All rights reserved

---------------- Oct 15, 2020

Updated code/software release in ZCU102 folder - Xilinx ZCU102 board implementation

README file for this release is also available in the ZCU102 folder

Videos of the testing and demos are also available in ZCU102/video_demos folder

------------------------
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
(released as LMAC_CORE1/ZCU102/)

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

-------- July 09, 2020

FPGA IMPLEMENTATION FOR LMAC_CORE1 on Xilinx ZCU102 FPGA board.
Tested Ping Application to different systems on the network.

-------- Mar 09, 2020

FPGA IMPLEMENTATION FOR LMAC_CORE1 (1G ETHERNET 1000BASE-X) on Xilinx VC709 FPGA board.

LeWiz Communications, Inc. Ethernet MAC Core1 - Ethernet 1G/100M/10M

-------- May 16, 2019

Released code files as separate files. No longer 1 zip file.
Updated code, test files to latest release.


-------- Nov 21, 2018

This is the open source Ethernet Core 1 
Release as GNU LGPL open source - make sure you read the full license file (included as PDF)
All information are released as-is. LeWiz assumes absolutely no liability 

The release consists of 4 ZIP files: CODE, 2 LMAC_INFO_part* for TESTS, and DOCS
There are README files under each zip file.  If you follow the instructions, you should be able to use the core
and test it as we have done.

The release includes the core, test bench, test files, documentation for understanding the information in the zip files
including code, test, core descriptions

The main core itself has been production deployed and used on Intel and Xilinx FPGAs for several years.
The interface for AXI is recently added to make it easy for the user to interface.

This release is not intended for synthesis as it does not contain any FPGA or other semiconductor technology specific 
(memory/FIFO IP, etc.) To synthesize, those parts need to be replaced with specific semiconductor technology equivalent.

Simulation is intended for ModelSim tool.
