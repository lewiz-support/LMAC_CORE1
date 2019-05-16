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


`timescale 1ns/1ps

module rx_pkt_gen3_8b(
	xaui_clk,                   //i   
	reset_,                     //i   
	                                  
	fmac_speed,                 //i   
	                                  
	data_out,                   //o-8 
	ctrl_out,                   //o-1 
	                                  
	rxd,                        //o-64
	rxc,                        //o-8 
	                                  
	tb_rx_pkt_gen_en,           //i   
	tb_rx_pkt_gen_addr_offset,	//i   
	tb_rx_pkt_gen_read_cnt,     //i   
	
	test                        //o
	);

  input xaui_clk;
  input reset_;
  
  input	[1:0]	fmac_speed;		//fmac_speed = 2'b00,	not used: reserved for 10Gig
                                //fmac_speed = 2'b01,	1000Mbps: 1Gig
                                //fmac_speed = 2'b10,	100Mbps
                                //fmac_speed = 2'b11,	10Mbps
  
                                                                                 
  output reg	[ 7:0]	data_out;
  output reg			ctrl_out;
  
  output reg	[63:0] 	rxd;
  output reg	[ 7:0]	rxc;
  
  output reg		 	test;				//o-1 debug
  

//=========== signals ===========

reg		reset_dly1_;
reg		reset_dly2_;


  input [10:0]  tb_rx_pkt_gen_read_cnt;		//# of qwds - 1 (if pkt is 7, provide as 6 here)
  input [63:0]  tb_rx_pkt_gen_addr_offset;	//start
  input 	  	tb_rx_pkt_gen_en;			//pulse
  

  reg [10:0]  tb_rx_pkt_gen_read_cnt_int;
  reg [63:0]  tb_rx_pkt_gen_addr_offset_int;
  reg		  tb_rx_pkt_gen_en_dly1;
  
  wire [63:0] d_out;
  wire [7:0] c_out;
  reg  [10:0] rx_pkt_gen_addr;
  
  reg		 	addr_incr;
  reg	[3:0]	cntr_100meg;
  reg	[7:0]	cntr_10meg;


  
parameter [10:0] MAX_RD_CNT = 180;			 //full rate mix 74 and 192 pkts

 
always @ (posedge xaui_clk)
	begin
		if (!reset_)
			begin
 			 	tb_rx_pkt_gen_read_cnt_int	 <= 11'h0;
 				tb_rx_pkt_gen_addr_offset_int <= 64'h0;
 				tb_rx_pkt_gen_en_dly1	  	 <= 1'b0;
 				
 				rx_pkt_gen_addr		<= 11'h0;
 				
           		reset_dly1_	<= 1'b0 ;
           		reset_dly2_	<= 1'b0 ;
           		
           		test		<= 1'b0;
             end //if
           
          else
           begin
           
           reset_dly1_	<= reset_ ;
           reset_dly2_	<= reset_dly1_ ;
           
           	//generate a start pulse
 		    tb_rx_pkt_gen_en_dly1 <= tb_rx_pkt_gen_en;
 		   
	        tb_rx_pkt_gen_read_cnt_int	<=
	        		//load
	        	tb_rx_pkt_gen_en ? tb_rx_pkt_gen_read_cnt :
	        		//keep
	        	tb_rx_pkt_gen_read_cnt_int; 
	        
	        tb_rx_pkt_gen_addr_offset_int	<= 
	        	//load
	        	tb_rx_pkt_gen_en ? tb_rx_pkt_gen_addr_offset :
	        	//keep
	        	tb_rx_pkt_gen_addr_offset_int;

	 		rx_pkt_gen_addr	<= 
	 				//load
	 				tb_rx_pkt_gen_en_dly1 ? tb_rx_pkt_gen_addr_offset_int :
	 				//reach limit, reloading
	 				//count up
	 				((rx_pkt_gen_addr <= (tb_rx_pkt_gen_addr_offset_int + tb_rx_pkt_gen_read_cnt_int)) & addr_incr) ? rx_pkt_gen_addr+1:	 				
	 				//hold			
	 				rx_pkt_gen_addr;
	        		
	       end
		
	end	
	
	

	
	//state machine to convert the 64 bit data to 8 bit.
		
parameter[8:0] 
	DAT_I  	= 9'h001 ,
	DAT_0	= 9'h002 ,
	DAT_1	= 9'h004 ,
	DAT_2	= 9'h008 ,
	DAT_3	= 9'h010 ,
	DAT_4	= 9'h020 ,
	DAT_5   = 9'h040 ,
	DAT_6   = 9'h080 ,
	DAT_7	= 9'h100 ;             

reg [8:0] gmii_state ;

			
always @ (posedge xaui_clk) begin

	if(!reset_)
		begin
		
			gmii_state		<=	DAT_I;
			data_out 		<=	8'h07;
			ctrl_out 		<=	1'b1;
			addr_incr		<=	1'b0;

			rxd				<=	d_out;
			rxc				<=	c_out;
			
			cntr_100meg		<=	4'b0;
			cntr_10meg		<=	8'b0;

		end
		
	else
		begin
		
			rxd				<=	d_out;
			rxc				<=	c_out;
			
			if (fmac_speed == 2'b10 && cntr_100meg == 4'd9)
				cntr_100meg	<=	4'b0;
				
			if (fmac_speed == 2'b11 && cntr_10meg == 8'd99)
				cntr_10meg	<=	8'b0;
		
			case(gmii_state)
			DAT_I: // Transmit Idle Set
			begin
				
				gmii_state	<= 	((c_out == 8'h01)|(c_out == 8'h1f))? DAT_0 : DAT_I;

				data_out 	<= 	8'h07;
				ctrl_out 	<= 	1'b1;
				
				addr_incr	<=	1'b0;
				
			end
			
			DAT_0:	// Transmit Byte 0
			begin
				
				if (fmac_speed == 2'b01)
					gmii_state 	<= 	DAT_1;
					
				else if (fmac_speed == 2'b10 && cntr_100meg == 4'd9)
					gmii_state 	<= 	DAT_1;
					
				else if (fmac_speed == 2'b11 && cntr_10meg == 8'd99)
					gmii_state 	<= 	DAT_1;
	
				if (fmac_speed == 2'b10 && cntr_100meg < 4'd9)
					cntr_100meg	<=	cntr_100meg	+	1'b1;
					
				else if (fmac_speed == 2'b11 && cntr_10meg < 8'd99)
					cntr_10meg	<=	cntr_10meg	+	1'b1;
				
				data_out 	<= 	rxd[7:0];
				ctrl_out 	<= 	rxc[0];
				
				addr_incr	<=	1'b0;
				
			end
			
			DAT_1:	// Transmit Byte 1
			begin
			
				if (fmac_speed == 2'b01)
					gmii_state 	<= 	DAT_2;
				
				else if (fmac_speed == 2'b10 && cntr_100meg == 4'd9)
					gmii_state 	<= 	DAT_2;

				else if (fmac_speed == 2'b11 && cntr_10meg == 8'd99)
					gmii_state 	<= 	DAT_2;
					
				if (fmac_speed == 2'b10 && cntr_100meg < 4'd9)
					cntr_100meg	<=	cntr_100meg	+	1'b1;
					
				else if (fmac_speed == 2'b11 && cntr_10meg < 8'd99)
					cntr_10meg	<=	cntr_10meg	+	1'b1;
				
				data_out 	<= 	rxd[15:8];
				ctrl_out 	<= 	rxc[1];
				
				addr_incr	<=	1'b0;
				
			end
			
			DAT_2:	// Transmit Byte 2
			begin
				
				if (fmac_speed == 2'b01)
					gmii_state 	<= 	DAT_3;
				
				else if (fmac_speed == 2'b10 && cntr_100meg == 4'd9)
					gmii_state 	<= 	DAT_3;
					
				else if (fmac_speed == 2'b11 && cntr_10meg == 8'd99)
					gmii_state 	<= 	DAT_3;
					
				if (fmac_speed == 2'b10 && cntr_100meg < 4'd9)
					cntr_100meg	<=	cntr_100meg	+	1'b1;
					
				else if (fmac_speed == 2'b11 && cntr_10meg < 8'd99)
					cntr_10meg	<=	cntr_10meg	+	1'b1;
				
				data_out 	<= 	rxd[23:16];
				ctrl_out 	<= 	rxc[2];
				
				addr_incr	<=	1'b0;
				
			end
			
			DAT_3:	// Transmit Byte 3
			begin
			
				if (fmac_speed == 2'b01)
					gmii_state 	<= 	DAT_4;
				
				else if (fmac_speed == 2'b10 && cntr_100meg == 4'd9)
					gmii_state 	<= 	DAT_4;
					
				else if (fmac_speed == 2'b11 && cntr_10meg == 8'd99)
					gmii_state 	<= 	DAT_4;
					
				if (fmac_speed == 2'b10 && cntr_100meg < 4'd9)
					cntr_100meg	<=	cntr_100meg	+	1'b1;
					
				else if (fmac_speed == 2'b11 && cntr_10meg < 8'd99)
					cntr_10meg	<=	cntr_10meg	+	1'b1;
				
				data_out 	<= 	rxd[31:24];
				ctrl_out 	<= 	rxc[3];
				
				if (fmac_speed == 2'b01)
					addr_incr	<=	1'b1;
					
				else
					addr_incr	<=	1'b0;	
				
			end
			
			DAT_4:	// Transmit Byte 4
			begin
			
				if (fmac_speed == 2'b01)
					gmii_state 	<= 	DAT_5;
				
				else if (fmac_speed == 2'b10 && cntr_100meg == 4'd9)
					gmii_state 	<= 	DAT_5;
					
				else if (fmac_speed == 2'b11 && cntr_10meg == 8'd99)
					gmii_state 	<= 	DAT_5;
					
				if (fmac_speed == 2'b10 && cntr_100meg < 4'd9)
					cntr_100meg	<=	cntr_100meg	+	1'b1;
					
				else if (fmac_speed == 2'b11 && cntr_10meg < 8'd99)
					cntr_10meg	<=	cntr_10meg	+	1'b1;
				
				data_out 	<= 	rxd[39:32];
				ctrl_out 	<= 	rxc[4];
				
				addr_incr	<=	1'b0;
				
			end
			
			DAT_5:	// Transmit Byte 5
			begin
			
				if (fmac_speed == 2'b01)
					gmii_state 	<= 	DAT_6;
				
				else if (fmac_speed == 2'b10 && cntr_100meg == 4'd9)
					gmii_state 	<= 	DAT_6;
					
				else if (fmac_speed == 2'b11 && cntr_10meg == 8'd99)
					gmii_state 	<= 	DAT_6;
					
				if (fmac_speed == 2'b10 && cntr_100meg < 4'd9)
					cntr_100meg	<=	cntr_100meg	+	1'b1;
					
				else if (fmac_speed == 2'b11 && cntr_10meg < 8'd99)
					cntr_10meg	<=	cntr_10meg	+	1'b1;
				
				data_out 	<= 	rxd[47:40];
				ctrl_out 	<= 	rxc[5];
				
				addr_incr	<=	1'b0;
				
			end
			
			DAT_6:	// Transmit Byte 6
			begin
			
				if (fmac_speed == 2'b01)
					gmii_state 	<= 	DAT_7;
				
				else if (fmac_speed == 2'b10 && cntr_100meg == 4'd9)
					gmii_state 	<= 	DAT_7;
					
				else if (fmac_speed == 2'b11 && cntr_10meg == 8'd99)
					gmii_state 	<= 	DAT_7;
					
				if (fmac_speed == 2'b10 && cntr_100meg < 4'd9)
					cntr_100meg	<=	cntr_100meg	+	1'b1;
					
				else if (fmac_speed == 2'b11 && cntr_10meg < 8'd99)
					cntr_10meg	<=	cntr_10meg	+	1'b1;
				
				data_out 	<= 	rxd[55:48];
				ctrl_out 	<= 	rxc[6];
				
				addr_incr	<=	1'b0;		
				
			end
			
			DAT_7:	// Transmit Byte 7
			begin
				
				if (fmac_speed == 2'b01)
					gmii_state 	<=	(rx_pkt_gen_addr <= (tb_rx_pkt_gen_addr_offset_int + tb_rx_pkt_gen_read_cnt_int))? DAT_0 : DAT_I;
				
				else if (fmac_speed == 2'b10 && cntr_100meg == 4'd9)
					gmii_state 	<=	(rx_pkt_gen_addr <= (tb_rx_pkt_gen_addr_offset_int + tb_rx_pkt_gen_read_cnt_int))? DAT_0 : DAT_I;
					
				else if (fmac_speed == 2'b11 && cntr_10meg == 8'd99)
					gmii_state 	<= 	(rx_pkt_gen_addr <= (tb_rx_pkt_gen_addr_offset_int + tb_rx_pkt_gen_read_cnt_int))? DAT_0 : DAT_I;;
					
				if (fmac_speed == 2'b10 && cntr_100meg < 4'd9)
					cntr_100meg	<=	cntr_100meg	+	1'b1;
					
				else if (fmac_speed == 2'b11 && cntr_10meg < 8'd99)
					cntr_10meg	<=	cntr_10meg	+	1'b1;
				
				data_out 	<=	rxd[63:56];
				ctrl_out 	<=	rxc[7];
				
				if ((fmac_speed == 2'b10 && cntr_100meg == 4'd5) | (fmac_speed == 2'b11 && cntr_10meg == 8'd95))
					addr_incr	<=	1'b1;	
					
				else
					addr_incr	<=	1'b0;
				
			end
			
			default:
			begin
				gmii_state 	<=	DAT_I;
			end
			
		endcase
	
	end
	
end



//synopsys translate_off
reg [(32*8)-1 : 0] ascii_gmii_state;

always@(gmii_state)
begin
	case(gmii_state)
	DAT_I: 	ascii_gmii_state = "DAT_I";
	DAT_0: 	ascii_gmii_state = "DAT_0";
	DAT_1: 	ascii_gmii_state = "DAT_1";
	DAT_2: 	ascii_gmii_state = "DAT_2";
	DAT_3: 	ascii_gmii_state = "DAT_3";
	DAT_4: 	ascii_gmii_state = "DAT_4";
	DAT_5: 	ascii_gmii_state = "DAT_5";
	DAT_6: 	ascii_gmii_state = "DAT_6";
	DAT_7: 	ascii_gmii_state = "DAT_7";
	default:ascii_gmii_state = "unknown";
	endcase
end
//synopsys translate_on



//========== STORAGE ==========	

rx_pkt_gen2kx64 rx_pkt_gen2kx64_inst (
	
	.data		(64'b0),
	.rdaddress 	(rx_pkt_gen_addr),
	.clock 		(xaui_clk),
	.wraddress 	(11'b0),
	.wren 		(1'b0),
	.q 			(d_out)               
	
	);
	
rx_pkt_gen2kx8 rx_pkt_gen2kx8_inst (
	
	.data		(8'b0),
	.rdaddress 	(rx_pkt_gen_addr),
	.clock 		(xaui_clk),
	.wraddress 	(11'b0),
	.wren 		(1'b0),
	.q 			(c_out)               

	);
	
endmodule
