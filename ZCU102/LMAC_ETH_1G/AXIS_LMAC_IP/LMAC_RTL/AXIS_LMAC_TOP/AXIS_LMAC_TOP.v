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



`timescale 1fs/1fs

module AXIS_LMAC_TOP (
  //// CLK/RESET
  input                 dclk,   //DMA PL CLK 100MHZ
  input                 lclk,   //LMAC CLK 156.25MHz
  input                 rst_,
  
  //// INPUT_LMAC_SPEED_MODE
  input     [ 1: 0]     fmac_speed,         //by default = 2'b01 for 1G mode
  
  //// GMII_SIGNALS
  output 	[ 7: 0]    	gmii_txd,			//o-8
  output 				gmii_tx_en, 		//o-1	
  output 				gmii_tx_er, 		//o-1	
  input  	[ 7: 0]     gmii_rxd,			//i-8
  //input  	            gmii_rxc,			//i-1
  input      			gmii_rx_er,			//i-1
  input 				gmii_rx_dv,         //i-1
  
  //// TX User Interface Signals
  input                 s_axis_tvalid,      //i-1
  output                s_axis_tready,      //o-1
  input     [63: 0]     s_axis_tdata,       //i-32
  input     [ 7: 0]     s_axis_tkeep,       //i-4
  input                 s_axis_tlast,       //i-1

  //// RX User Interface Signals
  output                m_axis_tvalid,      //o-1
  input                 m_axis_tready,      //i-1
  output    [63: 0]     m_axis_tdata,       //o-32
  output    [ 7: 0]     m_axis_tkeep,       //o-4
  output                m_axis_tlast,       //o-1
  
  //Signals from TX FIFOs	
  output				rdempty_wf, 		//o-1, Empty signal of data FIFO	
  output	            rdempty_wcf,		//o-1, Empty signal of wrcnt FIFO
  output	[63: 0]	    dataout_wf,			//o-64, Dataout of data FIFO	 
  output	[31: 0]	    dataout_wcf,		//o-32, Dataout of wrcnt FIFO (Byte count)
  	
  //Signals to TX FIFOs
  output	           	rden_wf,			//o-1, read enable of data FIFO
  output				rden_wcf,			//o-1, read enable of wrcnt FIFO
  
  //Signals from RX FIFOs	
  output				rdempty_rf, 		//o-1, Empty signal of data FIFO	
  output	            rdempty_rcf,		//o-1, Empty signal of wrcnt FIFO
  output	[63: 0]	    dataout_rf,			//o-64, Dataout of data FIFO	 
  output	[31: 0]	    dataout_rcf,		//o-32, Dataout of wrcnt FIFO (Byte count)
  	
  //Signals to RX FIFOs
  output	           	rden_rf,			//o-1, read enable of data FIFO
  output				rden_rcf,			//o-1, read enable of wrcnt FIFO
  
  //LMAC_FIFO_SIGNALS
  output reg 		   	rx_mac_empty_reg,  	//1
  output reg  	       	cs_fifo_empty_reg,	//1
    
  output                bcnt_more_than_1500, //o-1 signal to detect packet size more than 1500B.
  
  output    [3:0]       axis2fib_ar_state,         // o-4 debug axis2fib state machine
  output    [3:0]       fmac2fib_ar_state,         //o-4 debug fmac2fic state machine
  
  //wbcnt to txwbcnt_fifo
  output 	[31 :0]	    wr2_txwbcnt_fifo,	//o-16, wbcnt value                   
  output 				txwbcnt_wrreq,		//o-1, request to write to wr_fifo in bridge		
  output 				txwbcnt_wrempty,	//o-1, write data fifo in bridge is empty
  output 	[2 :0]		txwbcnt_wrusedw,	//o-4,  wrusedw -number of locations filled in fifo
  
  //data to txdata_fifo 
  output  	[63 : 0]    wr2_txdata_fifo,	//o-64, write data to wr_fifo in bridge	
  output  				txdata_wrempty,    	//o-1, write data fifo in bridge is empty 
  output 				txdata_wrreq,		//o-1, request to write to wr_fifo in bridge
  output 				txdata_wrfull,		//o-1, indicates wr_fifo is full
  output 	[8 : 0]		txdata_wrusedw,		//o-4,  wrusedw -number of locations filled in fifo
  
  output    [3 : 0]     axis2fib_txctrl_st,
  
  output reg         	tx_mac_wr_reg,       	//1
  output reg  [63: 0]	tx_mac_data_reg,		//64
  output reg  [12: 0]   tx_mac_usedw_reg,    	//13
  
  output    [3 : 0]     fib2fmac_txctrl_st
);
    
  //Interface to TX PATH
  wire         		tx_mac_wr;       	//1
  wire	[63: 0]	    tx_mac_data;		//64
  wire	           	tx_mac_full;		//1
  wire  [12: 0]     tx_mac_usedw;    	//13
    
  //Interface to RX PATH
  wire 	[63: 0]   	rx_mac_data;		//64
  wire  		   	rx_mac_empty;   	//1
  wire 		   		rx_mac_rd;      	//1
  
  //for pattern search (I/F to RX Path/EXTR)
  wire	       		cs_fifo_rd_en;		//1
  wire  	       	cs_fifo_empty;		//1
  wire 	[63: 0]   	ipcs_fifo_dout;		//64
  
  wire	[31: 0]		FMAC_REGDOUT_in;   
  wire 				reg_rd_done_in;
  wire	[15 : 0]	host_addr_reg_out; 
  wire 				reg_rd_start_out;  
  
  //Interface to RX PATH
  reg 	[63: 0]   	rx_mac_data_reg;	//64
//   reg  		   	    rx_mac_empty_reg;   	//1
  
//   //for pattern search (I/F to RX Path/EXTR)
//   reg  	       	    cs_fifo_empty_reg;		//1
  reg 	[63: 0]   	ipcs_fifo_dout_reg;		//64
  

  	//AXIS LMAC BRIDGE
	AXIS_BRIDGE_TOP AXIS_BRIDGE_TOP(

	.clk 						(dclk),							//i-1, 100MHz
	.xA_clk 					(lclk),							//i-1, 156.25MHz
	.reset_ 					(rst_),        					//i-1
             
	//Main Signals	               	
	.tx_mac_aclk 				(dclk), 						//i-1, TX clock 100MHz.                                     
	.tx_axis_mac_tdata 			(s_axis_tdata),					//i-DATA_WIDTH, Write data.                          
	.tx_axis_mac_tvalid 		(s_axis_tvalid),				//i-1, Signal to show if the data is valid.          
	.tx_axis_mac_tlast 			(s_axis_tlast),					//i-1, Signal to show the last data byte or quadword.
	.tx_axis_mac_tuser 			(1'b0),							//i-1, Error signal.                                 
	.tx_axis_mac_tstrb 			(s_axis_tkeep),					//i-8, To show how many bytes of the data is valid.  
	.tx_axis_mac_tready 		(s_axis_tready),				//o-1, Indicates if the slave is ready.              
	      
	//Sideband Signals                  	
	.tx_ifg_delay 				(1'b0),							//i-1, Control signal for configurable interframe gap                                                           
	.tx_collision 				(),								//o-1, Asserted by the Ethernet MAC core. Any transmission in progress should be aborted. 0 in full-duplex mode.
	.tx_retransmit 				(),								//o-1, Aborted frame to be retransmitted. 0 in full-duplex mode.                                                
	.tx_statistics_vector 		(),   							//o-32,A statistics vector that gives information on the last frame transmitted.                                
	.tx_statistics_valid 		(),								//o-1, Asserted at end of frame transmission, indicating that the tx_statistics_vector is valid.  
	
	//Signals to AXIS Master
	.rx_mac_aclk				(dclk),							//i-1, RX clock 100MHz.	
	.rx_axis_mac_tdata 			(m_axis_tdata),					//o-64, data signal of bridge module
    .rx_axis_mac_tvalid 		(m_axis_tvalid),  				//o-1, signal to AXIS master indicating the data is valid
    .rx_axis_mac_tlast 			(m_axis_tlast),					//o-1, signal to AXIS Master saying end of data
    .rx_axis_mac_tuser 			(),								//o-1, error signal from FMAC
    .rx_axis_filter_tuser 		(),								//o-1, error signal from filter of FMAC
    .rx_axis_mac_tstrb 			(m_axis_tkeep),					//o-8, Signal indicating valid bytes inside the qword transmitting
    .rx_statistics_vector 		(),								//o-27, information about current frame 
    .rx_statistics_valid 		(),								//o-1, Signal indication the statistics vector is valid
    
    //Signals from AXIS Master
	.rx_axis_mac_tready 		(m_axis_tready),				//i-1, signal indicating that AXIS master accepted data
	.rx_axis_compatible_mode 	(1'b1),							//i-1, signal to keep tready always one     
	
	//Signals from FMAC	                    	                    			
	.fib_tx_mac_usedw 			(tx_mac_usedw),					//i-13, Bit-wise OR the signal to use it as empty signal 
           
	//Signals to FMAC                 	                			
	.fib_tx_mac_data 			(tx_mac_data),					//o-64, Data in of FMAC for tx path 
	.fib_tx_mac_wr 				(tx_mac_wr),					//o-1,  Write enable signal of FMAC FIFO 
	.fib_tx_mac_ipcs_data 		(),								//o-64, IPCS Data in of FMAC IPCS for tx path 
    .fib_tx_mac_ipcs_wr 		(),  							//o-1 , Write enable signal of FMAC IPCS FIFO    
    
	//Signals from FMAC
	.fib_rx_mac_data_empty 		(rx_mac_empty_reg),				//i-1 , signal from FMAC saying its FIFO is empty
	.fib_rx_mac_pkt_data 		(rx_mac_data_reg),				//i-64, data signal of FMAC module
    .fib_rx_mac_ipcs_empty 		(cs_fifo_empty_reg),  			//i-1 , signal from IPCS FIFO in FMAC its empty
    .fib_rx_mac_ipcs_data 		(ipcs_fifo_dout_reg),			//i-64, data signal of IPCS FIFO from FMAC module
    
    //Signals to FMAC
	.fib_rx_mac_rd 				(rx_mac_rd), 					//o-1, read signal 
	.fib_rx_mac_ipcs_rd 		(cs_fifo_rd_en), 				//o-1, read signal        
	
	.host_addr_in				(16'h0),		  				//i-16   
	.mac_regdout_in				(FMAC_REGDOUT_in),		        //i-32
	.reg_rd_start_in			(1'b0),	    		            //i-1 
	.reg_rd_done_in				(reg_rd_done_in),	            //i-1 
	                                                                  
	.host_addr_out				(host_addr_reg_out),		    //o-16
	.mac_regdout_out			(),				                //o-32
	.reg_rd_start_out			(reg_rd_start_out),	            //o-1 
	.reg_rd_done_out			(),			    				//o-1 
                                                            	
	//Signals from TX FIFOs	
	.rdempty_wf_reg             (rdempty_wf), 			        //o-1, Empty signal of data FIFO	
	.rdempty_wcf_reg            (rdempty_wcf),			        //o-1, Empty signal of wrcnt FIFO
	.dataout_wf_reg             (dataout_wf),				    //o-64, Dataout of data FIFO	 
	.dataout_wcf_reg            (dataout_wcf),			        //o-32, Dataout of wrcnt FIFO (Byte count)
		
	//Signals to TX FIFOs
	.rden_wf_reg                (rden_wf),				        //o-1, read enable of data FIFO
	.rden_wcf_reg               (rden_wcf),				        //o-1, read enable of wrcnt FIFO
	
	//Signals from RX FIFOs	
	.rdempty_rf_reg             (rdempty_rf), 			        //o-1, Empty signal of data FIFO	
	.rdempty_rcf_reg            (rdempty_rcf),			        //o-1, Empty signal of wrcnt FIFO
	.dataout_rf_reg             (dataout_rf),				    //o-64, Dataout of data FIFO	 
	.dataout_rcf_reg            (dataout_rcf),			        //o-32, Dataout of wrcnt FIFO (Byte count)
		
	//Signals to RX FIFOs
	.rden_rf_reg                (rden_rf),				        //o-1, read enable of data FIFO
	.rden_rcf_reg               (rden_rcf),				        //o-1, read enable of wrcnt FIFO
	
	.bcnt_more_than_1500_reg    (bcnt_more_than_1500),          //o-1, signal to detect packet size greater than 1500B
	
	.axis2fib_ar_state_reg      (axis2fib_ar_state),            //o-4 debug axis2fib state machine
	.fmac2fib_ar_state_reg      (fmac2fib_ar_state),            //o-4 debug fmac2fic state machine
	
	//wbcnt to txwbcnt_fifo
	.wr2_txwbcnt_fifo_reg       (wr2_txwbcnt_fifo),	            //o-16, wbcnt value                   
	.txwbcnt_wrreq_reg          (txwbcnt_wrreq),		        //o-1, request to write to wr_fifo in bridge		
	.txwbcnt_wrempty_reg        (txwbcnt_wrempty),	            //o-1, write data fifo in bridge is empty
	.txwbcnt_wrusedw_reg        (txwbcnt_wrusedw),	            //o-4,  wrusedw -number of locations filled in fifo
		
	//data to txdata_fifo                
	.wr2_txdata_fifo_reg        (wr2_txdata_fifo),	            //o-64, write data to wr_fifo in bridge	
	.txdata_wrempty_reg         (txdata_wrempty),    	        //o-1, write data fifo in bridge is empty 
	.txdata_wrreq_reg           (txdata_wrreq),		            //o-1, request to write to wr_fifo in bridge
	.txdata_wrfull_reg          (txdata_wrfull),		        //o-1, indicates wr_fifo is full
	.txdata_wrusedw_reg         (txdata_wrusedw),		        //o-4,  wrusedw -number of locations filled in fifo
	
	.axis2fib_txctrl_st_reg     (axis2fib_txctrl_st),           //o-4, axis2fib_txctrl state machine
	.fib2fmac_txctrl_st_reg     (fib2fmac_txctrl_st),           //o-4, fib2fmac_txctrl state machine
	
	.test 						()								//o-1 debug		

	);

	
	always @(posedge lclk) begin
	    // Interface to RX PATH
        rx_mac_data_reg     <= rx_mac_data;
        rx_mac_empty_reg    <= rx_mac_empty;
        
	    //for pattern search (I/F to RX Path/EXTR)
	    cs_fifo_empty_reg   <= cs_fifo_empty;
	    ipcs_fifo_dout_reg  <= ipcs_fifo_dout;	
	    
        tx_mac_wr_reg       <= tx_mac_wr;       //1
        tx_mac_data_reg     <= tx_mac_data;		//64
        tx_mac_usedw_reg    <= tx_mac_usedw;    //13
	end
	

//LEWIZ_ETH_MAC CORE2
	LMAC_SYNTH LMAC_SYNTH (

	    .clk	  			(lclk),     		//i-1, clk156
	    .reset_				(rst_),      //i-1, reset_
	
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
	
        //input				xgmii_reset_,		//i-1   
    	.gmii_txd			(gmii_txd),			//o-8
    	.gmii_txc			(),			        //o-8
    	.gmii_tx_en			(gmii_tx_en), 		//o-1		
    	.gmii_tx_er			(gmii_tx_er), 		//o-1		
    	.gmii_rxd			(gmii_rxd),			//i-8
    	//.gmii_rxc			(gmii_rxc),			//i-1
    	.gmii_rx_er			(gmii_rx_er),		//i-1
    	.gmii_rx_dv			(gmii_rx_dv),		//i-1
        //input[ 1 : 0]		xgmii_led_,		    //i-2
	
	    .xauiA_linkup		(),					// to LED on board 
	        
	    // From central decoder
	    .host_addr_reg		(host_addr_reg_out),
	    .SYS_ADDR			(4'h1),
	            
	    // From mac_register
	    .fail_over			(1'b0),
	    .fmac_ctrl			(32'h00000808),
	    .fmac_ctrl1			(32'h000005ee),
	
	    .fmac_rxd_en		(1'b1),
	
	    .mac_pause_value	(32'hffff0000),			// [31:16] = tx_pause_value to send a pause frame, [15:0] = rx_pause_value (not implement)
	    //.mac_addr0		(48'h001232004eaf),		// mac_addr to check in non-promiscuous mode
	    .mac_addr0		    (48'h001232ffffff),		// mac_addr to check in non-promiscuous mode - lewiz mac
	
	    .reg_rd_start		(reg_rd_start_out),
	
	    .reg_rd_done_out	(reg_rd_done_in),		
	
	    .FMAC_REGDOUT		(FMAC_REGDOUT_in),
	    .FIFO_OV_IPEND  	(),
	    .fmac_speed			(fmac_speed)

	);


endmodule
