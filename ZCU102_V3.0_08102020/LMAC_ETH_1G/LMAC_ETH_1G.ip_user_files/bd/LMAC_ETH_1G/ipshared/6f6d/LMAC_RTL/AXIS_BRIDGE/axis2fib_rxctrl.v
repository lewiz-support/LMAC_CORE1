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

module axis2fib_rxctrl (
	rx_mac_aclk,						//i-1	clock signal at AXIS frequency
	reset_,								//i-1	global reset signal 	

	//Signals to Read FIFOs
	rden_rf,							//o-1	read enable of data FIFO
	rden_rcf,							//o-1	read enable of rdcnt FIFO
		
	//Signals from Read FIFOs
	rdempty_rf, 						//i-1	Empty signal of data FIFO	
	rdempty_rcf,						//i-1	Empty signal of rdcnt FIFO
	dataout_rf,							//i-64	Dataout of data FIFO	
	dataout_rcf,						//i-32	Dataout of rdcnt FIFO
	
	//Signals to AXIS Master
	rx_axis_mac_tdata,					//o-64 	data signal of bridge module
    rx_axis_mac_tvalid,  				//o-1 	signal to AXIS master indicating the data is valid
    rx_axis_mac_tlast,					//o-1 	signal to AXIS Master saying end of data
    rx_axis_mac_tuser,					//o-1 	error signal from FMAC
    rx_axis_filter_tuser,				//o-1 	error signal from filter of FMAC
    rx_axis_mac_tstrb,					//o-8 	Signal indicating valid bytes inside the qword transmitting
    rx_statistics_vector,				//o-27 	information about current frame 
    rx_statistics_valid,				//o-1	Signal indication the statistics vector is valid
    
	//Signals from AXIS Master
	rx_axis_mac_tready,					//i-1	signal indicating that AXIS master accepted data
	rx_axis_compatible_mode,    	    //i-1   signal to keep tready always one
	
	//TEST signal
	test 	                         	//o-1 	debug	
);


parameter 	DATA_WIDTH = 64;
parameter 	BCNT_WIDTH = 32;


    // PORT DECLARATIONS
    input							rx_mac_aclk;			//i-1	clock signal at AXIS frequency			
    input							reset_;					//i-1	global reset signal 	         
                                                
    //Signals to Read FIFOs
    output	reg 					rden_rf;				//o-1	read enable of data FIFO 	
    output	reg 					rden_rcf;				//o-1	read enable of rdcnt FIFO	
        
    //Signals from Read FIFOs
    input							rdempty_rf;	  			//i-1	Empty signal of data FIFO 
    input							rdempty_rcf;	    	//i-1	Empty signal of rdcnt FIFO
    input		[DATA_WIDTH - 1:0]	dataout_rf;				//i-64	Dataout of data FIFO	    
    input		[BCNT_WIDTH - 1:0]	dataout_rcf;			//i-32	Dataout of rdcnt FIFO    
        
    //Signals to AXIS Master
    output	reg [DATA_WIDTH - 1:0]	rx_axis_mac_tdata;		//o-64 	data signal of bridge module                              
    output  reg 					rx_axis_mac_tvalid;		//o-1 	signal to AXIS master indicating the data is valid         
    output  reg 					rx_axis_mac_tlast;		//o-1 	signal to AXIS Master saying end of data                   
    output  reg 					rx_axis_mac_tuser;		//o-1 	error signal from FMAC                                     
    output  reg 					rx_axis_filter_tuser;	//o-1 	error signal from filter of FMAC                           	
    output  reg [8 - 1: 0] 			rx_axis_mac_tstrb;      //o-8 	Signal indicating valid bytes inside the qword transmitting
    output  reg [28 - 1:0]  		rx_statistics_vector;   //o-27 	information about current frame                           
    output  reg  					rx_statistics_valid;	//o-1	Signal indication the statistics vector is valid            	
        
    //Signals from AXIS Master
    input							rx_axis_mac_tready;		 //i-1	signal indicating that AXIS master accepted data
    input       					rx_axis_compatible_mode; //i-1   signal to keep tready always one               
                                                                                                    
    //TEST signal
    output							test;					//o-1 	debug                                                       
								           	                                         		
	reg			[15:0]				rx_bcnt;
	reg			[15:0]				axis_bcnt;
	reg			[15:0]				axis_bcnt_reg;
	reg								first_data_st;
	reg								first_data_st_reg;
	reg			[3:0]				buf_count;
	reg			[3:0]				reg_count;
	reg			[3:0]				reg_count_dly;
    reg 							rden_rf_reg;
    
    reg			[3:0]				last_cnt;
    reg								last_cnt_pulse;
		
    reg			[63:0]				rx_axis_mac_tdata_reg1;
    reg			[63:0]				rx_axis_mac_tdata_reg2;
    reg			[63:0]				rx_axis_mac_tdata_reg3;
    reg			[63:0]				rx_axis_mac_tdata_reg4;
    reg			[63:0]				rx_axis_mac_tdata_reg5;
            
    
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
	

	assign test = 1'b0;
			
	                    
    always @(posedge rx_mac_aclk) begin
        if (!reset_ ) begin
            ar_state                    <= AR_IDLE;
            
            rx_axis_mac_tdata       	<= 64'h0;
            rx_axis_mac_tvalid      	<= 1'b0;
            rx_axis_mac_tlast       	<= 1'b0;
            rx_axis_mac_tuser       	<= 1'b0;
            rx_axis_filter_tuser    	<= 1'b0;
            rx_axis_mac_tstrb       	<= 8'h0;
            rx_statistics_vector    	<= 28'h0;
            rx_statistics_valid     	<= 1'b0;
                                    	
            rden_rcf					<= 1'b0;
            
            rx_bcnt						<= 16'h0;
            first_data_st				<= 1'b0;
            first_data_st_reg			<= 1'b0;
            buf_count					<= 4'h0;
            reg_count					<= 4'h0;
            reg_count_dly				<= 4'h0;
            rden_rf						<= 1'b0;            		            		
            rden_rf_reg					<= 1'b0;            		            		
            	
            rx_axis_mac_tdata_reg1		<= 64'h0;
            rx_axis_mac_tdata_reg2		<= 64'h0;
            rx_axis_mac_tdata_reg3		<= 64'h0;
            rx_axis_mac_tdata_reg4		<= 64'h0;
            rx_axis_mac_tdata_reg5		<= 64'h0;
            
   			last_cnt					<= 4'h0;
   			last_cnt_pulse				<= 1'b0;
   			
   			axis_bcnt                   <= 16'h0;
   			axis_bcnt_reg               <= 16'h0;
        end
        else begin
            if (ar_idle_st) begin
                //initialize in IDLE
                ar_state                <= (!rdempty_rf & !rdempty_rcf)?	AR_READCNT	:	AR_IDLE;
            	
                rx_axis_mac_tdata       <= 64'h0;
                rx_axis_mac_tvalid      <= 1'b0;
                rx_axis_mac_tlast       <= 1'b0;
                rx_axis_mac_tuser       <= 1'b0;
                rx_axis_filter_tuser    <= 1'b0;
                rx_axis_mac_tstrb       <= 8'h0;
                rx_statistics_vector    <= 28'h0;
                rx_statistics_valid     <= 1'b0;
                
	            rden_rcf				<= (!rdempty_rf & !rdempty_rcf);
	            
	            rx_bcnt					<= 16'h0;
            	first_data_st			<= 1'b0;
            	first_data_st_reg		<= 1'b0;
            	buf_count				<= 4'h0;
            	reg_count				<= 4'h0;
            	reg_count_dly			<= 4'h0;
            	rden_rf					<= 1'b0;
            	rden_rf_reg				<= 1'b0;
            	
                rx_axis_mac_tdata_reg1	<= 64'h0;
                rx_axis_mac_tdata_reg2	<= 64'h0;
                rx_axis_mac_tdata_reg3	<= 64'h0;
                rx_axis_mac_tdata_reg4	<= 64'h0;
                rx_axis_mac_tdata_reg5	<= 64'h0;
            
   				last_cnt				<= 4'h0;
   				last_cnt_pulse			<= 1'b0;

   				axis_bcnt               <= 16'h0;
                axis_bcnt_reg           <= 16'h0;
            end
            else if (ar_readcnt_st) begin
                //AR_READCNT: read BCNT from BCNT_FIFO
                ar_state                <= AR_RDDATA;
                
	            rden_rcf				<= 1'b0;
            	first_data_st			<= 1'b1;
            end
            else if (ar_rddata_st) begin
                //AR_RDDATA
                ar_state                <= (!first_data_st & rx_axis_mac_tvalid & rx_axis_mac_tready & rx_axis_mac_tlast)?	AR_DONE	:	AR_RDDATA;
                
   				last_cnt				<= (last_cnt_pulse)?	rx_bcnt	:	last_cnt;
   				last_cnt_pulse			<= ((rx_bcnt <= 16'h10) & (rx_bcnt > 16'h8));
                            
	            rx_bcnt					<= (first_data_st)?	dataout_rcf[31:16] : 
                                                (rden_rf & (rx_bcnt <= 4'h8))?  16'h0    :
                                                (rden_rf)?  (rx_bcnt - 4'h8)    :
                                                rx_bcnt;
	            
            	first_data_st			<= 1'b0;
            	first_data_st_reg		<= first_data_st;
            	
                buf_count				<= (first_data_st)?	4'h0	:
                								//((buf_count == 4'h5) & rx_axis_mac_tvalid & rx_axis_mac_tready)?	(buf_count - 1'b1)	:
                								//(rx_axis_mac_tvalid & rx_axis_mac_tready)?	buf_count	:
                								(buf_count < 4'h5)?	(buf_count + 1'b1)	:
                								buf_count;

            	rden_rf_reg				<= rden_rf;
            	
            	rden_rf					<= (first_data_st | (rx_bcnt == 16'h0))?	1'b0   :
                                                (buf_count < 4'h5)?	(|rx_bcnt)	:
                                                ((buf_count == 4'h5) & rx_axis_mac_tvalid & rx_axis_mac_tready)?	(|rx_bcnt)	:
            									1'b0;            		            		
            	
            	reg_count_dly			<= !(|reg_count)?  4'h0    :
                                                (!rx_axis_mac_tvalid & (reg_count_dly == 4'h1))?    4'h2    :
                                                (!rx_axis_mac_tvalid)?    4'h1    :
                                                (rx_axis_mac_tvalid & rx_axis_mac_tready & (reg_count_dly == 4'h5))?    4'h1    :
                                                (rx_axis_mac_tvalid & rx_axis_mac_tready)?    (reg_count_dly + 1'b1)    :
                                                reg_count_dly;
            	
            	reg_count				<= (rden_rf & (reg_count == 4'h5))?	4'h1	:
            									(rden_rf)?	(reg_count + 1'b1)	:
            									reg_count;
            									
                rx_axis_mac_tdata_reg1	<= (rden_rf_reg & (reg_count == 4'h1))?	dataout_rf	:	rx_axis_mac_tdata_reg1;
                rx_axis_mac_tdata_reg2	<= (rden_rf_reg & (reg_count == 4'h2))?	dataout_rf	:	rx_axis_mac_tdata_reg2;
                rx_axis_mac_tdata_reg3	<= (rden_rf_reg & (reg_count == 4'h3))?	dataout_rf	:	rx_axis_mac_tdata_reg3;
                rx_axis_mac_tdata_reg4	<= (rden_rf_reg & (reg_count == 4'h4))?	dataout_rf	:	rx_axis_mac_tdata_reg4;
                rx_axis_mac_tdata_reg5	<= (rden_rf_reg & (reg_count == 4'h5))?	dataout_rf	:	rx_axis_mac_tdata_reg5;
                
                rx_axis_mac_tvalid      <= (rx_axis_mac_tvalid & rx_axis_mac_tready & rx_axis_mac_tlast)?	1'b0	:
                								(|reg_count_dly)?	1'b1	:
                								rx_axis_mac_tvalid;
                								
   				rx_axis_mac_tlast		<= (rx_axis_mac_tvalid & rx_axis_mac_tready & rx_axis_mac_tlast)? 1'b0    :
                                                (rx_axis_mac_tlast)? 1'b1    :
                                                (rx_axis_mac_tvalid & rx_axis_mac_tready & (axis_bcnt >= axis_bcnt_reg))?  1'b1  :
                                                rx_axis_mac_tlast;
   				
   				axis_bcnt_reg           <= (first_data_st)?  (dataout_rcf[31:16] - 6'h10) :
                                                axis_bcnt_reg;
   				
   				axis_bcnt               <= (rx_axis_mac_tvalid & rx_axis_mac_tready)?    (axis_bcnt + 4'h8)  :
                                                axis_bcnt;
   												
   				case ({reg_count_dly, rx_axis_mac_tlast})
   					{4'd1, 1'b0} : 		rx_axis_mac_tdata	<=	((!rx_axis_mac_tvalid) | (rx_axis_mac_tvalid & rx_axis_mac_tready))?   rx_axis_mac_tdata_reg1  :   rx_axis_mac_tdata;
					{4'd2, 1'b0} :		rx_axis_mac_tdata	<=	(rx_axis_mac_tvalid & rx_axis_mac_tready)?   rx_axis_mac_tdata_reg2  :   rx_axis_mac_tdata;
					{4'd3, 1'b0} :		rx_axis_mac_tdata	<=	(rx_axis_mac_tvalid & rx_axis_mac_tready)?   rx_axis_mac_tdata_reg3  :   rx_axis_mac_tdata;
					{4'd4, 1'b0} :		rx_axis_mac_tdata	<=	(rx_axis_mac_tvalid & rx_axis_mac_tready)?   rx_axis_mac_tdata_reg4  :   rx_axis_mac_tdata;
					{4'd5, 1'b0} :		rx_axis_mac_tdata	<=	(rx_axis_mac_tvalid & rx_axis_mac_tready)?   rx_axis_mac_tdata_reg5  :   rx_axis_mac_tdata;
					default      :	    rx_axis_mac_tdata	<=	(rx_axis_mac_tvalid & rx_axis_mac_tready & rx_axis_mac_tlast)?   64'h0   :   rx_axis_mac_tdata;
                endcase
                
                rx_axis_mac_tstrb       <= (rx_axis_mac_tvalid & rx_axis_mac_tready & rx_axis_mac_tlast)?	8'h00	:
                                            (!rx_axis_mac_tvalid & (|reg_count_dly))?  8'hFF   :
                                            (rx_axis_mac_tvalid & rx_axis_mac_tready & (axis_bcnt >= axis_bcnt_reg) & (last_cnt == 4'h8))?	8'hFF	:
                                            (rx_axis_mac_tvalid & rx_axis_mac_tready & (axis_bcnt >= axis_bcnt_reg) & (last_cnt == 4'h7))?	8'h7F	:
                                            (rx_axis_mac_tvalid & rx_axis_mac_tready & (axis_bcnt >= axis_bcnt_reg) & (last_cnt == 4'h6))?	8'h3F	:
                                            (rx_axis_mac_tvalid & rx_axis_mac_tready & (axis_bcnt >= axis_bcnt_reg) & (last_cnt == 4'h5))?	8'h1F	:
                                            (rx_axis_mac_tvalid & rx_axis_mac_tready & (axis_bcnt >= axis_bcnt_reg) & (last_cnt == 4'h4))?	8'h0F	:
                                            (rx_axis_mac_tvalid & rx_axis_mac_tready & (axis_bcnt >= axis_bcnt_reg) & (last_cnt == 4'h3))?	8'h07	:
                                            (rx_axis_mac_tvalid & rx_axis_mac_tready & (axis_bcnt >= axis_bcnt_reg) & (last_cnt == 4'h2))?	8'h03	:
                                            (rx_axis_mac_tvalid & rx_axis_mac_tready & (axis_bcnt >= axis_bcnt_reg) & (last_cnt == 4'h1))?	8'h01	:
                                            rx_axis_mac_tstrb;                    
            end
            else if (ar_done_st) begin
                //AR_DONE
                ar_state                <= AR_IDLE;
                            
                rx_axis_mac_tdata       <= 64'h0;
                rx_axis_mac_tvalid      <= 1'b0;
                rx_axis_mac_tlast       <= 1'b0;
                rx_axis_mac_tstrb       <= 8'h0;
                
	            rx_bcnt					<= 16'h0;
	            buf_count				<= 4'h0;
	            reg_count				<= 4'h0;
	            reg_count_dly			<= 4'h0;
	            
            	rden_rf					<= 1'b0;            		            		
            	rden_rf_reg				<= 1'b0;            		            		
            	
                rx_axis_mac_tdata_reg1	<= 64'h0;
                rx_axis_mac_tdata_reg2	<= 64'h0;
                rx_axis_mac_tdata_reg3	<= 64'h0;
                rx_axis_mac_tdata_reg4	<= 64'h0;
                rx_axis_mac_tdata_reg5	<= 64'h0;
            
   				last_cnt				<= 4'h0;
   				last_cnt_pulse			<= 1'b0;
   				
                axis_bcnt               <= 16'h0;
                axis_bcnt_reg           <= 16'h0;
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
