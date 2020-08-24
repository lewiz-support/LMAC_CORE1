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
module rxrregif_fifo4x8 # (parameter WIDTH = 8,         
								DEPTH = 4,
								PTR	= 2 )          

		  (
			input wire reset_,                                   //i,                                                        
			                                                                                                                 
			input  wire 				wrclk,                   //i, Clk for writing data                                   
			input  wire 				wren,                    //i, request to write                                       
			input  wire [WIDTH-1 : 0]	datain,                  //i, Data coming in                                           
			output wire					wrfull,                  //o, indicates fifo is full or not (To avoid overiding)     
			output wire 			 	wrempty,                 //o, indicates fifo is empty or not (to avoid underflow)      
			output wire	[PTR  : 0]		wrusedw,                 //o, number of slots currently in use for writting          
                                                                                                                             
                                                                                                                             
			                                                                                                                 
			input  wire 				rdclk,                   //i, Clk for reading data                                   
			input  wire 				rden,                    //i, Request to read from FIFO                              
			output wire [WIDTH-1 : 0]	dataout,                 //o, Data coming out                                        
			output wire 				rdfull,                  //o, indicates fifo is full or not (To avoid overiding)     
			output wire 				rdempty,            	 //o, indicates fifo is empty or not (to avoid underflow)    
			output wire [PTR  : 0] 		rdusedw,                 //o, number of slots currently in use for reading           
                                                                                                                             
			                                                                                                                 
			output wire 				dbg                      //o,                                                        
                                                                                                                                            
);                                                                                                                                          

wire [PTR+1  : 0] rd_data_count;    // number of slots currently in use for reading
wire [PTR+1  : 0] wr_data_count;    // number of slots currently in use for reading

assign rdusedw = {rd_data_count[2:0]};
assign wrusedw = {wr_data_count[2:0]};

assign wrempty = rdempty;
assign rdfull = wrfull;
assign dbg = 1'b0;
			
			
rxrregif_fifo4x8_ip 
						//# ( .WIDTH(WIDTH),         // considering 8X8 fifo
						//		.DEPTH(DEPTH),
						//		.PTR(PTR) )          // 2**8 = 256 (DEPTH)

rxrregif_fifo4x8_ip (
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