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
    reg                 s_axis_tvalid;    //i-1
    wire                s_axis_tready;    //o-1
    reg     [31: 0]     s_axis_tdata;     //i-32
    reg     [ 3: 0]     s_axis_tkeep;     //i-4
    reg                 s_axis_tlast;     //i-1

    //// RX User Interface Signals
    wire                m_axis_tvalid;    //o-1
    reg                 m_axis_tready;    //i-1
    wire    [31: 0]     m_axis_tdata;     //o-32
    wire    [ 3: 0]     m_axis_tkeep;     //o-4
    wire                m_axis_tlast;      //o-1

LMAC_DFIFO_TOP LMAC_DFIFO_TOP (
  //// CLK/RESET
  .dclk         (dclk),   //DMA PL CLK 50MHZ
  .lclk         (lclk),   //LMAC CLK 125MHz
  .rst_         (rst_),
  
  //// INPUT_LMAC_SPEED_MODE
  .fmac_speed   (2'b01),
  
  //// XGMII_SIGNALS
  .gmii_txd	    (gmii_txd),		   //o-8
  .gmii_tx_en 	(gmii_tx_en),	   //o-1	
  .gmii_tx_er 	(gmii_tx_er),	   //o-1	
  .gmii_rxd	    (gmii_rxd),		   //i-8
  .gmii_rx_er	(gmii_rx_er),      //i-1
  .gmii_rx_dv   (gmii_rx_dv),      //i-1
  
  //// TX User Interface Signals
  .s_axis_tvalid(s_axis_tvalid),   //i-1
  .s_axis_tready(s_axis_tready),   //o-1
  .s_axis_tdata (s_axis_tdata),    //i-32
  .s_axis_tkeep (s_axis_tkeep),    //i-4
  .s_axis_tlast (s_axis_tlast),    //i-1

  //// RX User Interface Signals
  .m_axis_tvalid(m_axis_tvalid),   //o-1
  .m_axis_tready(m_axis_tready),   //i-1
  .m_axis_tdata (m_axis_tdata),    //o-32
  .m_axis_tkeep (m_axis_tkeep),    //o-4
  .m_axis_tlast (m_axis_tlast)    //o-1
);

	//initialization	
	initial begin
        dclk            <= 0;
        lclk            <= 0;
		rst_ 			<= 0;
		
		#200 rst_ 	<= 1;			
	end
	
	always #4	 lclk 		<= ~lclk; 		//125MHz
	always #10	 dclk 		<= ~dclk; 		//50MHz
	
	initial begin
    gmii_rxd        <=  8'h07;		//i-8
    gmii_rx_er      <=  1'b0;		//i-1
    gmii_rx_dv      <=  1'b0;       //i-1
  
    //// TX User Interface Signals
    s_axis_tvalid   <=  1'b0;       //i-1
    s_axis_tdata    <=  32'h0;      //i-32
    s_axis_tkeep    <=  4'hF;       //i-4
    s_axis_tlast    <=  1'b0;       //i-1

    //// RX User Interface Signals
    m_axis_tready   <=  1'b1;       //i-1	
	end
	
endmodule
