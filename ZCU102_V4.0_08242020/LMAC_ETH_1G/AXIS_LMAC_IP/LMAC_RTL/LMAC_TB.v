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


`timescale 1ns / 1ns

module LMAC_TB();

	reg 	dclk; 		
	reg 	lclk; 		
	reg 	rst_; 
	
    //// XGMII_SIGNALS
    wire 	[ 7: 0]    	gmii_txd;			//o-8
    wire 				gmii_tx_en; 		//o-1	
    wire 				gmii_tx_er; 		//o-1	
    reg  	[ 7: 0]     gmii_rxd;			//i-8
    //input  	        gmii_rxc;			//i-1
    reg      			gmii_rx_er;			//i-1
    reg 				gmii_rx_dv;         //i-1
  
    //// TX User Interface Signals
    wire                s_axis_tvalid;    	//i-1
    wire                s_axis_tready;    	//o-1
    wire     [63: 0]    s_axis_tdata;     	//i-64
    wire     [ 7: 0]    s_axis_tkeep;     	//i-8
    wire                s_axis_tlast;     	//i-1

    //// RX User Interface Signals
    wire                m_axis_tvalid;    	//o-1
    reg                 m_axis_tready;    	//i-1
    wire    [63: 0]     m_axis_tdata;     	//o-64
    wire    [ 7: 0]     m_axis_tkeep;     	//o-8
    wire                m_axis_tlast;     	//o-1
    
	reg 				gen_en_wr;				//start write operation

	    
	axi_stream_master axi_stream_master(

	.clk 					(dclk),						//i-1, 250MHz
	.reset_ 				(rst_),        				//i-1
	.gen_en_wr 				(gen_en_wr),      			//i-1, to initiate the write transaction.

	//Main Signals
	.tx_mac_aclk 			(dclk), 					//i-1, TX clock.                                     
	.tx_axis_mac_tdata 		(s_axis_tdata),		//o-DATA_WIDTH, Write data.                          
	.tx_axis_mac_tvalid 	(s_axis_tvalid),	//o-1, Signal to show if the data is valid.          
	.tx_axis_mac_tlast 		(s_axis_tlast),		//o-1, Signal to show the last data byte or quadword.
	.tx_axis_mac_tuser 		(),					//o-1, Error signal.                                 
	.tx_axis_mac_tstrb 		(s_axis_tkeep),		//o-8, To show how many bytes of the data is valid.  
	.tx_axis_mac_tready 	(s_axis_tready),	//i-1, Indicates if the slave is ready.              
	
	//Sideband Signals
	.tx_ifg_delay 			(),			//o-1, Control signal for configurable interframe gap                                                           
	.tx_collision 			(1'b0),		//i-1, Asserted by the Ethernet MAC core. Any transmission in progress should be aborted. 0 in full-duplex mode.
	.tx_retransmit 			(1'b0),		//i-1, Aborted frame to be retransmitted. 0 in full-duplex mode.                                                
	.tx_statistics_vector 	(32'h0),   	//i-32,A statistics vector that gives information on the last frame transmitted.                                
	.tx_statistics_valid 	(1'b0),		//i-1, Asserted at end of frame transmission, indicating that the tx_statistics_vector is valid.                
	
	//Rx Main Signals
	.rx_mac_aclk 			(dclk), 	//i-1, RX clock.                                     
	.rx_axis_mac_tdata 		(64'h0),	//i-DATA_WIDTH, Read data.                          
	.rx_axis_mac_tvalid 	(1'b0),		//i-1, Signal to show if the data is valid.          
	.rx_axis_mac_tlast 		(1'b0),		//i-1, Signal to show the last data byte or quadword.
	.rx_axis_mac_tuser 		(1'b0),		//i-1, Error signal.                                 
	.rx_axis_mac_tstrb 		(8'h0),		//i-8, To show how many bytes of the data is valid.  
	.rx_axis_mac_tready 	(),   		//o-1, If 1, Master is ready to accept data.              
	
	//Rx Sideband Signals
	.rx_statistics_vector 	(),   	//o-28,A statistics vector that gives information on the last frame transmitted.                                
	.rx_statistics_valid 	(),		//o-1, Asserted at end of frame transmission, indicating that the rx_statistics_vector is valid. 
	
	.stop_if_error			(1'b0),         	//i-1, stops the simulation, if error occurs (i.e. received data does not match.)
	
	.rx_pkt_gen_sel 		(1'b0),			//i                  
	
	.host_addr				(),      
	.reg_rd_start			(),	  
	.reg_rd_done_out		(1'b0),
	.mac_regdout			(32'h0),	   
	.start					(1'b0),			       
	.address 				(16'h0),
		
	.test 					()							//o-1 debug

	);

	
AXIS_LMAC_TOP AXIS_LMAC_TOP (
  //// CLK/RESET
  .dclk         (dclk),   //DMA PL CLK 50MHZ
  .lclk         (lclk),   //LMAC CLK 125MHz
  .rst_         (rst_),
  
  //// INPUT_LMAC_SPEED_MODE
  .fmac_speed   (2'b01),
  
  //// GMII_SIGNALS
  .gmii_txd	    (gmii_txd),		   //o-8
  .gmii_tx_en 	(gmii_tx_en),	   //o-1	
  .gmii_tx_er 	(gmii_tx_er),	   //o-1	
  .gmii_rxd	    (gmii_rxd),		   //i-8
  .gmii_rx_er	(gmii_rx_er),      //i-1
  .gmii_rx_dv   (gmii_rx_dv),      //i-1
  
  //// TX User Interface Signals
  .s_axis_tvalid(s_axis_tvalid),   //i-1
  .s_axis_tready(s_axis_tready),   //o-1
  .s_axis_tdata (s_axis_tdata),    //i-64
  .s_axis_tkeep (s_axis_tkeep),    //i-8
  .s_axis_tlast (s_axis_tlast),    //i-1

  //// RX User Interface Signals
  .m_axis_tvalid(m_axis_tvalid),   //o-1
  .m_axis_tready(m_axis_tready),   //i-1
  .m_axis_tdata (m_axis_tdata),    //o-64
  .m_axis_tkeep (m_axis_tkeep),    //o-8
  .m_axis_tlast (m_axis_tlast)    //o-1
    
);

	//initialization	
	initial begin
        dclk            <= 0;
        lclk            <= 0;
		rst_ 			<= 0;
		
		gen_en_wr       <= 0;
		
		#200 rst_ 		<= 1;			
	end
	
	always #4	 lclk 		<= ~lclk; 		//125MHz
	always #4	 dclk 		<= ~dclk; 		//125MHz
	
	initial begin
    gmii_rxd        <=  8'h07;		//i-8
    gmii_rx_er      <=  1'b0;		//i-1
    gmii_rx_dv      <=  1'b0;       //i-1
  
//     //// TX User Interface Signals
//     s_axis_tvalid   <=  1'b0;       //i-1
//     s_axis_tdata    <=  64'h0;      //i-64
//     s_axis_tkeep    <=  8'h00;      //i-8
//     s_axis_tlast    <=  1'b0;       //i-1

    //// RX User Interface Signals
    m_axis_tready   <=  1'b1;       //i-1	
	end
	
endmodule
