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



-------------- Aug 10, 2020

*** The design is for the FPGA Board part number xczu15eg-ffvb1156-2-e. ***
*** Change the part number if your board is xczu9eg-ffvb1156-2-e. ***

HARDWARE DESIGN CHANGES:
- DMA running at 125Mhz same as LMAC frequency.
- Revised the AXIS_LMAC_BRIDGE design.

Integrated hardware with lmac1 driver v3.0
TASKS PERFORMED:
- Able to boot the fpga and install lmac driver.
- DHCP auto assign the IP address to LMAC Eth port.
- Able to ping other linux system from FPGA board via LMAC port.
- Able to do telnet to other linux systems.
- Able to do wget and download a text file across the Internet.
