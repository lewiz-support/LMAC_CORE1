
`timescale 1fs/1fs

module LMAC_DFIFO_TOP (
  //// CLK/RESET
  input                 dclk,   //DMA PL CLK 50MHZ
  input                 lclk,   //LMAC CLK 125MHz
  input                 rst_,
  
  //// INPUT_LMAC_SPEED_MODE
  input     [ 1: 0]     fmac_speed,
  
  //// XGMII_SIGNALS
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
  input     [31: 0]     s_axis_tdata,       //i-32
  input     [ 3: 0]     s_axis_tkeep,       //i-4
  input                 s_axis_tlast,       //i-1

  //// RX User Interface Signals
  output                m_axis_tvalid,      //o-1
  input                 m_axis_tready,      //i-1
  output    [31: 0]     m_axis_tdata,       //o-32
  output    [ 3: 0]     m_axis_tkeep,       //o-4
  output                m_axis_tlast        //o-1
);
    
  //Interface to TX PATH
  wire         		tx_mac_wr;       	//1
  wire	[63: 0]	    tx_mac_data;		//64
  wire	           	tx_mac_full;		//1
  wire  [12: 0]     tx_mac_usedw;    	//13
  
  //Interface to RX PATH
  wire 	[63: 0]   	rx_mac_data;		//64
  wire			   	rx_mac_empty;   	//1
  wire 		   		rx_mac_rd;      	//1
  
  //for pattern search (I/F to RX Path/EXTR)
  wire	       		cs_fifo_rd_en;		//1
  wire		       	cs_fifo_empty;		//1
  wire 	[63: 0]   	ipcs_fifo_dout;		//64
  

//DFIFO_BRIDGE
	DFIFO_BRIDGE_TX DFIFO_BRIDGE_TX(

		.dclk			   (dclk),	        //i-1
		.lclk			   (lclk),	        //i-1
		.reset_			   (rst_),     	    //i-1   					
		  
        //// TX PATH AXIS Signals
        .s_axis_tvalid     (s_axis_tvalid), //i-1
        .s_axis_tready     (s_axis_tready), //o-1
        .s_axis_tdata      (s_axis_tdata),	//i-32
        .s_axis_tkeep      (s_axis_tkeep),  //i-4
        .s_axis_tlast      (s_axis_tlast),  //i-1
  
	    //Interface to LMAC TX FIFO
		.tx_mac_wr		   (tx_mac_wr),     //o-1
		.tx_mac_data	   (tx_mac_data),	//o-64
		.tx_mac_full	   (tx_mac_full),	//i-1
	    .tx_mac_usedw	   (tx_mac_usedw)   //i-13
			
	);


    DFIFO_BRIDGE_RX DFIFO_BRIDGE_RX(

		.dclk			   	(dclk),	        	//i-1
		.lclk			   	(lclk),				//i-1
		.reset_			   	(rst_),     	  	//i-1   					
		  
    	//// RX PATH AXIS Signals
    	.m_axis_tvalid		(m_axis_tvalid),  	//o-1
    	.m_axis_tready		(m_axis_tready),  	//i-1
    	.m_axis_tdata		(m_axis_tdata),   	//o-32
    	.m_axis_tkeep		(m_axis_tkeep),   	//o-4
    	.m_axis_tlast		(m_axis_tlast),   	//o-1
    	
		//Interface from LMAC RX FIFO
		.rx_mac_data		(rx_mac_data),		//i-64
		.rx_mac_empty		(rx_mac_empty),   	//i-1
		.rx_mac_rd			(rx_mac_rd),      	//o-1
		
		//for pattern search (I/F to RX Path/EXTR) // BYTE_COUNT
		.cs_fifo_rd_en		(cs_fifo_rd_en),	//o-1
		.cs_fifo_empty		(cs_fifo_empty),	//i-1
		.ipcs_fifo_dout		(ipcs_fifo_dout)	//i-64		

    );


//LEWIZ_ETH_MAC
    LMAC_SYNTH LMAC_SYNTH (

        .clk            	(lclk),             //i-1, clk
        .reset_         	(rst_),             //i-1, reset_

        // Interface to TX PATH
        .tx_mac_wr      	(tx_mac_wr),        // i-1
        .tx_mac_data    	(tx_mac_data),		// i-64
        .tx_mac_full    	(tx_mac_full),		// o-1
        .tx_mac_usedw   	(tx_mac_usedw),     // o-13
            
        // Interface to RX PATH
        .rx_mac_data    	(rx_mac_data),
        .rx_mac_ctrl    	(),
        .rx_mac_empty   	(rx_mac_empty),
        .rx_mac_rd      	(rx_mac_rd),

        //for pattern search (I/F to RX Path/EXTR)
        .cs_fifo_rd_en  	(cs_fifo_rd_en),	//i-1
        .cs_fifo_empty  	(cs_fifo_empty),	//o-1

        .ipcs_fifo_dout 	(ipcs_fifo_dout),		

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

        .xauiA_linkup       (),					// to LED on board 
            
        // From central decoder
	    .host_addr_reg		(16'h0),
	    .SYS_ADDR			(4'h1),
                
        // From mac_register
	    .fail_over			(1'b0),
	    .fmac_ctrl			(32'h00000808),
	    .fmac_ctrl1			(32'h000005ee),
	
	    .fmac_rxd_en		(1'b1),
	
	    .mac_pause_value	(32'hffff0000),			// [31:16] = tx_pause_value to send a pause frame, [15:0] = rx_pause_value (not implement)
	    //.mac_addr0		(48'h001232004eaf),		// mac_addr to check in non-promiscuous mode
	    //.mac_addr0		(48'h000a35000102),		// mac_addr to check in non-promiscuous mode - xilinx mac
	    .mac_addr0		    (48'h001232ffffff),		// mac_addr to check in non-promiscuous mode - lewiz mac
	
	    .reg_rd_start		(1'b0),
	
	    .reg_rd_done_out	(),		
	
	    .FMAC_REGDOUT		(),
	    .FIFO_OV_IPEND  	(),
	    .fmac_speed			(fmac_speed)
    );       


endmodule
