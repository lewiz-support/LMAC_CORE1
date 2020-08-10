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
module fmac2fib_rxctrl(
	clk_fib,							//i-1	clock signal at FMAC frequency
	reset_,								//i-1	global reset signal 	

//Signals to Read FIFOs
	wren_rf,							//o-1	write enable of data FIFO
	wren_rcf,							//o-1	write enable of wrcnt FIFO
	datain_rf,							//o-64	Datain of data FIFO	 
	datain_rcf,							//o-32	Datain of wrcnt FIFO
	
//Signals from Read FIFOs	
	wrempty_rf, 						//i-1	Empty signal of data FIFO	
	wrempty_rcf,						//i-1	Empty signal of rdcnt FIFO
	
	
//Signals from FMAC
	fib_rx_mac_data_empty,				//i-1 	 signal from FMAC saying its FIFO is empty
	fib_rx_mac_pkt_data,				//i-64 	 data signal of FMAC module
    fib_rx_mac_ipcs_empty,  			//i-1 	 signal from IPCS FIFO in FMAC its empty
    fib_rx_mac_ipcs_data,				//i-64 	 data signal of IPCS FIFO from FMAC module
    
//Signals to FMAC
	//fib_rx_mac_rdcycle,				//o-1 	 read cycle signal
	fib_rx_mac_rd, 						//o-1 	 read signal 
	fib_rx_mac_ipcs_rd, 				//o-1 	 read signal 
	
//TEST signal
	test 								//o-1 	debug	
);


parameter 	DATA_WIDTH = 64;
parameter 	BCNT_WIDTH = 32;


input  										clk_fib; 					// clock running at 125MHz
input  										reset_;

//Signals to Read FIFOs
output	reg	             					wren_rf;					//o-1	write enable of data FIFO
output	reg	              					wren_rcf;					//o-1	write enable of wrcnt FIFO
output	    [DATA_WIDTH - 1:0]  			datain_rf;					//o-64	Datain of data FIFO	 
output	reg	[BCNT_WIDTH - 1:0]				datain_rcf;					//o-32	Datain of wrcnt FIFO
	
//Signals from Read FIFOs	
input										wrempty_rf; 				//i-1	Empty signal of data FIFO	
input										wrempty_rcf;				//i-1	Empty signal of rdcnt FIFO
	
	
//Signals from FMAC
input		             					fib_rx_mac_data_empty;		//i-1 	 signal from FMAC saying its Data FIFO is empty
input [DATA_WIDTH - 1:0]					fib_rx_mac_pkt_data;		//i-64 	 data signal of FMAC module
input		             					fib_rx_mac_ipcs_empty;		//i-1 	 signal from IPCS FIFO in FMAC its empty
input [DATA_WIDTH - 1:0]					fib_rx_mac_ipcs_data;		//i-64 	 data signal of IPCS FIFO from FMAC module

//Signals to FMAC
//output reg								fib_rx_mac_rdcycle;			//o-1 	 read cycle signal
output reg 				 					fib_rx_mac_rd; 				//o-1 	 read signal for FMAC data 
output reg  								fib_rx_mac_ipcs_rd; 		//o-1 	 read signal for IPCS data 

//TEST signal
output 										test ;						//o-1 	debug


	reg								        first_data_st;
	reg			[15:0]					    bcnt;

	
	parameter [3:0] 
	AR_IDLE		= 	4'h1,	//idle state
	AR_READCNT	= 	4'h2, 	//read rdcount state
	AR_RDDATA	= 	4'h4,	//read data state
	AR_DONE		= 	4'h8	//done  state
	;
					  
	wire 						ar_idle_st;
	wire 						ar_readcnt_st;
	wire 						ar_rddata_st;
	wire 						ar_done_st;
		        				
	reg 	[3:0] 				ar_state;
	
	assign ar_idle_st    	= 	ar_state[0];
	assign ar_readcnt_st 	= 	ar_state[1];
	assign ar_rddata_st  	= 	ar_state[2];
	assign ar_done_st    	= 	ar_state[3]; 	

	assign			test			=	1'b0; 
	
	assign          datain_rf       =   fib_rx_mac_pkt_data;

    always @(posedge clk_fib) begin
        if (!reset_ ) begin
            ar_state                    <= AR_IDLE;
            
            fib_rx_mac_ipcs_rd          <= 1'b0;
            fib_rx_mac_rd               <= 1'b0;
            
            wren_rf                     <= 1'b0;
            wren_rcf                    <= 1'b0;
            datain_rcf                  <= 32'h0;
            
            first_data_st               <= 1'b0;
            bcnt                        <= 16'h0;
        end
        else begin
            if (ar_idle_st) begin
                //initialize in IDLE
                ar_state                <= (wrempty_rf & wrempty_rcf & !fib_rx_mac_ipcs_empty)?	AR_READCNT	:	AR_IDLE;
            	
                fib_rx_mac_ipcs_rd      <= (wrempty_rf & wrempty_rcf & !fib_rx_mac_ipcs_empty);	
                fib_rx_mac_rd           <= 1'b0;
            
                wren_rf                 <= 1'b0;
                wren_rcf                <= 1'b0;
                datain_rcf              <= 32'h0;
                
                first_data_st           <= 1'b0;
                bcnt                    <= 16'h0;
            end
            else if (ar_readcnt_st) begin
                //AR_READCNT: read BCNT from BCNT_FIFO
                ar_state                <= AR_RDDATA;
                
                fib_rx_mac_ipcs_rd      <= 1'b0;
                
                first_data_st           <= 1'b1;
            end
            else if (ar_rddata_st) begin
                //AR_RDDATA
                ar_state                <= (!first_data_st & !(|bcnt))?  AR_DONE :   AR_RDDATA;
                
                first_data_st           <= 1'b0;
                
                datain_rcf              <= (first_data_st)?  {fib_rx_mac_ipcs_data[63:48], 16'h0} :   datain_rcf;
                
                bcnt                    <= (first_data_st)?  fib_rx_mac_ipcs_data[63:48] :
                                                (fib_rx_mac_rd & (bcnt <= 4'h8))? 16'h0  :
                                                (fib_rx_mac_rd)? (bcnt - 4'h8)  :
                                                bcnt;
                
                fib_rx_mac_rd           <= (!first_data_st & (|bcnt[15:3]));
                
                wren_rf                 <= fib_rx_mac_rd;
                wren_rcf                <= (!first_data_st & !(|bcnt));
            end
            else if (ar_done_st) begin
                //AR_DONE
                ar_state                <= AR_IDLE;
                            
                fib_rx_mac_rd           <= 1'b0;
            
                wren_rf                 <= 1'b0;
                wren_rcf                <= 1'b0;
                
                bcnt                    <= 16'h0;
            end
        end
    end	
	
	//Simulation ONLY
    //synopsys translate_off
    reg [8*8-1:0] ascii_ar_state;
	
    always @ (ar_state) begin
        case(ar_state)
            AR_IDLE:        ascii_ar_state 	= 	"AR_IDLE";
            AR_READCNT:     ascii_ar_state 	= 	"AR_READCNT";
            AR_RDDATA:      ascii_ar_state 	= 	"AR_RDDATA";
            AR_DONE:        ascii_ar_state 	= 	"AR_DONE";
        endcase
    end
    //synopsys translate_on
		
endmodule 
