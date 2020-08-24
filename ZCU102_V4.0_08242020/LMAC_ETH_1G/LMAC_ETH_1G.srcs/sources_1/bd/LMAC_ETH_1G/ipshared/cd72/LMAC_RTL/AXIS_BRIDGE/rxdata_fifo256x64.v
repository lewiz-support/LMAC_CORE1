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


`timescale 1ns / 1ps
module rxdata_fifo256x64 # (parameter WIDTH = 64,	// considering 8X8 fifo
								DEPTH = 256,
								PTR	= 8 )          	// 2**8 = 256 (DEPTH)

		  (
			input wire reset_,
			//=== Signals for WRITE

			input  wire 				wrclk,      // Clk for writing data                              
			input  wire 				wren,       // request to write                                     
			input  wire [WIDTH-1 : 0]	datain,     // Data coming in                                 
			output wire					wrfull,     // indicates fifo is full or not (To avoid overiding)
			output wire 			 	wrempty,    // 0- some data is present (atleast 1 data is present)                                            
			output wire	[PTR  : 0]		wrusedw,    // number of slots currently in use for writing                                                                                                         
                                                    

			//=== Signals for READ

			input  wire 				rdclk,      // Clk for reading data                                
			input  wire 				rden,       // Request to read from FIFO                           
			output wire [WIDTH-1 : 0]	dataout,    // Data coming out                                     
			output wire 				rdfull,     // 1-FIFO IS FULL (DATA AVAILABLE FOR READ is == DEPTH) 
			output wire 				rdempty,    // indicates fifo is empty or not (to avoid underflow)  
			output wire [PTR  : 0] 		rdusedw,	// number of slots currently in use for reading

			//=== Signals for TEST

			output wire dbg

);

wire [PTR-1  : 0] rd_data_count;    // number of slots currently in use for reading
wire [PTR-1  : 0] wr_data_count;    // number of slots currently in use for reading

assign rdusedw = {1'b0, rd_data_count};
assign wrusedw = {1'b0, wr_data_count};

assign wrempty = rdempty;
assign rdfull = wrfull;
assign dbg = 1'b0;
			
			
rxdata_fifo256x64_ip 
						//# ( .WIDTH(WIDTH),         // considering 8X8 fifo
						//		.DEPTH(DEPTH),
						//		.PTR(PTR) )          // 2**8 = 256 (DEPTH)

rxdata_fifo256x64_ip (
			.rst			(!reset_),		
			        		
			.wr_clk			(wrclk),			// Clk to write data
			.wr_en			(wren),	      		// write enable                                                
			.din			(datain),		  	// write data                                                 
			.full			(wrfull),	      	// indicates fifo is full or not (To avoid overiding)           	
			
			.wr_data_count	(wr_data_count),	// wrusedw -number of locations filled in fifo
			.rd_data_count	(rd_data_count),	// rdusedw -number of locations filled in fifo		
			
			.rd_clk			(rdclk),			// Clk to write data
			.rd_en			(rden),	     		// i-1, read enable of data FIFO                                    
			.dout			(dataout),		    // Dataout of data FIFO                              
			.empty			(rdempty)	    	// indicates fifo is empty or not (to avoid underflow)    
);			
			
	
endmodule



