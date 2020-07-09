// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Apr  7 11:19:47 2019
// Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top ps_emio_eth_1g_ila_0_0 -prefix
//               ps_emio_eth_1g_ila_0_0_ ps_emio_eth_1g_ila_0_0_stub.v
// Design      : ps_emio_eth_1g_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2018.2" *)
module ps_emio_eth_1g_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[7:0],probe1[0:0],probe2[7:0],probe3[0:0],probe4[0:0],probe5[31:0],probe6[3:0],probe7[0:0],probe8[0:0],probe9[0:0]" */;
  input clk;
  input [7:0]probe0;
  input [0:0]probe1;
  input [7:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [31:0]probe5;
  input [3:0]probe6;
  input [0:0]probe7;
  input [0:0]probe8;
  input [0:0]probe9;
endmodule
