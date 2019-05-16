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

module phy_emulator_8b(
	
	xaui_clk,		//i
	reset_,			//i
	
	fmac_speed,		//i
	
	rx_pkt_gen_sel,	//i
	
	//gige_gmii 11 July 2018
	gmii_txd,       //i-8
	gmii_txc,       //i-1
	gmii_tx_en,		//i-1, 12 july 2018
	gmii_tx_vld,	//i-1, 17 july 2018
	
   	gmii_rxd,      	//o-8
   	gmii_rxc,      	//o-1 
   	gmii_rx_dv,    	//o-1 
    
    bit8_en,		//i-1	toggle between 8-bit mode and 64-bit mode
    
    test			//o TEST
    
	);

	input 				xaui_clk;					//i
	input 				reset_;						//i
	
	input	[1 : 0]		fmac_speed;					//i
	
	input				rx_pkt_gen_sel;				//i
	
	
	//gige_gmii 11 July 2018
	input	[7 : 0]		gmii_txd; 
	input 				gmii_txc;
	input 				gmii_tx_en;					//12 july 2018
	input 				gmii_tx_vld;				//17 july 2018
    
                                    			
	output reg	[ 7 : 0]	gmii_rxd;				//o-8
    output reg				gmii_rxc;				//o-1
    output reg				gmii_rx_dv;				//o-1
    
	wire 	[63 : 0]	rxd_64b;					//o-64
    wire 	[ 7 : 0]	rxc_64b;					//o-8  
        
    
    input				bit8_en;					//i-1	toggle between 8-bit mode and 64-bit mode
    
                                        			
    output 				test;						//o TEST
    
    reg					rx_pkt_gen_en;
    reg		[63 : 0]	rx_pkt_gen_start_addr;
    reg 	[10 : 0]	rx_pkt_gen_read_cnt;
    
    wire	[ 7 : 0]	rx_pkt_gen_data_out;
    wire				rx_pkt_gen_ctrl_out;
    
   	integer				data_8b_file;
   	integer				ctrl_8b_file;
   	integer				k, n;						//number of packets - 8-bit mode
   	
   	reg		[ 3 : 0]	counter_100meg;
   	reg		[ 7 : 0]	counter_10meg;

    
    rx_pkt_gen3_8b rx_pkt_gen3_8b(
	
    .xaui_clk 				(xaui_clk),						//i
	.reset_ 				(reset_),               		//i
	                                                		
	.fmac_speed				(fmac_speed),					//i-2
	                                                		
	.data_out 				(rx_pkt_gen_data_out),  		//o-8
	.ctrl_out 				(rx_pkt_gen_ctrl_out),  		//o-1
	                                                		
	.rxd 					(rxd_64b),     					//o-64
	.rxc 					(rxc_64b),     					//o-8
	
	.tb_rx_pkt_gen_en 			(rx_pkt_gen_en),         	//i
	.tb_rx_pkt_gen_addr_offset	(rx_pkt_gen_start_addr),   	//i-63
	.tb_rx_pkt_gen_read_cnt 	(rx_pkt_gen_read_cnt),   	//i-11
	
	.test 					(test)
	
	);
    
	
	always @ (posedge xaui_clk)
	begin
	
		if (!reset_)
		begin
			rx_pkt_gen_start_addr	<=	64'b0;
			rx_pkt_gen_read_cnt		<=	11'b0;
			
			rx_pkt_gen_en		<=	1'b0;
			
			gmii_rxd 	<= 	8'h07;
			gmii_rxc 	<= 	1'b1;
			gmii_rx_dv 	<= 	1'b0;
		
		end
		
		else
		begin
			
			//output depending on rx_pkt_gen_sel
			gmii_rxd 	<= 	(rx_pkt_gen_sel)? 	rx_pkt_gen_data_out 	: 	gmii_txd;
			gmii_rxc 	<= 	(rx_pkt_gen_sel)? 	rx_pkt_gen_ctrl_out 	: 	gmii_tx_vld;
			
			//assign 'gmii_rx_dv' depending on start or end of packet
			if (rx_pkt_gen_sel) begin
			
				if (((rx_pkt_gen_data_out == 8'hfb) | (rx_pkt_gen_data_out == 8'hfd)) & (rx_pkt_gen_ctrl_out == 1'b1))
					gmii_rx_dv	<=	1'b1;
				else if (rx_pkt_gen_ctrl_out == 1'b0)
					gmii_rx_dv	<=	1'b1;
				else
					gmii_rx_dv	<=	1'b0;
					
			end
			else
				gmii_rx_dv	<=	gmii_tx_en;
			
		end
		
	end
	
	initial begin
	
		data_8b_file 	= $fopen("C:/LMAC_INFO/PHY_EMULATOR/data_8b_file.txt", "w"); 		 //open file
		ctrl_8b_file 	= $fopen("C:/LMAC_INFO/PHY_EMULATOR/ctrl_8b_file.txt", "w"); 		 //open file
		
		//write to the text file: Copyright header and First line description
		$fdisplay (data_8b_file, "// Copyright (C) 2018 LeWiz Communications, Inc.");
		$fdisplay (data_8b_file, "//\n// This library is free software; you can redistribute it and/or");
		$fdisplay (data_8b_file, "// modify it under the terms of the GNU Lesser General Public");
		$fdisplay (data_8b_file, "// License as published by the Free Software Foundation; either");
		$fdisplay (data_8b_file, "// version 2.1 of the License, or (at your option) any later version.");
		$fdisplay (data_8b_file, "//\n// This library is distributed in the hope that it will be useful,");
		$fdisplay (data_8b_file, "// but WITHOUT ANY WARRANTY; without even the implied warranty of");
		$fdisplay (data_8b_file, "// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU");
		$fdisplay (data_8b_file, "// Lesser General Public License for more details.");
		$fdisplay (data_8b_file, "//\n// You should have received a copy of the GNU Lesser General Public");
		$fdisplay (data_8b_file, "// License along with this library release; if not, write to the Free Software");
		$fdisplay (data_8b_file, "// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA");
		$fdisplay (data_8b_file, "//\n// LeWiz can be contacted at:  support@lewiz.com");
		$fdisplay (data_8b_file, "// or address:");
		$fdisplay (data_8b_file, "// PO Box 9276");
		$fdisplay (data_8b_file, "// San Jose, CA 95157-9276");
		$fdisplay (data_8b_file, "// www.lewiz.com");
		$fdisplay (data_8b_file, "//\n//    Author: LeWiz Communications, Inc.");
		$fdisplay (data_8b_file, "//    Language: Verilog");
		$fdisplay (data_8b_file, "//\n//\n\n//This file stores the 8 bit data (GMII_RXD) which needs to be compared with received data (AXIS Master input).");

		$fdisplay (ctrl_8b_file, "// Copyright (C) 2018 LeWiz Communications, Inc.");
		$fdisplay (ctrl_8b_file, "//\n// This library is free software; you can redistribute it and/or");
		$fdisplay (ctrl_8b_file, "// modify it under the terms of the GNU Lesser General Public");
		$fdisplay (ctrl_8b_file, "// License as published by the Free Software Foundation; either");
		$fdisplay (ctrl_8b_file, "// version 2.1 of the License, or (at your option) any later version.");
		$fdisplay (ctrl_8b_file, "//\n// This library is distributed in the hope that it will be useful,");
		$fdisplay (ctrl_8b_file, "// but WITHOUT ANY WARRANTY; without even the implied warranty of");
		$fdisplay (ctrl_8b_file, "// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU");
		$fdisplay (ctrl_8b_file, "// Lesser General Public License for more details.");
		$fdisplay (ctrl_8b_file, "//\n// You should have received a copy of the GNU Lesser General Public");
		$fdisplay (ctrl_8b_file, "// License along with this library release; if not, write to the Free Software");
		$fdisplay (ctrl_8b_file, "// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA");
		$fdisplay (ctrl_8b_file, "//\n// LeWiz can be contacted at:  support@lewiz.com");
		$fdisplay (ctrl_8b_file, "// or address:");
		$fdisplay (ctrl_8b_file, "// PO Box 9276");
		$fdisplay (ctrl_8b_file, "// San Jose, CA 95157-9276");
		$fdisplay (ctrl_8b_file, "// www.lewiz.com");
		$fdisplay (ctrl_8b_file, "//\n//    Author: LeWiz Communications, Inc.");
		$fdisplay (ctrl_8b_file, "//    Language: Verilog");
		$fdisplay (ctrl_8b_file, "//\n//\n\n//This file stores the 1 bit ctrl (GMII_RXC) which needs to be compared with received ctrl (AXIS Master input).");
		
		$fclose(data_8b_file);
		$fclose(ctrl_8b_file);
		
	end
	
	always @ (posedge xaui_clk)
	begin
	
		if (!reset_)
		begin
			
			n	<=	1;
			k	<=	0;
			
			counter_100meg 	<= 4'b0;
			counter_10meg 	<= 8'b0;
		
		end
		
		else
		begin		
							
			if (((gmii_rxd == 8'hFB)&(gmii_rxc)) | (!gmii_rxc) | ((gmii_rxd == 8'hFD)&(gmii_rxc))) begin
			
				if (fmac_speed == 2'b01) begin
				
					if ((gmii_rxd == 8'hFB)&(gmii_rxc)) begin
						
						data_8b_file 	= $fopen("C:/LMAC_INFO/PHY_EMULATOR/data_8b_file.txt", "a");	//open file	
						ctrl_8b_file 	= $fopen("C:/LMAC_INFO/PHY_EMULATOR/ctrl_8b_file.txt", "a");	//open file	
					
						$fdisplay (data_8b_file, "\n\n//pkt - %0d\n", n);								//add new line at the start of each packet and write the packet numbers.
						$fdisplay (ctrl_8b_file, "\n\n//pkt - %0d\n", n);								//add new line at the start of each packet and write the packet numbers.
									
					end
					
					$fdisplayh (data_8b_file, gmii_rxd, "\t\t//Index: %3d\tPkt No.: %0d", k, n);		//write data to the text file.	
					$fdisplayb (ctrl_8b_file, gmii_rxc, "\t\t//Index: %3d\tPkt No.: %0d", k, n);		//write ctrl to the text file.	
					
					k	<=	k + 1;
					
					if ((gmii_rxd == 8'hFD)&(gmii_rxc)) begin
						n	<=	n + 1;
						$fclose(data_8b_file);
						$fclose(ctrl_8b_file);
					end
					
				end
				else if (fmac_speed == 2'b10) begin
				
					if (counter_100meg == 4'd9)
						counter_100meg <= 4'b0;
					else
						counter_100meg <= counter_100meg + 1'b1;
					
					if ((gmii_rxd == 8'hFB)&(gmii_rxc)&(counter_100meg == 4'b0)) begin
					
					data_8b_file 	= $fopen("C:/LMAC_INFO/PHY_EMULATOR/data_8b_file.txt", "a"); 		//open file	
					ctrl_8b_file 	= $fopen("C:/LMAC_INFO/PHY_EMULATOR/ctrl_8b_file.txt", "a"); 		//open file	
				                                                                                    	
					$fdisplay (data_8b_file, "\n\n//pkt - %0d\n", n);									//add new line at the start of each packet and write the packet numbers.
					$fdisplay (ctrl_8b_file, "\n\n//pkt - %0d\n", n);									//add new line at the start of each packet and write the packet numbers.
								
					end
					
					if (counter_100meg == 4'b0) begin
						$fdisplayh (data_8b_file, gmii_rxd, "\t\t//Index: %3d\tPkt No.: %0d", k, n);	//write data to the text file.	
						$fdisplayb (ctrl_8b_file, gmii_rxc, "\t\t//Index: %3d\tPkt No.: %0d", k, n);	//write ctrl to the text file.	
						
						k	<=	k + 1;
					end
					
					if ((gmii_rxd == 8'hFD)&(gmii_rxc)&(counter_100meg == 4'b0)) begin
						n	<=	n + 1;
						$fclose(data_8b_file);
						$fclose(ctrl_8b_file);
					end
				
				end
				else if (fmac_speed == 2'b11) begin
				
					if (counter_10meg == 8'd99)
						counter_10meg <= 8'b0;
					else
						counter_10meg <= counter_10meg + 1'b1;
					
					if ((gmii_rxd == 8'hFB)&(gmii_rxc)&(counter_10meg == 8'b0)) begin
					
					data_8b_file 	= $fopen("C:/LMAC_INFO/PHY_EMULATOR/data_8b_file.txt", "a"); 		//open file	
					ctrl_8b_file 	= $fopen("C:/LMAC_INFO/PHY_EMULATOR/ctrl_8b_file.txt", "a"); 		//open file	
				
					$fdisplay (data_8b_file, "\n\n//pkt - %0d\n", n);									//add new line at the start of each packet and write the packet numbers.
					$fdisplay (ctrl_8b_file, "\n\n//pkt - %0d\n", n);									//add new line at the start of each packet and write the packet numbers.
								
					end
					
					if (counter_10meg == 8'b0) begin
						$fdisplayh (data_8b_file, gmii_rxd, "\t\t//Index: %3d\tPkt No.: %0d", k, n);	//write data to the text file.	
						$fdisplayb (ctrl_8b_file, gmii_rxc, "\t\t//Index: %3d\tPkt No.: %0d", k, n);	//write ctrl to the text file.	
						
						k	<=	k + 1;
					end
					
					if ((gmii_rxd == 8'hFD)&(gmii_rxc)&(counter_10meg == 8'b0)) begin
						n	<=	n + 1;
						$fclose(data_8b_file);
						$fclose(ctrl_8b_file);
					end
				
				end
			
			end
				
		end
		
	end
	
endmodule