// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Apr  7 11:46:07 2019
// Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top ps_emio_eth_1g_AXIS_LMAC_0_1 -prefix
//               ps_emio_eth_1g_AXIS_LMAC_0_1_ ps_emio_eth_1g_AXIS_LMAC_0_1_stub.v
// Design      : ps_emio_eth_1g_AXIS_LMAC_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "LMAC_DFIFO_TOP,Vivado 2018.2" *)
module ps_emio_eth_1g_AXIS_LMAC_0_1(dclk, lclk, rst_, fmac_speed, gmii_txd, gmii_tx_en, 
  gmii_tx_er, gmii_rxd, gmii_rx_er, gmii_rx_dv, s_axis_tvalid, s_axis_tready, s_axis_tdata, 
  s_axis_tkeep, s_axis_tlast, m_axis_tvalid, m_axis_tready, m_axis_tdata, m_axis_tkeep, 
  m_axis_tlast)
/* synthesis syn_black_box black_box_pad_pin="dclk,lclk,rst_,fmac_speed[1:0],gmii_txd[7:0],gmii_tx_en,gmii_tx_er,gmii_rxd[7:0],gmii_rx_er,gmii_rx_dv,s_axis_tvalid,s_axis_tready,s_axis_tdata[31:0],s_axis_tkeep[3:0],s_axis_tlast,m_axis_tvalid,m_axis_tready,m_axis_tdata[31:0],m_axis_tkeep[3:0],m_axis_tlast" */;
  input dclk;
  input lclk;
  input rst_;
  input [1:0]fmac_speed;
  output [7:0]gmii_txd;
  output gmii_tx_en;
  output gmii_tx_er;
  input [7:0]gmii_rxd;
  input gmii_rx_er;
  input gmii_rx_dv;
  input s_axis_tvalid;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
endmodule
