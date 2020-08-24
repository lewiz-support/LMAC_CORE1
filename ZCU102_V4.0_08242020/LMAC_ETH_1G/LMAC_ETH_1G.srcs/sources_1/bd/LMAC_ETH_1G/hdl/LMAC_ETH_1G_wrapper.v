//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
//Date        : Mon Apr 15 12:27:41 2019
//Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
//Command     : generate_target LMAC_ETH_1G_wrapper.bd
//Design      : LMAC_ETH_1G_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LMAC_ETH_1G_wrapper
   (clk_125_clk_n,
    clk_125_clk_p,
    dir_125_clk_led,
    gtrefclk_in_clk_n,
    gtrefclk_in_clk_p,
    link_status_led,
    link_sync_led,
    pcs_clk_led,
    pl_reset_led,
    sfp_rxn,
    sfp_rxp,
    sfp_tx_dis,
    sfp_txn,
    sfp_txp,
    xcvr_rst_done_led);
  input [0:0]clk_125_clk_n;
  input [0:0]clk_125_clk_p;
  output [0:0]dir_125_clk_led;
  input gtrefclk_in_clk_n;
  input gtrefclk_in_clk_p;
  output [0:0]link_status_led;
  output [0:0]link_sync_led;
  output [0:0]pcs_clk_led;
  output [0:0]pl_reset_led;
  input sfp_rxn;
  input sfp_rxp;
  output [0:0]sfp_tx_dis;
  output sfp_txn;
  output sfp_txp;
  output xcvr_rst_done_led;

  wire [0:0]clk_125_clk_n;
  wire [0:0]clk_125_clk_p;
  wire [0:0]dir_125_clk_led;
  wire gtrefclk_in_clk_n;
  wire gtrefclk_in_clk_p;
  wire [0:0]link_status_led;
  wire [0:0]link_sync_led;
  wire [0:0]pcs_clk_led;
  wire [0:0]pl_reset_led;
  wire sfp_rxn;
  wire sfp_rxp;
  wire [0:0]sfp_tx_dis;
  wire sfp_txn;
  wire sfp_txp;
  wire xcvr_rst_done_led;

  LMAC_ETH_1G LMAC_ETH_1G_i
       (.clk_125_clk_n(clk_125_clk_n),
        .clk_125_clk_p(clk_125_clk_p),
        .dir_125_clk_led(dir_125_clk_led),
        .gtrefclk_in_clk_n(gtrefclk_in_clk_n),
        .gtrefclk_in_clk_p(gtrefclk_in_clk_p),
        .link_status_led(link_status_led),
        .link_sync_led(link_sync_led),
        .pcs_clk_led(pcs_clk_led),
        .pl_reset_led(pl_reset_led),
        .sfp_rxn(sfp_rxn),
        .sfp_rxp(sfp_rxp),
        .sfp_tx_dis(sfp_tx_dis),
        .sfp_txn(sfp_txn),
        .sfp_txp(sfp_txp),
        .xcvr_rst_done_led(xcvr_rst_done_led));
endmodule
