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


//-----------------------------------------------------------------------------
//
// (c) Copyright 2012-2014 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information of Xilinx, Inc.
// and is protected under U.S. and international copyright and other
// intellectual property laws.
//
// DISCLAIMER
//
// This disclaimer is not a license and does not grant any rights to the
// materials distributed herewith. Except as otherwise provided in a valid
// license issued to you by Xilinx, and to the maximum extent permitted by
// applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
// FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
// IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
// MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
// and (2) Xilinx shall not be liable (whether in contract or tort, including
// negligence, or under any other theory of liability) for any loss or damage
// of any kind or nature related to, arising under or in connection with these
// materials, including for any direct, or any indirect, special, incidental,
// or consequential loss or damage (including loss of data, profits, goodwill,
// or any type of loss or damage suffered as a result of any action brought by
// a third party) even if such damage or loss was reasonably foreseeable or
// Xilinx had been advised of the possibility of the same.
//
// CRITICAL APPLICATIONS
//
// Xilinx products are not designed or intended to be fail-safe, or for use in
// any application requiring fail-safe performance, such as life-support or
// safety devices or systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any other
// applications that could lead to death, personal injury, or severe property
// or environmental damage (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and liability of any use of
// Xilinx products in Critical Applications, subject only to applicable laws
// and regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
// AT ALL TIMES.

`timescale 1ps / 1ps

(* CORE_GENERATION_INFO = "network_path_shared,network_path_shared_v1_3,{x_ipproduct=Vivado2014.3,v7_xt_conn_trd=2014.3}" *)
module network_path_shared # (
    parameter RX_FIFO_CNT_WIDTH    =  13,
    parameter AXIS_TDATA_WIDTH  = 128, 
    parameter AXIS_TKEEP_WIDTH  = 16,
    parameter AXIS_XGEMAC_TDATA_WIDTH  = 64, 
    parameter ADDRESS_FILTER_EN = 1,
    parameter C_BASE_ADDRESS    = 32'h000,  
    parameter C_HIGH_ADDRESS    = 32'h07FF
)
(   
	 
    input                            xphy_refclk_n,
    input                            xphy_refclk_p,
    (* KEEP = "TRUE" *) output                           xphy_txp, 
    (* KEEP = "TRUE" *) output                           xphy_txn, 
    (* KEEP = "TRUE" *) input                            xphy_rxp, 
    (* KEEP = "TRUE" *) input                            xphy_rxn, 
    output                           txusrclk, 
    output                           txusrclk2, 
    output                           qplloutclk,
    output                           qplloutrefclk,
    output                           tx_resetdone, 
    
    input                            tx_fault,
    input                            signal_detect,
    input [4 : 0]                    prtad,

    output                           clk125, 
    input                            dclk,
    input                            sys_rst,
    input [1:0] 					 fmac_speed,
    input 							clk_ref_200_i

);

   //LEWIZ
  //-10GBASE-R PHY Specific signals
  (* KEEP = "TRUE" *) wire [7 : 0]         	gmii_txd_core;
  (* KEEP = "TRUE" *) wire [7 : 0]         	gmii_rxd_core;
  					  wire          		gmii_rx_er;

  wire  xphy_resetdone;

//LEWIZ_MODULE_SIGNALS
    //Interface to TX PATH
	(* KEEP = "TRUE" *) wire         		tx_mac_wr;       	//1
	(* KEEP = "TRUE" *) wire	[63 : 0]	tx_mac_data;		//64
	(* KEEP = "TRUE" *) wire	           	tx_mac_full;		//1
    (* KEEP = "TRUE" *) wire  	[12 : 0]    tx_mac_usedw;    	//13
		
    //Interface to RX PATH
    (* KEEP = "TRUE" *) wire 	[63 : 0]   	rx_mac_data;		//64
    (* KEEP = "TRUE" *) wire			   	rx_mac_empty;   	//1
    (* KEEP = "TRUE" *) wire 		   		rx_mac_rd;      	//1

    //for pattern search (I/F to RX Path/EXTR)
    (* KEEP = "TRUE" *) wire	       		cs_fifo_rd_en;		//1
    (* KEEP = "TRUE" *) wire		       	cs_fifo_empty;		//1
    (* KEEP = "TRUE" *) wire 	[63 : 0]   	ipcs_fifo_dout;		//64
    (* KEEP = "TRUE" *) wire                gmii_tx_en;
    (* KEEP = "TRUE" *) wire                gmii_rx_dv;
    wire									gmii_tx_er;

    
    
    wire [4:0] configuration_vector;
    
    assign configuration_vector = 5'b00000;
//    reg	speed_is_10_100;
//    reg	speed_is_100;
    
    
//    always@(posedge xphy_refclk_p) begin 
//    	if (!sys_rst) begin
//    		speed_is_10_100 <= 1'b0;
//    		speed_is_100	<= 1'b0;
//    	end
//    	else begin
//    		speed_is_10_100 <= (fmac_speed == 2'd1) ? 1'b0 :
//    						   (fmac_speed == 2'd2)	? 1'b1 :
//    						   (fmac_speed == 2'd3)	? 1'b1 :
//    						   1'b0;
//			speed_is_100 	<= (fmac_speed == 2'd1) ? 1'b0 :
//    						   (fmac_speed == 2'd2)	? 1'b1 :
//    						   (fmac_speed == 2'd3)	? 1'b0 :
//    						   1'b0; 
//  		end
//  	end   		
    
    	  


//LEWIZ_LPBK_MODULE
	LPBK_MODULE LPBK_MODULE(

		.clk			(clk125),			//i-1
		.reset_			(xphy_resetdone),     	//i-1   					
		
	    //Interface to TX PATH
		.tx_mac_wr		(tx_mac_wr),       	//o-1
		.tx_mac_data	(tx_mac_data),		//o-64
		.tx_mac_full	(tx_mac_full),		//i-1
	    .tx_mac_usedw	(tx_mac_usedw),    	//i-13
			
	    //Interface to RX PATH
	    .rx_mac_data	(rx_mac_data),		//i-64
	    .rx_mac_empty	(rx_mac_empty),   	//i-1
	    .rx_mac_rd		(rx_mac_rd),      	//o-1
	
	    //for pattern search (I/F to RX Path/EXTR)
	    .cs_fifo_rd_en	(cs_fifo_rd_en),	//o-1
	    .cs_fifo_empty	(cs_fifo_empty),	//i-1
	    .ipcs_fifo_dout	(ipcs_fifo_dout)	//i-64		

	);



//LEWIZ_ETH_MAC
	LMAC_SYNTH LMAC_SYNTH (

	    .clk	  			(clk125),     		//i-1, clk156
	    .reset_				(xphy_resetdone),      //i-1, reset_
	
	    // Interface to TX PATH
		.tx_mac_wr			(tx_mac_wr),    	// i-1
		.tx_mac_data		(tx_mac_data),		// i-64
		.tx_mac_full		(tx_mac_full),		// o-1
	    .tx_mac_usedw		(tx_mac_usedw),     // o-13
			
	    // Interface to RX PATH
	    .rx_mac_data		(rx_mac_data),
	    .rx_mac_ctrl		(),
	    .rx_mac_empty		(rx_mac_empty),
	    .rx_mac_rd			(rx_mac_rd),
	
	    //for pattern search (I/F to RX Path/EXTR)
	    .cs_fifo_rd_en		(cs_fifo_rd_en),	//i-1
	    .cs_fifo_empty		(cs_fifo_empty),	//o-1
	
	    .ipcs_fifo_dout		(ipcs_fifo_dout),		
	
	    //.xgmii_reset_		(xgmii_reset_),		//i-1   
	    .gmii_txd			(gmii_txd_core),	//o-64
	    .gmii_rxd			(gmii_rxd_core),	//i-64
	    .gmii_rx_er			(gmii_rx_er),	//i-8
	    //.xgmii_led_		(xgmii_led_),		//i-2
	
	    .xauiA_linkup		(),					// to LED on board 
	        
	    // From central decoder
	    .host_addr_reg		(16'h0),
	    .SYS_ADDR			(4'h1),
	            
	    // From mac_register
	    .fail_over			(1'b0),
	    .fmac_ctrl			(32'h00000808),
	    .fmac_ctrl1			(32'h000005ee),
	
	    .fmac_rxd_en		(1'b1),
	
	    .mac_pause_value	(32'hffff0000),			// [31:16] = tx_pause_value to send a pause frame, [15:0] = rx_pause_value (not implement)
	    .mac_addr0		    (48'h001232004eaf),		// mac_addr to check in non-promiscuous mode
	
	    .reg_rd_start		(1'b0),
	
	    .reg_rd_done_out	(),		
	
	    .FMAC_REGDOUT		(),
	    .FIFO_OV_IPEND  	(),
	    .fmac_speed			(fmac_speed),
	    .gmii_rx_dv			(gmii_rx_dv),
	    .gmii_tx_en			(gmii_tx_en),
	    .gmii_tx_er			(gmii_tx_er)

	);
	



  assign tx_resetdone = xphy_resetdone;
  
  reg r0,r1;
always@(posedge dclk) begin

  r0 <=  sys_rst;

  r1 <= !sys_rst;

end
  

        
gig_ethernet_pcs_pma_0 gig_eth_pcs_pma_inst(


      .gtrefclk_p					(xphy_refclk_p),          	//i-1, (!clk = 125MHz),     
      .gtrefclk_n					(xphy_refclk_n),          	//i-1, (clk = 125MHz)       
      .independent_clock_bufg		(clk_ref_200_i),						//????
      .rxp							(xphy_rxp),                 // Differential +ve for serial reception from PMD to PMA.
      .rxn							(xphy_rxn),                 // Differential -ve for serial reception from PMD to PMA.
      .gmii_txd						(gmii_txd_core),            // Transmit data from client MAC.
      .gmii_tx_en					(gmii_tx_en),            	// Transmit control signal from client MAC.
      .gmii_tx_er					(gmii_tx_er),           			// Transmit control signal from client MAC.
      .configuration_vector			(configuration_vector),  									// Alternative to MDIO interface.
//      .configuration_valid			(1'b1),  									// Alternative to MDIO interface.
     .reset							(sys_rst),                 	// Asynchronous reset for entire core      .
     .signal_detect					(signal_detect),          	// Input from PMD to indicate presence of optical input.
     .gtrefclk_out					(clk125),           
     .gtrefclk_bufg_out 			(),
     .txp							(xphy_txp),                  // Differential +ve of serial transmission from PMA to PMD.
     .txn							(xphy_txn),                  // Differential -ve of serial transmission from PMA to PMD.
     .resetdone						(xphy_resetdone),       	 // The GT transceiver has completed its reset cycle
     .userclk_out					(txusrclk),           
     .userclk2_out					(txusrclk2),          
     .rxuserclk_out					(),         
     .rxuserclk2_out				(),        
      // GMII Interface
      //---------------
      .gmii_rxd						(gmii_rxd_core),            // Received Data to client MAC.
      .gmii_rx_dv					(gmii_rx_dv),            	// Received control signal to client MAC.
      .gmii_rx_er					(gmii_rx_er),            	// Received control signal to client MAC.
      .gmii_isolate					(),          				// Tristate control to electrically isolate GMII.
      // General IO's                           							
      //-------------                           							
      .status_vector(),         								// Core status.
      .gt0_qplloutclk_out			(qplloutclk),
      .gt0_qplloutrefclk_out		(qplloutrefclk)
      //.pma_reset_out				(),
      //.mmcm_locked_out				(),
      //.sgmii_clk_r					(), 
      //.sgmii_clk_f					(), 
      //.sgmii_clk_en					(),
      //.speed_is_10_100				(speed_is_10_100),
      //.speed_is_100					(speed_is_100)
      
   );  
   
endmodule
