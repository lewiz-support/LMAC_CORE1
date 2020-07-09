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

// synopsys translate_off
`timescale 1ns/10ps
// synopsys translate_on

module DFIFO_BRIDGE_RX(

    input               dclk,           //i-1, 50MHz DMA CLK
    input               lclk,           //i-1, 125MHz LMAC CLK
	input               reset_,         //i-1   					
				
    //// RX PATH AXIS Signals
    output  reg         m_axis_tvalid,  //o-1
    input               m_axis_tready,  //i-1
    output  reg [31:0]  m_axis_tdata,   //o-32
    output  reg [ 3:0]  m_axis_tkeep,   //o-4
    output  reg         m_axis_tlast,   //o-1
    
	//Interface from LMAC RX FIFO
	input       [63:0]  rx_mac_data,	//i-64
	input               rx_mac_empty,   //i-1
	output  reg         rx_mac_rd,      //o-1
	
	//for pattern search (I/F to RX Path/EXTR) // BYTE_COUNT
	output  reg         cs_fifo_rd_en,	//o-1
	input               cs_fifo_empty,	//i-1
	input       [63:0]  ipcs_fifo_dout	//i-64		

);

	reg     [63:0]  tx_data_temp;
	reg     [31:0]  tx_data;
	reg             tx_wrreq;
	reg     [31:0]  tx_bcnt, tx_bcnt_temp;
	
	wire            tx_full;
	wire    [ 5:0]  tx_wr_data_count;
	wire    [ 5:0]  tx_rd_data_count;
	reg             rx_rdreq;
	wire    [31:0]  rx_dout;
	wire            rx_empty;
	
	reg     [15:0]  bcnt_data;
	reg             bcnt_wrreq;
	wire            bcnt_full;
	reg             bcnt_rdreq;
	wire    [15:0]  bcnt_dout;
	wire            bcnt_empty;
	

	reg             rx_bcnt_rdreq;

	reg             continue_data;
	
	reg     [31:0]  rd_bcnt_reg;
	reg             first_fifo_data;
	
    //State Machine for TX_PATH
	reg		[5:0] 	rx_rd_state;
	
	wire			rx_rd_idle_st;
	wire			rx_rd_bcnt_st;
	wire			rx_rd_fifo_st;
	wire			rx_rd_lsb_fifo_st;
	wire			rx_rd_msb_fifo_st;
	wire			rx_rd_done_st;
		
	parameter [5:0]       
			RX_RD_IDLE		= 	6'h1,  
			RX_RD_BCNT	    = 	6'h2,	
			RX_RD_FIFO		= 	6'h4,	
			RX_RD_LSB_FIFO	= 	6'h8, 
			RX_RD_MSB_FIFO	 = 	6'd16, 
			RX_RD_DONE		= 	6'd32;    
		
	assign	rx_rd_idle_st      = 	rx_rd_state[0];   
	assign	rx_rd_bcnt_st      = 	rx_rd_state[1];  
	assign  rx_rd_fifo_st  		= 	rx_rd_state[2]; 
	assign  rx_rd_lsb_fifo_st  = 	rx_rd_state[3];  
	assign  rx_rd_msb_fifo_st  = 	rx_rd_state[4];             
	assign	rx_rd_done_st      = 	rx_rd_state[5];
	
	//synopsys translate_off                                  
	reg [64*8-1:0] ascii_rx_rd_state;  
	                                                          
	always@(rx_rd_state)                                       
	begin                                                     
		case(rx_rd_state)                                         
	    RX_RD_IDLE		:  	ascii_rx_rd_state = "RX_RD_IDLE";        
		RX_RD_BCNT		:  	ascii_rx_rd_state = "RX_RD_BCNT"; 
		RX_RD_FIFO		:  	ascii_rx_rd_state = "RX_RD_FIFO";            
		RX_RD_LSB_FIFO	:  	ascii_rx_rd_state = "RX_RD_LSB_FIFO";       
		RX_RD_MSB_FIFO	:  	ascii_rx_rd_state = "RX_RD_MSB_FIFO";     
		RX_RD_DONE		:   ascii_rx_rd_state = "RX_RD_DONE";
		endcase                                                  
	end      
	//synopsys translate_on    
	
	
	always @ (posedge lclk) begin
		if(!reset_) begin
                rx_rd_state		<= RX_RD_IDLE;
                rx_bcnt_rdreq   <= 1'b0;
                first_fifo_data <= 1'b0;
               
                //rx_rdreq        <= 1'b0;
                tx_wrreq		<= 1'b0;
                bcnt_wrreq		<= 1'b0;
                rx_mac_rd		<= 1'b0;
                cs_fifo_rd_en	<= 1'b0;
                rd_bcnt_reg		<= 32'd0;
                tx_data_temp    <= 64'h0;
                tx_data         <= 32'h0;
                bcnt_data       <= 16'h0;
                continue_data   <=  1'b0;
                
		end
		else begin
			if (rx_rd_idle_st) begin
                rx_rd_state     <= ((!cs_fifo_empty & !tx_full & (tx_wr_data_count <= 8'd61)) | (continue_data & !tx_full & (tx_wr_data_count <= 8'd61)) )?  RX_RD_BCNT  :   RX_RD_IDLE;					            
                cs_fifo_rd_en   <= ((!cs_fifo_empty & !tx_full & (tx_wr_data_count <= 8'd61)) | (continue_data & !tx_full & (tx_wr_data_count <= 8'd61))) ?  1'b1  :   1'b0;	
                //rx_mac_rd       <= (tx_wr_data_count <= 8'd61 & !tx_full & !rx_mac_empty & !cs_fifo_empty) ?  1'b1 :   1'b0;                                        
                rx_mac_rd       <=  1'b0;
                //tx_data         <=   (continue_data & !tx_full & (tx_wr_data_count <= 8'd61))    ?   tx_data_temp[63:32] :   tx_data;
                //tx_wrreq 		<=   (continue_data & !tx_full & (tx_wr_data_count <= 8'd61))    ?   1'b1 :   1'b0;
                
            end
			else if (rx_rd_bcnt_st) begin
                
                cs_fifo_rd_en   	<=     1'b0;					            
                rx_rd_state     	<=     (tx_wr_data_count <= 8'd61 & !tx_full) ? RX_RD_FIFO : RX_RD_BCNT;
               	rx_mac_rd       	<=     (tx_wr_data_count <= 8'd61 & !tx_full & !rx_mac_empty) ?  1'b1 :   1'b0; 
               	tx_data             <=     (continue_data & !tx_full & (tx_wr_data_count <= 8'd61))    ?   tx_data_temp[31:0]:   tx_data;
                tx_wrreq 		    <=     (continue_data & !tx_full & (tx_wr_data_count <= 8'd61))    ?   1'b1 :   1'b0;
               //rx_mac_rd			<= 1'b0;                                 
			end											
			else if (rx_rd_fifo_st) begin
			    bcnt_data           <= bcnt_full ?   16'b0   :  continue_data    ?   bcnt_data :  {ipcs_fifo_dout[63:48]};
			    bcnt_wrreq          <= bcnt_full ?  1'b0     :  continue_data    ?   1'b0 :  1'b1;
                rd_bcnt_reg         <= continue_data    ?   rd_bcnt_reg :  {16'b0,ipcs_fifo_dout[63:48]};
                rx_mac_rd		    <= 1'b0; 
                rx_rd_state		    <= RX_RD_LSB_FIFO;
                tx_data             <=     (continue_data & !tx_full & (tx_wr_data_count <= 8'd61))    ?   tx_data_temp[63:32]:   tx_data;
                tx_wrreq 		    <=     (continue_data & !tx_full & (tx_wr_data_count <= 8'd61))    ?   1'b1 :   1'b0;
            end	
			else if (rx_rd_lsb_fifo_st) begin  
                rd_bcnt_reg     <= (rd_bcnt_reg <= 32'h4)?    32'h0    :   (rd_bcnt_reg - 4'h4);
                bcnt_wrreq      <= 1'b0;
                //rx_rd_state		<= ((rd_bcnt_reg < 32'h4) | tx_full)? RX_RD_DONE  :  RX_RD_MSB_FIFO;
                rx_rd_state		<=  (tx_wr_data_count > 8'd59) ?  RX_RD_IDLE :  ((rd_bcnt_reg < 32'h4) ? RX_RD_DONE  :  RX_RD_MSB_FIFO);
                continue_data   <=  (tx_wr_data_count > 8'd59) & (rd_bcnt_reg > 4) ?   1'b1: 1'b0;
                tx_wrreq 		<= ((rd_bcnt_reg == 32'h0) | tx_wr_data_count > 8'd59) ? 1'b0 : 1'b1;
                tx_data_temp	<= (rd_bcnt_reg > 32'h0) ? rx_mac_data : 64'b0;
                tx_data			<= (rd_bcnt_reg > 32'h0) ? rx_mac_data[31:0] : 32'b0;
                rx_mac_rd		<= ((rd_bcnt_reg <= 32'h8) | (tx_wr_data_count > 8'd59))?    1'b0    :1'b1;
			end	
			else if (rx_rd_msb_fifo_st) begin
                //rx_rd_state		<= (tx_full)? RX_RD_IDLE  :   RX_RD_LSB_FIFO;
                //continue_data   <=  tx_full & (rd_bcnt_reg > 4) ?   1'b1: 1'b0;
                rd_bcnt_reg     <= (rd_bcnt_reg < 32'h4)?    32'h0    :   (rd_bcnt_reg - 4'h4);
               	rx_rd_state		<= (rd_bcnt_reg == 16'd0) ? RX_RD_DONE : RX_RD_LSB_FIFO;
                tx_wrreq 		<= ((tx_wr_data_count > 8'd60) |  (rd_bcnt_reg == 16'd0))? 1'b0 : 1'b1;
                tx_data			<= ((tx_wr_data_count > 8'd60) |  (rd_bcnt_reg == 16'd0))? 32'b0: tx_data_temp[63:32];
                rx_mac_rd		<= 1'b0;
			end		 
			else begin
                rx_rd_state		<= RX_RD_IDLE;
                rx_mac_rd       <= 1'b0;
                tx_wrreq 		<= 1'b0;
                continue_data   <=  1'b0;
			end		 
        end
	end      
	//synopsys translate_on   
	
RX_DFIFO RX_DFIFO_32x64
	(
		.rst	(!reset_),		
		
		.wr_clk	(lclk),			    		// Clk to write data
		.wr_en	(tx_wrreq),	      			// write enable                                                
		.din	(tx_data),		  			// write data                                                 
		.full	(tx_full),	      			// indicates fifo is full or not (To avoid overiding)           	
		
		.wr_data_count(tx_wr_data_count),	// wrusedw -number of locations filled in fifo
		.rd_data_count(tx_rd_data_count),	// wrusedw -number of locations filled in fifo		
		
		.rd_clk	(dclk),			    		// Clk to read data
		.rd_en	(rx_rdreq),	     			// i-1, read enable of data FIFO                                    
		.dout	(rx_dout),		    		// Dataout of data FIFO                              
		.empty	(rx_empty)	    			// indicates fifo is empty or not (to avoid underflow)      
	);
	
RX_DFIFO_BCNT RX_DFIFO_BCNT_16x16
	(
		.rst	(!reset_),		
		
		.wr_clk	(lclk),			    		// Clk to write data
		.wr_en	(bcnt_wrreq),	      			// write enable                                                
		.din	(bcnt_data),		  			// write data                                                 
		.full	(bcnt_full),	      			// indicates fifo is full or not (To avoid overiding)           	
		
		.rd_clk	(dclk),			    		// Clk to read data
		.rd_en	(bcnt_rdreq),	     			// i-1, read enable of data FIFO                                    
		.dout	(bcnt_dout),		    		// Dataout of data FIFO                              
		.empty	(bcnt_empty)	    			// indicates fifo is empty or not (to avoid underflow)      
	);

    //State Machine for TX_PATH
	reg		[5:0] 	rx_wr_state;
	
	wire			rx_wr_idle_st;
	wire            rx_read_bcnt_st;
	wire			rx_wr_bcnt_st;
	wire			rx_wr_fifo_st;
	wire			rx_wr_done_st;
	wire			rx_wr_data_st;
	
	reg flag;
		
	parameter [6:0]       
			RX_WR_IDLE		= 	6'h1,
			RX_READ_BCNT   =   6'h2,
			RX_WR_BCNT	    = 	6'h4,
			RX_WR_DATA		=	6'd8,		
			RX_WR_FIFO		= 	6'd16, 
			RX_WR_DONE		= 	6'd32;    
		
	assign	rx_wr_idle_st      	= 	rx_wr_state[0];   
	assign	rx_read_bcnt_st    = 	rx_wr_state[1];   
	assign	rx_wr_bcnt_st      	= 	rx_wr_state[2];   
	assign	rx_wr_data_st      	= 	rx_wr_state[3];   
	assign  rx_wr_fifo_st  		= 	rx_wr_state[4];  
	assign	rx_wr_done_st     	= 	rx_wr_state[5];
	
	//synopsys translate_off                                  
	reg [64*8-1:0] ascii_rx_wr_state;                          
	                                                          
	always@(rx_wr_state)                                       
	begin                                                     
		case(rx_wr_state)                                         
	    RX_WR_IDLE		:  	ascii_rx_wr_state = "RX_WR_IDLE"; 
	    RX_READ_BCNT    :  	ascii_rx_wr_state = "RX_READ_BCNT"; 
		RX_WR_BCNT		:  	ascii_rx_wr_state = "RX_WR_BCNT"; 
		RX_WR_DATA		:  	ascii_rx_wr_state = "RX_WR_DATA";            
		RX_WR_FIFO		:  	ascii_rx_wr_state = "RX_WR_FIFO";       
		RX_WR_DONE		:   ascii_rx_wr_state = "RX_WR_DONE";
		endcase                                                  
	end      
	//synopsys translate_on    
	
	
	always @ (posedge dclk) begin
		if(!reset_) begin
                rx_wr_state			<= RX_WR_IDLE;
                rx_rdreq   			<= 	1'b0;
                bcnt_rdreq   		<= 	1'b0;
                tx_bcnt_temp        <=  32'b0;
                m_axis_tvalid		<=	1'b0;
                m_axis_tdata        <=	32'b0;
                m_axis_tkeep        <=	1'b0;
                m_axis_tlast        <= 	1'b0; 
                flag                <=  1'b0;
                tx_bcnt 			<=  32'b0;   
           
		end
		else begin
			if (rx_wr_idle_st) begin
                //rx_wr_state     	<= ((bcnt_empty & rx_empty) | !m_axis_tready)? RX_WR_IDLE : RX_WR_BCNT;	
                rx_wr_state     	<= ((bcnt_empty & rx_empty) | !m_axis_tready)? RX_WR_IDLE : RX_READ_BCNT;	
                bcnt_rdreq   		<= (!bcnt_empty & m_axis_tready) ?  1'b1  :   1'b0; 
                //rx_rdreq   			<= (!rx_empty & m_axis_tready) ?  1'b1  :   1'b0; 
                //tx_bcnt             <=  flag ? tx_bcnt : (!rx_empty & m_axis_tready) ? tx_bcnt_temp - 4 : 32'b0;
                //tx_bcnt             <=  flag ? tx_bcnt : 32'b0;
            end
            else if (rx_read_bcnt_st) begin
                rx_rdreq   			<= (!rx_empty & m_axis_tready) ?  1'b1  :   1'b0; 
                tx_bcnt             <=  flag ? tx_bcnt : 32'b0;
                //tx_bcnt_temp        <=  {16'h0,bcnt_data};
                rx_wr_state     	<=  RX_WR_BCNT;
                bcnt_rdreq          <=  1'b0;
            end
			else if (rx_wr_bcnt_st) begin
				rx_wr_state			<=	(!m_axis_tready)? RX_WR_BCNT: RX_WR_DATA;
				m_axis_tdata		<=	(!flag)? 32'b0: rx_dout;
				m_axis_tvalid       <=  (!flag)? 1'b0: 1'b1;
				tx_bcnt    			<=  flag    ? (tx_bcnt - 4'd4): {16'h0,bcnt_dout};
				//tx_bcnt    			<=  (tx_bcnt_temp - 4'd4);
				if (flag) begin
                    case(tx_bcnt)
                     //4'h4:   m_axis_tkeep    <= 4'hF;
                     4'h3:   m_axis_tkeep    <= 4'h7;
                     4'h2:   m_axis_tkeep    <= 4'h3;
                     4'h1:   m_axis_tkeep    <= 4'h1;
                     4'h0:   m_axis_tkeep    <= 4'h0;
                     default:m_axis_tkeep    <= 4'hF; 
                    endcase
                end
                else begin
                    m_axis_tkeep <= 4'h0;
                end
				
			end
			else if (rx_wr_data_st) begin
                rx_wr_state     	<= (!rx_empty & !m_axis_tready) ? RX_WR_DONE : ((!rx_empty & m_axis_tready & (tx_bcnt > 4)) ? RX_WR_DATA : RX_WR_FIFO);
                tx_bcnt    			<= (tx_bcnt - 4'd4);
                flag                <=  (!rx_empty & !m_axis_tready) ? 1'b1: 1'b0;
                rx_rdreq        	<= (!rx_empty & m_axis_tready & (tx_bcnt > 8)) ?  1'b1 :   1'b0;     
                //m_axis_tdata		<=	m_axis_tready ? rx_dout : 32'b0;  
                m_axis_tdata		<=	rx_dout;  
                m_axis_tvalid		<= 	1'b1;   
                  case(tx_bcnt)
                     //4'h4:   m_axis_tkeep    <= 4'hF;
                     4'h3:   m_axis_tkeep    <= 4'h7;
                     4'h2:   m_axis_tkeep    <= 4'h3;
                     4'h1:   m_axis_tkeep    <= 4'h1;
                     4'h0:   m_axis_tkeep    <= 4'h0;
                     default:m_axis_tkeep    <= 4'hF; 
                    endcase
                m_axis_tlast		<=	(tx_bcnt > 4) ? 1'b0: 1'b1;                            
			end	
			else if (rx_wr_fifo_st) begin
                rx_wr_state     	<= RX_WR_DONE;
                rx_rdreq        	<= 1'b0;   
                m_axis_tdata		<= rx_dout;  
                m_axis_tvalid		<= 	1'b0; 
                m_axis_tlast        <= 	1'b0;   
                m_axis_tkeep		<=  4'b0;
                tx_bcnt             <=  32'b0;
                // case(tx_bcnt)
                //     4'h3:   m_axis_tkeep    <= 4'h07;
                //     4'h2:   m_axis_tkeep    <= 4'h03;
                //     4'h1:   m_axis_tkeep    <= 4'h01;
                //     4'h0:   m_axis_tkeep    <= 4'h00;
                //     default:m_axis_tkeep    <= 4'h00; 
                //endcase
			end											 
			else begin
			    //m_axis_tlast    <= 	1'b0; 
                rx_wr_state		<= RX_WR_IDLE;
               // rx_mac_rd       <= 1'b0;
                 m_axis_tdata	<= 32'b0;
                 m_axis_tvalid	<= 	1'b0;     
                 m_axis_tlast   <= 	1'b0;
                 m_axis_tkeep	<=  4'b0;      
                
                
			end		 
        end
	end
	
endmodule 
