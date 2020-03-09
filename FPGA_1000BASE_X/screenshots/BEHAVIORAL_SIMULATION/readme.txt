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

1_behavioral_simulation_force_packet_at_rx
	- Shows the beginning point at which the gmii_rxd/rx_dv are forced.

2_behavioral_simulation_force_packet_at_rx(contd.)               	
    - Shows the ending point at which the gmii_rxd/rx_dv are forced.
    	
3_loopback_module
	- Shows the output of LMAC going as an input to the LOOPBACK_MODULE, and output of the LOOPBACK_MODULE going to TX_FIFO of LMAC.

4_LMAC_SYNTH_TXD
	- Shows the data going out of the LMAC on the gmii_txd/tx_en lines (after being looped back).

5_LMAC_SYNTH_TXD(contd.)                                                                              
	- Shows the end of data going out of the LMAC on the gmii_txd/tx_en lines (after being looped back).
	
6_PCS_PMA
	- Shows the data going to the PCS/PMA IP.

7_PCS_PMA(contd.)	
	- Data is looped back again and sent on the gmii_rxd/rx_dv lines.

8_lmac_synth_received_From_PCS_PMA
	- Data coming back on the gmii_rxd/rx_dv which will go as an input to the LMAC module.
		
9_multiple_packet_rx_tx
	- Same packet will be looped back on both sides (LMAC and PCS/PMA IP).