// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon Apr 15 12:38:57 2019
// Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LMAC_ETH_1G_AXIS_LMAC_IP_0_0_stub.v
// Design      : LMAC_ETH_1G_AXIS_LMAC_IP_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu15eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "AXIS_LMAC_TOP,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(dclk, lclk, rst_, fmac_speed, gmii_txd, gmii_tx_en, 
  gmii_tx_er, gmii_rxd, gmii_rx_er, gmii_rx_dv, s_axis_tvalid, s_axis_tready, s_axis_tdata, 
  s_axis_tkeep, s_axis_tlast, m_axis_tvalid, m_axis_tready, m_axis_tdata, m_axis_tkeep, 
  m_axis_tlast, rdempty_wf, rdempty_wcf, dataout_wf, dataout_wcf, rden_wf, rden_wcf, rdempty_rf, 
  rdempty_rcf, dataout_rf, dataout_rcf, rden_rf, rden_rcf, txdata_wrfull, txdata_wrusedw, 
  axis2fib_txctrl_st, tx_mac_wr_reg, tx_mac_data_reg, tx_mac_usedw_reg, fib2fmac_txctrl_st, 
  rx_mac_empty_reg, cs_fifo_empty_reg, bcnt_more_than_1500, axis2fib_ar_state, 
  fmac2fib_ar_state, wr2_txwbcnt_fifo, txwbcnt_wrreq, txwbcnt_wrempty, txwbcnt_wrusedw, 
  wr2_txdata_fifo, txdata_wrempty, txdata_wrreq)
/* synthesis syn_black_box black_box_pad_pin="dclk,lclk,rst_,fmac_speed[1:0],gmii_txd[7:0],gmii_tx_en,gmii_tx_er,gmii_rxd[7:0],gmii_rx_er,gmii_rx_dv,s_axis_tvalid,s_axis_tready,s_axis_tdata[63:0],s_axis_tkeep[7:0],s_axis_tlast,m_axis_tvalid,m_axis_tready,m_axis_tdata[63:0],m_axis_tkeep[7:0],m_axis_tlast,rdempty_wf,rdempty_wcf,dataout_wf[63:0],dataout_wcf[31:0],rden_wf,rden_wcf,rdempty_rf,rdempty_rcf,dataout_rf[63:0],dataout_rcf[31:0],rden_rf,rden_rcf,txdata_wrfull,txdata_wrusedw[8:0],axis2fib_txctrl_st[3:0],tx_mac_wr_reg,tx_mac_data_reg[63:0],tx_mac_usedw_reg[12:0],fib2fmac_txctrl_st[3:0],rx_mac_empty_reg,cs_fifo_empty_reg,bcnt_more_than_1500,axis2fib_ar_state[3:0],fmac2fib_ar_state[3:0],wr2_txwbcnt_fifo[31:0],txwbcnt_wrreq,txwbcnt_wrempty,txwbcnt_wrusedw[2:0],wr2_txdata_fifo[63:0],txdata_wrempty,txdata_wrreq" */;
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
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  input s_axis_tlast;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [7:0]m_axis_tkeep;
  output m_axis_tlast;
  output rdempty_wf;
  output rdempty_wcf;
  output [63:0]dataout_wf;
  output [31:0]dataout_wcf;
  output rden_wf;
  output rden_wcf;
  output rdempty_rf;
  output rdempty_rcf;
  output [63:0]dataout_rf;
  output [31:0]dataout_rcf;
  output rden_rf;
  output rden_rcf;
  output txdata_wrfull;
  output [8:0]txdata_wrusedw;
  output [3:0]axis2fib_txctrl_st;
  output tx_mac_wr_reg;
  output [63:0]tx_mac_data_reg;
  output [12:0]tx_mac_usedw_reg;
  output [3:0]fib2fmac_txctrl_st;
  output rx_mac_empty_reg;
  output cs_fifo_empty_reg;
  output bcnt_more_than_1500;
  output [3:0]axis2fib_ar_state;
  output [3:0]fmac2fib_ar_state;
  output [31:0]wr2_txwbcnt_fifo;
  output txwbcnt_wrreq;
  output txwbcnt_wrempty;
  output [2:0]txwbcnt_wrusedw;
  output [63:0]wr2_txdata_fifo;
  output txdata_wrempty;
  output txdata_wrreq;
endmodule