// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Apr  7 11:19:55 2019
// Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top ps_emio_eth_1g_c_counter_binary_0_1 -prefix
//               ps_emio_eth_1g_c_counter_binary_0_1_ ps_emio_eth_1g_c_counter_binary_0_1_stub.v
// Design      : ps_emio_eth_1g_c_counter_binary_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *)
module ps_emio_eth_1g_c_counter_binary_0_1(CLK, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,Q[31:0]" */;
  input CLK;
  output [31:0]Q;
endmodule
