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

module DFIFO_BRIDGE_TX(

    input               dclk,           //i-1, 50MHz DMA CLK
    input               lclk,           //i-1, 125MHz LMAC CLK
	input               reset_,         //i-1   					
		  
    //// TX PATH AXIS Signals
    input               s_axis_tvalid,  //i-1
    output  reg         s_axis_tready,  //o-1
    input       [31:0]  s_axis_tdata,   //i-32
    input       [ 3:0]  s_axis_tkeep,   //i-4
    input               s_axis_tlast,   //i-1
  
	//Interface to LMAC TX FIFO
	output  reg         tx_mac_wr,      //o-1
	output  reg [63:0]  tx_mac_data,	//o-64
	input               tx_mac_full,	//i-1
	input       [12:0]  tx_mac_usedw    //i-13
		
);


	reg             tx_bcnt_wrreq;
	reg     [63:0]  tx_data;
	reg             tx_wrreq;
	reg     [15:0]  tx_bcnt;
	
	wire            tx_full;
	wire    [ 7:0]  tx_wr_data_count;
	wire    [ 7:0]  tx_rd_data_count;
	reg             rx_rdreq;
	wire    [63:0]  rx_dout;
	wire            rx_empty;
	
	wire            tx_bcnt_full;
	reg             rx_bcnt_rdreq;
	wire    [15:0]  rx_bcnt_out;
	wire            rx_bcnt_empty;
			
    reg             byte_lo;
    reg     [15:0]  tx_fifo_bcnt;

    //State Machine for TX_PATH
	reg		[3:0] 	tx_wr_state;
	
	wire			tx_wr_idle_st;
	wire			tx_wr_fifo_st;
	wire			tx_wr_bcnt_st;
	wire			tx_wr_done_st;
		
	parameter [3:0]       
			TX_WR_IDLE		= 	4'h1,  
			TX_WR_FIFO	    = 	4'h2, 
			TX_WR_BCNT	    = 	4'h4,		
			TX_WR_DONE		= 	4'h8;    
		
	assign	tx_wr_idle_st      = 	tx_wr_state[0];   
	assign  tx_wr_fifo_st      = 	tx_wr_state[1];             
	assign	tx_wr_bcnt_st      = 	tx_wr_state[2];   
	assign	tx_wr_done_st      = 	tx_wr_state[3];
	
	//synopsys translate_off                                  
	reg [64*8-1:0] ascii_tx_wr_state;                          
	                                                          
	always@(tx_wr_state)                                       
	begin                                                     
		case(tx_wr_state)                                         
	    TX_WR_IDLE		:  	ascii_tx_wr_state = "TX_WR_IDLE";        
		TX_WR_FIFO	    :  	ascii_tx_wr_state = "TX_WR_FIFO";          
		TX_WR_BCNT		:  	ascii_tx_wr_state = "TX_WR_BCNT";            
		TX_WR_DONE		:   ascii_tx_wr_state = "TX_WR_DONE";
		endcase                                                  
	end      
	//synopsys translate_on    
	
	
	always @ (posedge dclk) begin
		if(!reset_) begin
			tx_wr_state		    <= TX_WR_IDLE;
			s_axis_tready       <= 1'b0;
			byte_lo             <= 1'b1;
			tx_fifo_bcnt        <= 16'h0;
			tx_bcnt_wrreq       <= 1'b0;
			tx_data             <= 64'h0;
			tx_wrreq            <= 1'b0;
			tx_bcnt             <= 16'h0;
		end
		else begin
			if (tx_wr_idle_st) begin
                if ((tx_wr_data_count <= 8'h80) & !tx_full & !tx_bcnt_full) begin
                    tx_wr_state     <= TX_WR_FIFO;					            
                    s_axis_tready   <= 1'b1;	
                end
                else begin
                    tx_wr_state     <= TX_WR_IDLE;					            
                    s_axis_tready   <= 1'b0;	
                end
                byte_lo             <= 1'b1;
                tx_bcnt_wrreq       <= 1'b0;
                tx_fifo_bcnt        <= 16'h0;
                tx_data             <= 64'h0;
                tx_wrreq            <= 1'b0;
                tx_bcnt             <= 16'h0;
            end
			else if (tx_wr_fifo_st) begin
                tx_wr_state         <= (s_axis_tlast)?  TX_WR_BCNT   :   TX_WR_FIFO;
                s_axis_tready       <= (s_axis_tlast)?  1'b0   :   1'b1;
                if (s_axis_tvalid) begin
                    if (byte_lo == 1'b1) begin
                        tx_data     <= {32'h0, s_axis_tdata};
                        tx_wrreq    <= (s_axis_tlast)?  1'b1    :   1'b0;
                        byte_lo     <= 1'b0;
                    end
                    else begin
                        tx_data     <= {s_axis_tdata, tx_data[31:0]};
                        tx_wrreq    <= 1'b1;
                        byte_lo     <= 1'b1;
                    end
                    if (!s_axis_tlast) begin
                        tx_fifo_bcnt    <= (tx_fifo_bcnt + 4'h4);
                    end
                    else begin
                        case(s_axis_tkeep)
                            4'hF:   tx_fifo_bcnt    <= (tx_fifo_bcnt + 4'h4);
                            4'h7:   tx_fifo_bcnt    <= (tx_fifo_bcnt + 4'h3);
                            4'h3:   tx_fifo_bcnt    <= (tx_fifo_bcnt + 4'h2);
                            4'h1:   tx_fifo_bcnt    <= (tx_fifo_bcnt + 4'h1);
                            default: ;
                        endcase
                    end
                end
			end											
			else if (tx_wr_bcnt_st) begin
                tx_wr_state         <= TX_WR_DONE;	
                tx_wrreq            <= 1'b0;
                tx_bcnt             <= tx_fifo_bcnt;
                tx_bcnt_wrreq       <= 1'b1;
			end			 
			else begin
                tx_wr_state         <= TX_WR_IDLE;	
                tx_bcnt_wrreq       <= 1'b0;
			end		 
        end
	end
	
	
	TX_DFIFO TX_DFIFO_256x64
	(
		.rst	(!reset_),		
		
		.wr_clk	(dclk),			    // Clk to write data
		.wr_en	(tx_wrreq),	      	// write enable                                                
		.din	(tx_data),		  	// write data                                                 
		.full	(tx_full),	      	// indicates fifo is full or not (To avoid overiding)           	
		
		.wr_data_count(tx_wr_data_count),	// wrusedw -number of locations filled in fifo
		.rd_data_count(tx_rd_data_count),	// wrusedw -number of locations filled in fifo		
		
		.rd_clk	(lclk),			    // Clk to write data
		.rd_en	(rx_rdreq),	     	// i-1, read enable of data FIFO                                    
		.dout	(rx_dout),		    // Dataout of data FIFO                              
		.empty	(rx_empty)	    	// indicates fifo is empty or not (to avoid underflow)      
	);
	
	TX_DFIFO_BCNT TX_DFIFO_BCNT_16x16
	(
		.rst	(!reset_),		
		
		.wr_clk	(dclk),			    // Clk to write data
		.wr_en	(tx_bcnt_wrreq),	// write enable                                                
		.din	(tx_bcnt),		  	// write data                                                 
		.full	(tx_bcnt_full),	    // indicates fifo is full or not (To avoid overiding)           	
		
		.rd_clk	(lclk),			    // Clk to write data
		.rd_en	(rx_bcnt_rdreq),	// i-1, read enable of data FIFO                                    
		.dout	(rx_bcnt_out),		// Dataout of data FIFO                              
		.empty	(rx_bcnt_empty)	    // indicates fifo is empty or not (to avoid underflow)      
	);

	
	reg     [15:0]  rd_bcnt_reg;
	reg             first_fifo_data;
	
    //State Machine for TX_PATH
	reg		[3:0] 	tx_rd_state;
	
	wire			tx_rd_idle_st;
	wire			tx_rd_bcnt_st;
	wire			tx_rd_fifo_st;
	wire			tx_rd_done_st;
		
	parameter [3:0]       
			TX_RD_IDLE		= 	4'h1,  
			TX_RD_BCNT	    = 	4'h2,		
			TX_RD_FIFO	    = 	4'h4, 
			TX_RD_DONE		= 	4'h8;    
		
	assign	tx_rd_idle_st      = 	tx_rd_state[0];   
	assign	tx_rd_bcnt_st      = 	tx_rd_state[1];   
	assign  tx_rd_fifo_st      = 	tx_rd_state[2];             
	assign	tx_rd_done_st      = 	tx_rd_state[3];
	
	//synopsys translate_off                                  
	reg [64*8-1:0] ascii_tx_rd_state;                          
	                                                          
	always@(tx_rd_state)                                       
	begin                                                     
		case(tx_rd_state)                                         
	    TX_RD_IDLE		:  	ascii_tx_rd_state = "TX_RD_IDLE";        
		TX_RD_BCNT		:  	ascii_tx_rd_state = "TX_RD_BCNT";            
		TX_RD_FIFO	    :  	ascii_tx_rd_state = "TX_RD_FIFO";          
		TX_RD_DONE		:   ascii_tx_rd_state = "TX_RD_DONE";
		endcase                                                  
	end      
	//synopsys translate_on    
	
	
	always @ (posedge lclk) begin
		if(!reset_) begin
                tx_rd_state		<= TX_RD_IDLE;
                rx_bcnt_rdreq   <= 1'b0;
                tx_mac_wr       <= 1'b0;
                first_fifo_data <= 1'b0;
                rx_rdreq        <= 1'b0;
                tx_mac_data     <= 64'h0;
                rd_bcnt_reg     <= 16'h0;
		end
		else begin
			if (tx_rd_idle_st) begin
                tx_rd_state     <= ((tx_mac_usedw <= 13'h300) & !tx_full & !rx_bcnt_empty)?  TX_RD_BCNT  :   TX_RD_IDLE;					            
                rx_bcnt_rdreq   <= ((tx_mac_usedw <= 13'h300) & !tx_full & !rx_bcnt_empty)?  1'b1  :   1'b0;	
                first_fifo_data <= 1'b0;
                rx_rdreq        <= 1'b0;
                rd_bcnt_reg     <= 16'h0;
                tx_mac_wr       <= 1'b0;
            end
			else if (tx_rd_bcnt_st) begin
                rx_bcnt_rdreq   <= 1'b0;					            
                tx_rd_state     <= TX_RD_FIFO;                
                first_fifo_data <= 1'b1;
                rx_rdreq        <= 1'b1;
			end											
			else if (tx_rd_fifo_st) begin
                tx_rd_state		<= (!first_fifo_data & (rd_bcnt_reg <= 16'h8))? TX_RD_DONE  :   TX_RD_FIFO;
                first_fifo_data <= 1'b0;
                rx_rdreq        <= (!first_fifo_data & (rd_bcnt_reg <= 16'h10))? 1'b0    :   1'b1;
                tx_mac_data     <= (first_fifo_data)?  {48'h0, rx_bcnt_out} :   rx_dout;
                tx_mac_wr       <= 1'b1;
                rd_bcnt_reg     <= (first_fifo_data)?  rx_bcnt_out  :
                                        (rd_bcnt_reg <= 16'h8)?    16'h0    :   (rd_bcnt_reg - 4'h8);
			end			 
			else begin
                tx_rd_state		<= TX_RD_IDLE;
                tx_mac_wr       <= 1'b0;
                rx_rdreq        <= 1'b0;
			end		 
        end
	end

	
endmodule
