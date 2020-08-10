// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: lewiz:user:AXIS_LMAC_IP:1.0
// IP Revision: 21

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module LMAC_ETH_1G_AXIS_LMAC_IP_0_0 (
  dclk,
  lclk,
  rst_,
  fmac_speed,
  gmii_txd,
  gmii_tx_en,
  gmii_tx_er,
  gmii_rxd,
  gmii_rx_er,
  gmii_rx_dv,
  s_axis_tvalid,
  s_axis_tready,
  s_axis_tdata,
  s_axis_tkeep,
  s_axis_tlast,
  m_axis_tvalid,
  m_axis_tready,
  m_axis_tdata,
  m_axis_tkeep,
  m_axis_tlast,
  rdempty_wf,
  rdempty_wcf,
  dataout_wf,
  dataout_wcf,
  rden_wf,
  rden_wcf,
  rdempty_rf,
  rdempty_rcf,
  dataout_rf,
  dataout_rcf,
  rden_rf,
  rden_rcf,
  txdata_wrfull,
  rx_mac_empty,
  cs_fifo_empty,
  bcnt_more_than_1500
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET rst_, FREQ_HZ 124998750, PHASE 0.000, CLK_DOMAIN LMAC_ETH_1G_zynq_ultra_ps_e_0_0_pl_clk0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dclk CLK" *)
input wire dclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lclk, ASSOCIATED_BUSIF gmii, FREQ_HZ 125000000, PHASE 0, CLK_DOMAIN LMAC_ETH_1G_gig_ethernet_pcs_pma_0_0_userclk2_out" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 lclk CLK" *)
input wire lclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_ RST" *)
input wire rst_;
input wire [1 : 0] fmac_speed;
(* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 gmii TXD" *)
output wire [7 : 0] gmii_txd;
(* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 gmii TX_EN" *)
output wire gmii_tx_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 gmii TX_ER" *)
output wire gmii_tx_er;
(* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 gmii RXD" *)
input wire [7 : 0] gmii_rxd;
(* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 gmii RX_ER" *)
input wire gmii_rx_er;
(* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 gmii RX_DV" *)
input wire gmii_rx_dv;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *)
input wire s_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *)
output wire s_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *)
input wire [63 : 0] s_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *)
input wire [7 : 0] s_axis_tkeep;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 124998750, PHASE 0.000, CLK_DOMAIN LMAC_ETH_1G_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *)
input wire s_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
output wire m_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *)
input wire m_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
output wire [63 : 0] m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *)
output wire [7 : 0] m_axis_tkeep;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 124998750, PHASE 0.000, CLK_DOMAIN LMAC_ETH_1G_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *)
output wire m_axis_tlast;
output wire rdempty_wf;
output wire rdempty_wcf;
output wire [63 : 0] dataout_wf;
output wire [31 : 0] dataout_wcf;
output wire rden_wf;
output wire rden_wcf;
output wire rdempty_rf;
output wire rdempty_rcf;
output wire [63 : 0] dataout_rf;
output wire [31 : 0] dataout_rcf;
output wire rden_rf;
output wire rden_rcf;
output wire txdata_wrfull;
output wire rx_mac_empty;
output wire cs_fifo_empty;
output wire bcnt_more_than_1500;

  AXIS_LMAC_TOP inst (
    .dclk(dclk),
    .lclk(lclk),
    .rst_(rst_),
    .fmac_speed(fmac_speed),
    .gmii_txd(gmii_txd),
    .gmii_tx_en(gmii_tx_en),
    .gmii_tx_er(gmii_tx_er),
    .gmii_rxd(gmii_rxd),
    .gmii_rx_er(gmii_rx_er),
    .gmii_rx_dv(gmii_rx_dv),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tkeep(s_axis_tkeep),
    .s_axis_tlast(s_axis_tlast),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tready(m_axis_tready),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tkeep(m_axis_tkeep),
    .m_axis_tlast(m_axis_tlast),
    .rdempty_wf(rdempty_wf),
    .rdempty_wcf(rdempty_wcf),
    .dataout_wf(dataout_wf),
    .dataout_wcf(dataout_wcf),
    .rden_wf(rden_wf),
    .rden_wcf(rden_wcf),
    .rdempty_rf(rdempty_rf),
    .rdempty_rcf(rdempty_rcf),
    .dataout_rf(dataout_rf),
    .dataout_rcf(dataout_rcf),
    .rden_rf(rden_rf),
    .rden_rcf(rden_rcf),
    .txdata_wrfull(txdata_wrfull),
    .rx_mac_empty(rx_mac_empty),
    .cs_fifo_empty(cs_fifo_empty),
    .bcnt_more_than_1500(bcnt_more_than_1500)
  );
endmodule
