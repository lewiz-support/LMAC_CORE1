// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Apr  7 11:13:53 2019
// Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top ps_emio_eth_1g_xlconstant_3_0 -prefix
//               ps_emio_eth_1g_xlconstant_3_0_ ps_emio_eth_1g_xlconstant_3_0_stub.v
// Design      : ps_emio_eth_1g_xlconstant_3_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlconstant_v1_1_5_xlconstant,Vivado 2018.2" *)
module ps_emio_eth_1g_xlconstant_3_0(dout)
/* synthesis syn_black_box black_box_pad_pin="dout[15:0]" */;
  output [15:0]dout;
endmodule
