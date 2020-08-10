// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Apr  7 11:58:10 2019
// Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/lewiz/sambashare/KIRATEY/RELEASE/LMAC_ETH_1G/AXIS_LMAC_IP/AXIS_LMAC_IP.srcs/sources_1/ip/rxrregif_fifo4x8_ip/rxrregif_fifo4x8_ip_stub.v
// Design      : rxrregif_fifo4x8_ip
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu15eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_2,Vivado 2018.2" *)
module rxrregif_fifo4x8_ip(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, 
  empty, rd_data_count, wr_data_count, wr_rst_busy, rd_rst_busy)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[7:0],wr_en,rd_en,dout[7:0],full,empty,rd_data_count[3:0],wr_data_count[3:0],wr_rst_busy,rd_rst_busy" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [7:0]din;
  input wr_en;
  input rd_en;
  output [7:0]dout;
  output full;
  output empty;
  output [3:0]rd_data_count;
  output [3:0]wr_data_count;
  output wr_rst_busy;
  output rd_rst_busy;
endmodule
