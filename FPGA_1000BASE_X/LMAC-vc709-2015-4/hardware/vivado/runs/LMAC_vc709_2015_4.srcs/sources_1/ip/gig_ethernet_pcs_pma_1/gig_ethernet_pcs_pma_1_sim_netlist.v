// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Mon Jan 09 12:19:26 2017
// Host        : MANTA-RAY running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/SUNNY2/LMAC-vc709-2015-4/hardware/vivado/runs/LMAC_vc709_2015_4.srcs/sources_1/ip/gig_ethernet_pcs_pma_1/gig_ethernet_pcs_pma_1_sim_netlist.v
// Design      : gig_ethernet_pcs_pma_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DowngradeIPIdentifiedWarnings = "yes" *) 
(* NotValidForBitStream *)
module gig_ethernet_pcs_pma_1
   (gtrefclk_p,
    gtrefclk_n,
    gtrefclk_out,
    gtrefclk_bufg_out,
    txp,
    txn,
    rxp,
    rxn,
    resetdone,
    userclk_out,
    userclk2_out,
    rxuserclk_out,
    rxuserclk2_out,
    independent_clock_bufg,
    pma_reset_out,
    mmcm_locked_out,
    sgmii_clk_r,
    sgmii_clk_f,
    sgmii_clk_en,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    configuration_vector,
    speed_is_10_100,
    speed_is_100,
    status_vector,
    reset,
    signal_detect,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out);
  input gtrefclk_p;
  input gtrefclk_n;
  output gtrefclk_out;
  output gtrefclk_bufg_out;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output resetdone;
  output userclk_out;
  output userclk2_out;
  output rxuserclk_out;
  output rxuserclk2_out;
  input independent_clock_bufg;
  output pma_reset_out;
  output mmcm_locked_out;
  output sgmii_clk_r;
  output sgmii_clk_f;
  output sgmii_clk_en;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input [4:0]configuration_vector;
  input speed_is_10_100;
  input speed_is_100;
  output [15:0]status_vector;
  input reset;
  input signal_detect;
  output gt0_qplloutclk_out;
  output gt0_qplloutrefclk_out;

  wire [4:0]configuration_vector;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gtrefclk_bufg_out;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire independent_clock_bufg;
  wire mmcm_locked_out;
  wire pma_reset_out;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxp;
  wire rxuserclk2_out;
  wire sgmii_clk_en;
  wire sgmii_clk_f;
  wire sgmii_clk_r;
  wire signal_detect;
  wire speed_is_100;
  wire speed_is_10_100;
  wire [15:0]status_vector;
  wire txn;
  wire txp;
  wire userclk2_out;
  wire userclk_out;

  assign rxuserclk_out = rxuserclk2_out;
  (* CORE_GENERATION_INFO = "gig_ethernet_pcs_pma_1,gig_ethernet_pcs_pma_v15_1_1,{x_ipProduct=Vivado 2015.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=gig_ethernet_pcs_pma,x_ipVersion=15.1,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,c_elaboration_transient_dir=.,c_component_name=gig_ethernet_pcs_pma_1,c_family=virtex7,c_is_sgmii=true,c_use_transceiver=true,c_use_tbi=false,c_is_2_5g=false,c_use_lvds=false,c_has_an=false,c_has_mdio=false,c_has_ext_mdio=false,c_sgmii_phy_mode=false,c_dynamic_switching=false,c_sgmii_fabric_buffer=true,c_1588=0,gt_rx_byte_width=1,C_EMAC_IF_TEMAC=true,C_PHYADDR=1,EXAMPLE_SIMULATION=0,c_support_level=true,c_sub_core_name=gig_ethernet_pcs_pma_1_gt,c_transceiver_type=GTHE2,c_gt_type=GTH,c_transceivercontrol=false,c_xdevicefamily=xc7vx690t,c_gt_dmonitorout_width=15,c_gt_drpaddr_width=9,c_gt_txdiffctrl_width=4,c_gt_rxmonitorout_width=7,c_num_of_lanes=1,c_refclkrate=125,c_drpclkrate=50.0}" *) 
  (* X_CORE_INFO = "gig_ethernet_pcs_pma_v15_1_1,Vivado 2015.4" *) 
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_support inst
       (.configuration_vector(configuration_vector),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gtrefclk_bufg_out(gtrefclk_bufg_out),
        .gtrefclk_n(gtrefclk_n),
        .gtrefclk_out(gtrefclk_out),
        .gtrefclk_p(gtrefclk_p),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked_out(mmcm_locked_out),
        .pma_reset_out(pma_reset_out),
        .reset(reset),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxp(rxp),
        .rxuserclk2_out(rxuserclk2_out),
        .sgmii_clk_en(sgmii_clk_en),
        .sgmii_clk_f(sgmii_clk_f),
        .sgmii_clk_r(sgmii_clk_r),
        .signal_detect(signal_detect),
        .speed_is_100(speed_is_100),
        .speed_is_10_100(speed_is_10_100),
        .status_vector(status_vector),
        .txn(txn),
        .txp(txp),
        .userclk2_out(userclk2_out),
        .userclk_out(userclk_out));
endmodule

(* ORIG_REF_NAME = "GPCS_PMA_GEN" *) 
module gig_ethernet_pcs_pma_1_GPCS_PMA_GEN
   (status_vector,
    MGT_TX_RESET,
    gmii_isolate,
    rxpowerdown_reg_reg,
    MGT_RX_RESET,
    enablealign,
    gmii_rxd,
    gmii_rx_er,
    txchardispmode,
    txcharisk,
    txdata,
    gmii_rx_dv,
    txchardispval,
    userclk2,
    dcm_locked,
    signal_detect,
    userclk,
    reset,
    gmii_tx_en,
    gmii_tx_er,
    configuration_vector,
    gmii_txd,
    rxbufstatus,
    txbuferr,
    rxclkcorcnt,
    rxcharisk,
    rxchariscomma,
    reset_done,
    rxdata,
    rxdisperr,
    rxnotintable);
  output [6:0]status_vector;
  output MGT_TX_RESET;
  output gmii_isolate;
  output rxpowerdown_reg_reg;
  output MGT_RX_RESET;
  output enablealign;
  output [7:0]gmii_rxd;
  output gmii_rx_er;
  output txchardispmode;
  output txcharisk;
  output [7:0]txdata;
  output gmii_rx_dv;
  output txchardispval;
  input userclk2;
  input dcm_locked;
  input signal_detect;
  input userclk;
  input reset;
  input gmii_tx_en;
  input gmii_tx_er;
  input [2:0]configuration_vector;
  input [7:0]gmii_txd;
  input [0:0]rxbufstatus;
  input txbuferr;
  input [2:0]rxclkcorcnt;
  input [0:0]rxcharisk;
  input [0:0]rxchariscomma;
  input reset_done;
  input [7:0]rxdata;
  input [0:0]rxdisperr;
  input [0:0]rxnotintable;

  wire [1:1]CONFIGURATION_VECTOR_REG;
  wire D;
  wire \FSM_sequential_USE_ROCKET_IO.RX_RST_SM[0]_i_1_n_0 ;
  wire \FSM_sequential_USE_ROCKET_IO.RX_RST_SM[1]_i_1_n_0 ;
  wire \FSM_sequential_USE_ROCKET_IO.RX_RST_SM[2]_i_1_n_0 ;
  wire \FSM_sequential_USE_ROCKET_IO.RX_RST_SM[3]_i_1_n_0 ;
  wire \FSM_sequential_USE_ROCKET_IO.TX_RST_SM[0]_i_1_n_0 ;
  wire \FSM_sequential_USE_ROCKET_IO.TX_RST_SM[1]_i_1_n_0 ;
  wire \FSM_sequential_USE_ROCKET_IO.TX_RST_SM[2]_i_1_n_0 ;
  wire \FSM_sequential_USE_ROCKET_IO.TX_RST_SM[3]_i_1_n_0 ;
  wire \MGT_RESET.SYNC_ASYNC_RESET_n_0 ;
  wire MGT_RX_RESET;
  wire MGT_RX_RESET_INT;
  wire MGT_TX_RESET;
  wire MGT_TX_RESET_INT;
  wire \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1_n_0 ;
  wire \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1_n_0 ;
  wire \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1_n_0 ;
  (* async_reg = "true" *) wire RESET_INT;
  (* async_reg = "true" *) wire RESET_INT_PIPE;
  wire RXCLKCORCNT_INT;
  wire RXDISPERR_SRL;
  wire RXEVEN;
  wire RXNOTINTABLE_INT;
  wire RXNOTINTABLE_SRL;
  (* RTL_KEEP = "yes" *) wire [3:0]RX_RST_SM;
  wire SIGNAL_DETECT_MOD;
  (* async_reg = "true" *) wire SRESET;
  (* async_reg = "true" *) wire SRESET_PIPE;
  wire STATUS_VECTOR_0_PRE;
  wire STATUS_VECTOR_0_PRE0;
  wire SYNC_STATUS_REG;
  wire SYNC_STATUS_REG0;
  wire TRANSMITTER_n_0;
  wire TRANSMITTER_n_1;
  wire TRANSMITTER_n_10;
  wire TRANSMITTER_n_11;
  wire TRANSMITTER_n_12;
  wire TRANSMITTER_n_13;
  wire TRANSMITTER_n_14;
  wire TRANSMITTER_n_15;
  wire TRANSMITTER_n_16;
  wire TRANSMITTER_n_17;
  wire TRANSMITTER_n_18;
  wire TRANSMITTER_n_19;
  wire TRANSMITTER_n_2;
  wire TRANSMITTER_n_20;
  wire TRANSMITTER_n_21;
  wire TRANSMITTER_n_3;
  wire TRANSMITTER_n_4;
  wire TRANSMITTER_n_5;
  wire TRANSMITTER_n_6;
  wire TRANSMITTER_n_7;
  wire TRANSMITTER_n_8;
  wire TRANSMITTER_n_9;
  wire TXBUFERR_INT;
  (* RTL_KEEP = "yes" *) wire [3:0]TX_RST_SM;
  wire \USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg_n_0_[1] ;
  wire \USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg_n_0 ;
  wire \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg_n_0 ;
  wire \USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg_n_0_[0] ;
  wire \USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg_n_0_[1] ;
  wire \USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg_n_0_[2] ;
  wire \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[0] ;
  wire \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[1] ;
  wire \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[2] ;
  wire \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[3] ;
  wire \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[4] ;
  wire \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[5] ;
  wire \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[6] ;
  wire \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[7] ;
  wire \USE_ROCKET_IO.NO_1588.RXDISPERR_INT_i_1_n_0 ;
  wire \USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1_n_0 ;
  wire [2:0]configuration_vector;
  wire dcm_locked;
  wire enablealign;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire p_0_out;
  wire p_1_out;
  wire p_40_in;
  wire reset;
  wire reset_done;
  wire [0:0]rxbufstatus;
  wire [0:0]rxchariscomma;
  wire [0:0]rxcharisk;
  wire [2:0]rxclkcorcnt;
  wire [7:0]rxdata;
  wire [0:0]rxdisperr;
  wire [0:0]rxnotintable;
  wire rxpowerdown_reg_reg;
  wire signal_detect;
  wire [6:0]status_vector;
  wire txbuferr;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire [7:0]txdata;
  wire userclk;
  wire userclk2;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "SRL16" *) 
  (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_1_core /\gpcs_pma_inst/DELAY_RXDISPERR " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    DELAY_RXDISPERR
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(D),
        .Q(RXDISPERR_SRL));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "SRL16" *) 
  (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_1_core /\gpcs_pma_inst/DELAY_RXNOTINTABLE " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    DELAY_RXNOTINTABLE
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(RXNOTINTABLE_INT),
        .Q(RXNOTINTABLE_SRL));
  LUT4 #(
    .INIT(16'h1555)) 
    \FSM_sequential_USE_ROCKET_IO.RX_RST_SM[0]_i_1 
       (.I0(RX_RST_SM[0]),
        .I1(RX_RST_SM[3]),
        .I2(RX_RST_SM[1]),
        .I3(RX_RST_SM[2]),
        .O(\FSM_sequential_USE_ROCKET_IO.RX_RST_SM[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDA5A)) 
    \FSM_sequential_USE_ROCKET_IO.RX_RST_SM[1]_i_1 
       (.I0(RX_RST_SM[0]),
        .I1(RX_RST_SM[3]),
        .I2(RX_RST_SM[1]),
        .I3(RX_RST_SM[2]),
        .O(\FSM_sequential_USE_ROCKET_IO.RX_RST_SM[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBFC0)) 
    \FSM_sequential_USE_ROCKET_IO.RX_RST_SM[2]_i_1 
       (.I0(RX_RST_SM[3]),
        .I1(RX_RST_SM[0]),
        .I2(RX_RST_SM[1]),
        .I3(RX_RST_SM[2]),
        .O(\FSM_sequential_USE_ROCKET_IO.RX_RST_SM[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \FSM_sequential_USE_ROCKET_IO.RX_RST_SM[3]_i_1 
       (.I0(RX_RST_SM[3]),
        .I1(RX_RST_SM[2]),
        .I2(RX_RST_SM[0]),
        .I3(RX_RST_SM[1]),
        .O(\FSM_sequential_USE_ROCKET_IO.RX_RST_SM[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_sequential_USE_ROCKET_IO.RX_RST_SM[0]_i_1_n_0 ),
        .Q(RX_RST_SM[0]),
        .R(p_0_out));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_sequential_USE_ROCKET_IO.RX_RST_SM[1]_i_1_n_0 ),
        .Q(RX_RST_SM[1]),
        .R(p_0_out));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_sequential_USE_ROCKET_IO.RX_RST_SM[2]_i_1_n_0 ),
        .Q(RX_RST_SM[2]),
        .R(p_0_out));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_sequential_USE_ROCKET_IO.RX_RST_SM[3]_i_1_n_0 ),
        .Q(RX_RST_SM[3]),
        .R(p_0_out));
  LUT4 #(
    .INIT(16'h1555)) 
    \FSM_sequential_USE_ROCKET_IO.TX_RST_SM[0]_i_1 
       (.I0(TX_RST_SM[0]),
        .I1(TX_RST_SM[3]),
        .I2(TX_RST_SM[1]),
        .I3(TX_RST_SM[2]),
        .O(\FSM_sequential_USE_ROCKET_IO.TX_RST_SM[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDA5A)) 
    \FSM_sequential_USE_ROCKET_IO.TX_RST_SM[1]_i_1 
       (.I0(TX_RST_SM[0]),
        .I1(TX_RST_SM[3]),
        .I2(TX_RST_SM[1]),
        .I3(TX_RST_SM[2]),
        .O(\FSM_sequential_USE_ROCKET_IO.TX_RST_SM[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBFC0)) 
    \FSM_sequential_USE_ROCKET_IO.TX_RST_SM[2]_i_1 
       (.I0(TX_RST_SM[3]),
        .I1(TX_RST_SM[0]),
        .I2(TX_RST_SM[1]),
        .I3(TX_RST_SM[2]),
        .O(\FSM_sequential_USE_ROCKET_IO.TX_RST_SM[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \FSM_sequential_USE_ROCKET_IO.TX_RST_SM[3]_i_1 
       (.I0(TX_RST_SM[3]),
        .I1(TX_RST_SM[2]),
        .I2(TX_RST_SM[0]),
        .I3(TX_RST_SM[1]),
        .O(\FSM_sequential_USE_ROCKET_IO.TX_RST_SM[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_sequential_USE_ROCKET_IO.TX_RST_SM[0]_i_1_n_0 ),
        .Q(TX_RST_SM[0]),
        .R(p_1_out));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_sequential_USE_ROCKET_IO.TX_RST_SM[1]_i_1_n_0 ),
        .Q(TX_RST_SM[1]),
        .R(p_1_out));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_sequential_USE_ROCKET_IO.TX_RST_SM[2]_i_1_n_0 ),
        .Q(TX_RST_SM[2]),
        .R(p_1_out));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_sequential_USE_ROCKET_IO.TX_RST_SM[3]_i_1_n_0 ),
        .Q(TX_RST_SM[3]),
        .R(p_1_out));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \MGT_RESET.RESET_INT_PIPE_reg 
       (.C(userclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\MGT_RESET.SYNC_ASYNC_RESET_n_0 ),
        .Q(RESET_INT_PIPE));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \MGT_RESET.RESET_INT_reg 
       (.C(userclk),
        .CE(1'b1),
        .D(RESET_INT_PIPE),
        .PRE(\MGT_RESET.SYNC_ASYNC_RESET_n_0 ),
        .Q(RESET_INT));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \MGT_RESET.SRESET_PIPE_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(RESET_INT),
        .Q(SRESET_PIPE),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \MGT_RESET.SRESET_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(SRESET_PIPE),
        .Q(SRESET),
        .S(RESET_INT));
  gig_ethernet_pcs_pma_1_reset_sync_block \MGT_RESET.SYNC_ASYNC_RESET 
       (.\MGT_RESET.RESET_INT_PIPE_reg (\MGT_RESET.SYNC_ASYNC_RESET_n_0 ),
        .dcm_locked(dcm_locked),
        .reset(reset),
        .userclk(userclk));
  LUT2 #(
    .INIT(4'h2)) 
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1 
       (.I0(configuration_vector[0]),
        .I1(SRESET),
        .O(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1 
       (.I0(configuration_vector[1]),
        .I1(SRESET),
        .O(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1 
       (.I0(configuration_vector[2]),
        .I1(SRESET),
        .O(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1_n_0 ),
        .Q(CONFIGURATION_VECTOR_REG),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1_n_0 ),
        .Q(rxpowerdown_reg_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1_n_0 ),
        .Q(gmii_isolate),
        .R(1'b0));
  gig_ethernet_pcs_pma_1_RX RECEIVER
       (.D(D),
        .\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2] (rxpowerdown_reg_reg),
        .\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] (gmii_isolate),
        .Q({\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[7] ,\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[6] ,\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[5] ,\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[4] ,\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[3] ,\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[2] ,\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[1] ,\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[0] }),
        .RXEVEN(RXEVEN),
        .RXNOTINTABLE_INT(RXNOTINTABLE_INT),
        .SR(MGT_RX_RESET),
        .SYNC_STATUS_REG0(SYNC_STATUS_REG0),
        .\USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg[1] (\USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg_n_0_[1] ),
        .\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg (\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg_n_0 ),
        .\USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[2] ({\USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg_n_0_[2] ,\USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg_n_0_[1] ,\USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg_n_0_[0] }),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .p_40_in(p_40_in),
        .status_vector(status_vector[4:2]),
        .userclk2(userclk2));
  FDRE #(
    .INIT(1'b0)) 
    RXDISPERR_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RXDISPERR_SRL),
        .Q(status_vector[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    RXNOTINTABLE_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RXNOTINTABLE_SRL),
        .Q(status_vector[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    STATUS_VECTOR_0_PRE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(STATUS_VECTOR_0_PRE0),
        .Q(STATUS_VECTOR_0_PRE),
        .R(1'b0));
  FDRE \STATUS_VECTOR_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(STATUS_VECTOR_0_PRE),
        .Q(status_vector[0]),
        .R(1'b0));
  FDRE \STATUS_VECTOR_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(SYNC_STATUS_REG),
        .Q(status_vector[1]),
        .R(1'b0));
  gig_ethernet_pcs_pma_1_SYNCHRONISE SYNCHRONISATION
       (.CONFIGURATION_VECTOR_REG(CONFIGURATION_VECTOR_REG),
        .D(D),
        .RXEVEN(RXEVEN),
        .RXNOTINTABLE_INT(RXNOTINTABLE_INT),
        .SIGNAL_DETECT_MOD(SIGNAL_DETECT_MOD),
        .SR(MGT_RX_RESET),
        .STATUS_VECTOR_0_PRE0(STATUS_VECTOR_0_PRE0),
        .SYNC_STATUS_REG0(SYNC_STATUS_REG0),
        .\USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg[1] (\USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg_n_0_[1] ),
        .\USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg (\USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg_n_0 ),
        .\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg (\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg_n_0 ),
        .enablealign(enablealign),
        .p_40_in(p_40_in),
        .reset_done(reset_done),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_1_sync_block SYNC_SIGNAL_DETECT
       (.\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2] (rxpowerdown_reg_reg),
        .SIGNAL_DETECT_MOD(SIGNAL_DETECT_MOD),
        .signal_detect(signal_detect),
        .userclk2(userclk2));
  FDRE #(
    .INIT(1'b0)) 
    SYNC_STATUS_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(p_40_in),
        .Q(SYNC_STATUS_REG),
        .R(1'b0));
  gig_ethernet_pcs_pma_1_TX TRANSMITTER
       (.CONFIGURATION_VECTOR_REG(CONFIGURATION_VECTOR_REG),
        .D({TRANSMITTER_n_2,TRANSMITTER_n_3,TRANSMITTER_n_4,TRANSMITTER_n_5}),
        .\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] (gmii_isolate),
        .\USE_ROCKET_IO.MGT_TX_RESET_INT_reg (MGT_TX_RESET),
        .\USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg (TRANSMITTER_n_11),
        .\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg (TRANSMITTER_n_10),
        .\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] ({TRANSMITTER_n_12,TRANSMITTER_n_13,TRANSMITTER_n_14,TRANSMITTER_n_15,TRANSMITTER_n_16,TRANSMITTER_n_17,TRANSMITTER_n_18,TRANSMITTER_n_19}),
        .\USE_ROCKET_IO.TXCHARDISPMODE_reg (TRANSMITTER_n_0),
        .\USE_ROCKET_IO.TXCHARDISPVAL_reg (TRANSMITTER_n_21),
        .\USE_ROCKET_IO.TXCHARISK_reg (TRANSMITTER_n_9),
        .\USE_ROCKET_IO.TXDATA_reg[2] (TRANSMITTER_n_8),
        .\USE_ROCKET_IO.TXDATA_reg[2]_0 (TRANSMITTER_n_20),
        .\USE_ROCKET_IO.TXDATA_reg[3] (TRANSMITTER_n_7),
        .\USE_ROCKET_IO.TXDATA_reg[5] (TRANSMITTER_n_6),
        .\USE_ROCKET_IO.TXDATA_reg[7] (TRANSMITTER_n_1),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxdata(rxdata),
        .userclk2(userclk2));
  LUT2 #(
    .INIT(4'hE)) 
    \USE_ROCKET_IO.MGT_RX_RESET_INT_i_1 
       (.I0(RESET_INT),
        .I1(\USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg_n_0_[1] ),
        .O(p_0_out));
  LUT3 #(
    .INIT(8'h7F)) 
    \USE_ROCKET_IO.MGT_RX_RESET_INT_i_2 
       (.I0(RX_RST_SM[2]),
        .I1(RX_RST_SM[1]),
        .I2(RX_RST_SM[3]),
        .O(MGT_RX_RESET_INT));
  FDSE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.MGT_RX_RESET_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(MGT_RX_RESET_INT),
        .Q(MGT_RX_RESET),
        .S(p_0_out));
  LUT2 #(
    .INIT(4'hE)) 
    \USE_ROCKET_IO.MGT_TX_RESET_INT_i_1 
       (.I0(RESET_INT),
        .I1(TXBUFERR_INT),
        .O(p_1_out));
  LUT3 #(
    .INIT(8'h7F)) 
    \USE_ROCKET_IO.MGT_TX_RESET_INT_i_2 
       (.I0(TX_RST_SM[2]),
        .I1(TX_RST_SM[1]),
        .I2(TX_RST_SM[3]),
        .O(MGT_TX_RESET_INT));
  FDSE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.MGT_TX_RESET_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(MGT_TX_RESET_INT),
        .Q(MGT_TX_RESET),
        .S(p_1_out));
  LUT2 #(
    .INIT(4'hE)) 
    \USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT[1]_i_1 
       (.I0(MGT_RX_RESET),
        .I1(CONFIGURATION_VECTOR_REG),
        .O(RXCLKCORCNT_INT));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxbufstatus),
        .Q(\USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg_n_0_[1] ),
        .R(RXCLKCORCNT_INT));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_11),
        .Q(\USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg_n_0 ),
        .R(MGT_RX_RESET));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_10),
        .Q(\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg_n_0 ),
        .R(MGT_RX_RESET));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxclkcorcnt[0]),
        .Q(\USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg_n_0_[0] ),
        .R(RXCLKCORCNT_INT));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxclkcorcnt[1]),
        .Q(\USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg_n_0_[1] ),
        .R(RXCLKCORCNT_INT));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxclkcorcnt[2]),
        .Q(\USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg_n_0_[2] ),
        .R(RXCLKCORCNT_INT));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_19),
        .Q(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[0] ),
        .R(MGT_RX_RESET));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_18),
        .Q(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[1] ),
        .R(MGT_RX_RESET));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_17),
        .Q(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[2] ),
        .R(MGT_RX_RESET));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_16),
        .Q(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[3] ),
        .R(MGT_RX_RESET));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_15),
        .Q(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[4] ),
        .R(MGT_RX_RESET));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_14),
        .Q(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[5] ),
        .R(MGT_RX_RESET));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_13),
        .Q(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[6] ),
        .R(MGT_RX_RESET));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_12),
        .Q(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg_n_0_[7] ),
        .R(MGT_RX_RESET));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \USE_ROCKET_IO.NO_1588.RXDISPERR_INT_i_1 
       (.I0(rxdisperr),
        .I1(CONFIGURATION_VECTOR_REG),
        .I2(MGT_RX_RESET),
        .O(\USE_ROCKET_IO.NO_1588.RXDISPERR_INT_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RXDISPERR_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(\USE_ROCKET_IO.NO_1588.RXDISPERR_INT_i_1_n_0 ),
        .Q(D),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1 
       (.I0(rxnotintable),
        .I1(CONFIGURATION_VECTOR_REG),
        .I2(MGT_RX_RESET),
        .O(\USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(\USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1_n_0 ),
        .Q(RXNOTINTABLE_INT),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.TXBUFERR_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(txbuferr),
        .Q(TXBUFERR_INT),
        .R(MGT_TX_RESET));
  FDRE \USE_ROCKET_IO.TXCHARDISPMODE_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_0),
        .Q(txchardispmode),
        .R(MGT_TX_RESET));
  FDRE \USE_ROCKET_IO.TXCHARDISPVAL_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_21),
        .Q(txchardispval),
        .R(1'b0));
  FDRE \USE_ROCKET_IO.TXCHARISK_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_9),
        .Q(txcharisk),
        .R(MGT_TX_RESET));
  FDRE \USE_ROCKET_IO.TXDATA_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_5),
        .Q(txdata[0]),
        .R(1'b0));
  FDRE \USE_ROCKET_IO.TXDATA_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_4),
        .Q(txdata[1]),
        .R(1'b0));
  FDSE \USE_ROCKET_IO.TXDATA_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_8),
        .Q(txdata[2]),
        .S(TRANSMITTER_n_20));
  FDSE \USE_ROCKET_IO.TXDATA_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_7),
        .Q(txdata[3]),
        .S(TRANSMITTER_n_20));
  FDRE \USE_ROCKET_IO.TXDATA_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_3),
        .Q(txdata[4]),
        .R(1'b0));
  FDSE \USE_ROCKET_IO.TXDATA_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_6),
        .Q(txdata[5]),
        .S(TRANSMITTER_n_20));
  FDRE \USE_ROCKET_IO.TXDATA_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_2),
        .Q(txdata[6]),
        .R(1'b0));
  FDSE \USE_ROCKET_IO.TXDATA_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(TRANSMITTER_n_1),
        .Q(txdata[7]),
        .S(TRANSMITTER_n_20));
endmodule

(* ORIG_REF_NAME = "RX" *) 
module gig_ethernet_pcs_pma_1_RX
   (gmii_rx_er,
    status_vector,
    gmii_rx_dv,
    gmii_rxd,
    Q,
    userclk2,
    SR,
    SYNC_STATUS_REG0,
    \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ,
    D,
    \USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg[1] ,
    RXNOTINTABLE_INT,
    p_40_in,
    RXEVEN,
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2] ,
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ,
    \USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[2] );
  output gmii_rx_er;
  output [2:0]status_vector;
  output gmii_rx_dv;
  output [7:0]gmii_rxd;
  input [7:0]Q;
  input userclk2;
  input [0:0]SR;
  input SYNC_STATUS_REG0;
  input \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ;
  input D;
  input \USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg[1] ;
  input RXNOTINTABLE_INT;
  input p_40_in;
  input RXEVEN;
  input \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2] ;
  input [0:0]\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ;
  input [2:0]\USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[2] ;

  wire C;
  wire C0;
  wire CGBAD;
  wire CGBAD_REG1;
  wire CGBAD_REG2;
  wire CGBAD_REG3;
  wire C_HDR_REMOVED;
  wire C_HDR_REMOVED_REG;
  wire C_REG1;
  wire C_REG2;
  wire C_REG3;
  wire D;
  wire D0p0;
  wire D0p0_REG;
  wire D0p0_REG_i_2_n_0;
  wire EOP;
  wire EOP0;
  wire EOP_REG1;
  wire EOP_REG10;
  wire EOP_i_2_n_0;
  wire EXTEND;
  wire EXTEND_ERR;
  wire EXTEND_ERR0;
  wire EXTEND_REG1;
  wire EXTEND_REG2;
  wire EXTEND_REG3;
  wire EXTEND_i_1_n_0;
  wire EXT_ILLEGAL_K;
  wire EXT_ILLEGAL_K0;
  wire EXT_ILLEGAL_K_REG1;
  wire EXT_ILLEGAL_K_REG2;
  wire FALSE_CARRIER;
  wire FALSE_CARRIER_REG1;
  wire FALSE_CARRIER_REG2;
  wire FALSE_CARRIER_REG3;
  wire FALSE_CARRIER_i_1_n_0;
  wire FALSE_CARRIER_i_2_n_0;
  wire FALSE_CARRIER_i_3_n_0;
  wire FALSE_CARRIER_i_4_n_0;
  wire FALSE_DATA;
  wire FALSE_DATA0;
  wire FALSE_DATA_i_2_n_0;
  wire FALSE_DATA_i_3_n_0;
  wire FALSE_DATA_i_4_n_0;
  wire FALSE_K;
  wire FALSE_K0;
  wire FALSE_K_i_2_n_0;
  wire FALSE_K_i_3_n_0;
  wire FALSE_NIT;
  wire FALSE_NIT0;
  wire FALSE_NIT_i_2_n_0;
  wire FALSE_NIT_i_3_n_0;
  wire FALSE_NIT_i_4_n_0;
  wire FROM_IDLE_D;
  wire FROM_IDLE_D0;
  wire FROM_RX_CX;
  wire FROM_RX_CX0;
  wire FROM_RX_CX_i_2_n_0;
  wire FROM_RX_K;
  wire FROM_RX_K0;
  wire I;
  wire I0;
  wire I335_in;
  wire \IDLE_REG_reg_n_0_[0] ;
  wire \IDLE_REG_reg_n_0_[2] ;
  wire ILLEGAL_K;
  wire ILLEGAL_K0;
  wire ILLEGAL_K_REG1;
  wire ILLEGAL_K_REG2;
  wire I_REG_reg_n_0;
  wire I_i_2_n_0;
  wire I_i_4_n_0;
  wire K23p7;
  wire K28p5;
  wire K28p5_REG1;
  wire K28p5_REG2;
  wire K29p7;
  wire \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2] ;
  wire [0:0]\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ;
  wire [7:0]Q;
  wire R;
  wire RECEIVE;
  wire RECEIVE_i_1_n_0;
  wire RUDI_C0;
  wire RUDI_I0;
  wire RXCHARISK_REG1;
  wire \RXDATA_REG4_reg[0]_srl4_n_0 ;
  wire \RXDATA_REG4_reg[1]_srl4_n_0 ;
  wire \RXDATA_REG4_reg[2]_srl4_n_0 ;
  wire \RXDATA_REG4_reg[3]_srl4_n_0 ;
  wire \RXDATA_REG4_reg[4]_srl4_n_0 ;
  wire \RXDATA_REG4_reg[5]_srl4_n_0 ;
  wire \RXDATA_REG4_reg[6]_srl4_n_0 ;
  wire \RXDATA_REG4_reg[7]_srl4_n_0 ;
  wire [7:0]RXDATA_REG5;
  wire \RXD[0]_i_1_n_0 ;
  wire \RXD[1]_i_1_n_0 ;
  wire \RXD[2]_i_1_n_0 ;
  wire \RXD[3]_i_1_n_0 ;
  wire \RXD[4]_i_1_n_0 ;
  wire \RXD[5]_i_1_n_0 ;
  wire \RXD[6]_i_1_n_0 ;
  wire \RXD[7]_i_1_n_0 ;
  wire RXEVEN;
  wire RXNOTINTABLE_INT;
  wire RX_CONFIG_VALID_INT;
  wire RX_CONFIG_VALID_INT0;
  wire RX_CONFIG_VALID_INT_i_2_n_0;
  wire \RX_CONFIG_VALID_REG_reg_n_0_[0] ;
  wire \RX_CONFIG_VALID_REG_reg_n_0_[3] ;
  wire RX_DATA_ERROR;
  wire RX_DATA_ERROR0;
  wire RX_DATA_ERROR_i_2_n_0;
  wire RX_DATA_ERROR_i_3_n_0;
  wire RX_DV_i_1_n_0;
  wire RX_DV_i_2_n_0;
  wire RX_ER0;
  wire RX_ER_i_2_n_0;
  wire RX_INVALID_i_2_n_0;
  wire R_REG1;
  wire R_i_2_n_0;
  wire R_i_3_n_0;
  wire R_i_4_n_0;
  wire S;
  wire S0;
  wire S2;
  wire SOP;
  wire SOP0;
  wire SOP_REG1;
  wire SOP_REG2;
  wire SOP_REG3;
  wire [0:0]SR;
  wire SYNC_STATUS_REG;
  wire SYNC_STATUS_REG0;
  wire S_i_2_n_0;
  wire T;
  wire T_REG1;
  wire T_REG2;
  wire \USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg[1] ;
  wire \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ;
  wire [2:0]\USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[2] ;
  wire WAIT_FOR_K;
  wire WAIT_FOR_K_i_1_n_0;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire p_1_in;
  wire p_40_in;
  wire [2:0]status_vector;
  wire userclk2;

  FDRE CGBAD_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(CGBAD),
        .Q(CGBAD_REG1),
        .R(1'b0));
  FDRE CGBAD_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(CGBAD_REG1),
        .Q(CGBAD_REG2),
        .R(1'b0));
  FDRE CGBAD_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(CGBAD_REG2),
        .Q(CGBAD_REG3),
        .R(SR));
  LUT3 #(
    .INIT(8'hFE)) 
    CGBAD_i_1
       (.I0(RXNOTINTABLE_INT),
        .I1(\USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg[1] ),
        .I2(D),
        .O(S2));
  FDRE CGBAD_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(S2),
        .Q(CGBAD),
        .R(SR));
  LUT4 #(
    .INIT(16'h0400)) 
    C_HDR_REMOVED_REG_i_1
       (.I0(\USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[2] [1]),
        .I1(\USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[2] [0]),
        .I2(\USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[2] [2]),
        .I3(C_REG2),
        .O(C_HDR_REMOVED));
  FDRE C_HDR_REMOVED_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C_HDR_REMOVED),
        .Q(C_HDR_REMOVED_REG),
        .R(1'b0));
  FDRE C_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C),
        .Q(C_REG1),
        .R(1'b0));
  FDRE C_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C_REG1),
        .Q(C_REG2),
        .R(1'b0));
  FDRE C_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C_REG2),
        .Q(C_REG3),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    C_i_1
       (.I0(I335_in),
        .I1(K28p5_REG1),
        .O(C0));
  FDRE C_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C0),
        .Q(C),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    D0p0_REG_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(D0p0_REG_i_2_n_0),
        .O(D0p0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    D0p0_REG_i_2
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .O(D0p0_REG_i_2_n_0));
  FDRE D0p0_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(D0p0),
        .Q(D0p0_REG),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF8)) 
    EOP_REG1_i_1
       (.I0(EXTEND_REG1),
        .I1(EXTEND),
        .I2(EOP),
        .O(EOP_REG10));
  FDRE EOP_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EOP_REG10),
        .Q(EOP_REG1),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8888888)) 
    EOP_i_1
       (.I0(I_REG_reg_n_0),
        .I1(K28p5_REG1),
        .I2(RXEVEN),
        .I3(C_REG1),
        .I4(D0p0_REG),
        .I5(EOP_i_2_n_0),
        .O(EOP0));
  LUT5 #(
    .INIT(32'h88888000)) 
    EOP_i_2
       (.I0(T_REG2),
        .I1(R_REG1),
        .I2(K28p5_REG1),
        .I3(RXEVEN),
        .I4(R),
        .O(EOP_i_2_n_0));
  FDRE EOP_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EOP0),
        .Q(EOP),
        .R(SR));
  LUT3 #(
    .INIT(8'hF8)) 
    EXTEND_ERR_i_1
       (.I0(EXTEND_REG3),
        .I1(CGBAD_REG3),
        .I2(EXT_ILLEGAL_K_REG2),
        .O(EXTEND_ERR0));
  FDRE EXTEND_ERR_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXTEND_ERR0),
        .Q(EXTEND_ERR),
        .R(SYNC_STATUS_REG0));
  FDRE EXTEND_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXTEND),
        .Q(EXTEND_REG1),
        .R(1'b0));
  FDRE EXTEND_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXTEND_REG1),
        .Q(EXTEND_REG2),
        .R(1'b0));
  FDRE EXTEND_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXTEND_REG2),
        .Q(EXTEND_REG3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF2222222F0000000)) 
    EXTEND_i_1
       (.I0(FROM_RX_CX_i_2_n_0),
        .I1(S),
        .I2(R),
        .I3(RECEIVE),
        .I4(R_REG1),
        .I5(EXTEND),
        .O(EXTEND_i_1_n_0));
  FDRE EXTEND_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXTEND_i_1_n_0),
        .Q(EXTEND),
        .R(SYNC_STATUS_REG0));
  FDRE EXT_ILLEGAL_K_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXT_ILLEGAL_K),
        .Q(EXT_ILLEGAL_K_REG1),
        .R(SYNC_STATUS_REG0));
  FDRE EXT_ILLEGAL_K_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXT_ILLEGAL_K_REG1),
        .Q(EXT_ILLEGAL_K_REG2),
        .R(SYNC_STATUS_REG0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000444)) 
    EXT_ILLEGAL_K_i_1
       (.I0(S),
        .I1(EXTEND_REG1),
        .I2(K28p5_REG1),
        .I3(RXEVEN),
        .I4(R),
        .O(EXT_ILLEGAL_K0));
  FDRE EXT_ILLEGAL_K_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXT_ILLEGAL_K0),
        .Q(EXT_ILLEGAL_K),
        .R(SYNC_STATUS_REG0));
  FDRE FALSE_CARRIER_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_CARRIER),
        .Q(FALSE_CARRIER_REG1),
        .R(1'b0));
  FDRE FALSE_CARRIER_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_CARRIER_REG1),
        .Q(FALSE_CARRIER_REG2),
        .R(1'b0));
  FDRE FALSE_CARRIER_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_CARRIER_REG2),
        .Q(FALSE_CARRIER_REG3),
        .R(SYNC_STATUS_REG0));
  LUT6 #(
    .INIT(64'h22EFEFEF22202020)) 
    FALSE_CARRIER_i_1
       (.I0(FALSE_CARRIER_i_2_n_0),
        .I1(FALSE_CARRIER_i_3_n_0),
        .I2(FALSE_CARRIER_i_4_n_0),
        .I3(RXEVEN),
        .I4(K28p5_REG1),
        .I5(FALSE_CARRIER),
        .O(FALSE_CARRIER_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    FALSE_CARRIER_i_2
       (.I0(p_40_in),
        .I1(I_REG_reg_n_0),
        .I2(K28p5_REG1),
        .I3(S),
        .O(FALSE_CARRIER_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    FALSE_CARRIER_i_3
       (.I0(FALSE_NIT),
        .I1(FALSE_DATA),
        .I2(FALSE_K),
        .O(FALSE_CARRIER_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    FALSE_CARRIER_i_4
       (.I0(p_40_in),
        .I1(I_REG_reg_n_0),
        .I2(K28p5_REG1),
        .I3(S),
        .O(FALSE_CARRIER_i_4_n_0));
  FDRE FALSE_CARRIER_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_CARRIER_i_1_n_0),
        .Q(FALSE_CARRIER),
        .R(SYNC_STATUS_REG0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hABBFAAAA)) 
    FALSE_DATA_i_1
       (.I0(FALSE_DATA_i_2_n_0),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(FALSE_DATA_i_3_n_0),
        .O(FALSE_DATA0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    FALSE_DATA_i_2
       (.I0(Q[5]),
        .I1(Q[7]),
        .I2(RXNOTINTABLE_INT),
        .I3(Q[6]),
        .I4(FALSE_DATA_i_4_n_0),
        .O(FALSE_DATA_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    FALSE_DATA_i_3
       (.I0(Q[7]),
        .I1(\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .I2(R_i_2_n_0),
        .I3(RXNOTINTABLE_INT),
        .I4(Q[6]),
        .I5(Q[5]),
        .O(FALSE_DATA_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000040000C8)) 
    FALSE_DATA_i_4
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .O(FALSE_DATA_i_4_n_0));
  FDRE FALSE_DATA_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_DATA0),
        .Q(FALSE_DATA),
        .R(SR));
  LUT6 #(
    .INIT(64'h0800000000000800)) 
    FALSE_K_i_1
       (.I0(FALSE_K_i_2_n_0),
        .I1(FALSE_K_i_3_n_0),
        .I2(RXNOTINTABLE_INT),
        .I3(Q[7]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(FALSE_K0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    FALSE_K_i_2
       (.I0(\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(FALSE_K_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    FALSE_K_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(FALSE_K_i_3_n_0));
  FDRE FALSE_K_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_K0),
        .Q(FALSE_K),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFF280028002800)) 
    FALSE_NIT_i_1
       (.I0(FALSE_NIT_i_2_n_0),
        .I1(D),
        .I2(Q[7]),
        .I3(RXNOTINTABLE_INT),
        .I4(FALSE_NIT_i_3_n_0),
        .I5(FALSE_NIT_i_4_n_0),
        .O(FALSE_NIT0));
  LUT6 #(
    .INIT(64'h00000088F0000000)) 
    FALSE_NIT_i_2
       (.I0(FALSE_K_i_2_n_0),
        .I1(Q[5]),
        .I2(D0p0_REG_i_2_n_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[6]),
        .O(FALSE_NIT_i_2_n_0));
  LUT6 #(
    .INIT(64'h00F0000000008800)) 
    FALSE_NIT_i_3
       (.I0(FALSE_K_i_2_n_0),
        .I1(Q[5]),
        .I2(D0p0_REG_i_2_n_0),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(D),
        .O(FALSE_NIT_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h60)) 
    FALSE_NIT_i_4
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(RXNOTINTABLE_INT),
        .O(FALSE_NIT_i_4_n_0));
  FDRE FALSE_NIT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_NIT0),
        .Q(FALSE_NIT),
        .R(SR));
  LUT4 #(
    .INIT(16'h0004)) 
    FROM_IDLE_D_i_1
       (.I0(p_40_in),
        .I1(I_REG_reg_n_0),
        .I2(K28p5_REG1),
        .I3(WAIT_FOR_K),
        .O(FROM_IDLE_D0));
  FDRE FROM_IDLE_D_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FROM_IDLE_D0),
        .Q(FROM_IDLE_D),
        .R(SYNC_STATUS_REG0));
  LUT6 #(
    .INIT(64'hFFECFFECFFECA8A8)) 
    FROM_RX_CX_i_1
       (.I0(C_REG3),
        .I1(CGBAD),
        .I2(FROM_RX_CX_i_2_n_0),
        .I3(RXCHARISK_REG1),
        .I4(C_REG2),
        .I5(C_REG1),
        .O(FROM_RX_CX0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    FROM_RX_CX_i_2
       (.I0(K28p5_REG1),
        .I1(RXEVEN),
        .O(FROM_RX_CX_i_2_n_0));
  FDRE FROM_RX_CX_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FROM_RX_CX0),
        .Q(FROM_RX_CX),
        .R(SYNC_STATUS_REG0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    FROM_RX_K_i_1
       (.I0(p_40_in),
        .I1(K28p5_REG2),
        .I2(RXCHARISK_REG1),
        .I3(CGBAD),
        .O(FROM_RX_K0));
  FDRE FROM_RX_K_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FROM_RX_K0),
        .Q(FROM_RX_K),
        .R(SYNC_STATUS_REG0));
  FDRE \IDLE_REG_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(I_REG_reg_n_0),
        .Q(\IDLE_REG_reg_n_0_[0] ),
        .R(SR));
  FDRE \IDLE_REG_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IDLE_REG_reg_n_0_[0] ),
        .Q(p_0_in1_in),
        .R(SR));
  FDRE \IDLE_REG_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_0_in1_in),
        .Q(\IDLE_REG_reg_n_0_[2] ),
        .R(SR));
  FDRE ILLEGAL_K_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(ILLEGAL_K),
        .Q(ILLEGAL_K_REG1),
        .R(SYNC_STATUS_REG0));
  FDRE ILLEGAL_K_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(ILLEGAL_K_REG1),
        .Q(ILLEGAL_K_REG2),
        .R(SYNC_STATUS_REG0));
  LUT4 #(
    .INIT(16'h0100)) 
    ILLEGAL_K_i_1
       (.I0(R),
        .I1(T),
        .I2(K28p5_REG1),
        .I3(RXCHARISK_REG1),
        .O(ILLEGAL_K0));
  FDRE ILLEGAL_K_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(ILLEGAL_K0),
        .Q(ILLEGAL_K),
        .R(SYNC_STATUS_REG0));
  FDRE I_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(I),
        .Q(I_REG_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h3323222222222222)) 
    I_i_1
       (.I0(I_i_2_n_0),
        .I1(I335_in),
        .I2(\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .I3(p_40_in),
        .I4(RXEVEN),
        .I5(K28p5_REG1),
        .O(I0));
  LUT6 #(
    .INIT(64'h8080808080808000)) 
    I_i_2
       (.I0(I_REG_reg_n_0),
        .I1(p_40_in),
        .I2(RXEVEN),
        .I3(FALSE_K),
        .I4(FALSE_DATA),
        .I5(FALSE_NIT),
        .O(I_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000C0000A000A0)) 
    I_i_3
       (.I0(I_i_4_n_0),
        .I1(D0p0_REG_i_2_n_0),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[7]),
        .I5(Q[6]),
        .O(I335_in));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    I_i_4
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .I5(Q[3]),
        .O(I_i_4_n_0));
  FDRE I_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(I0),
        .Q(I),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    K28p5_REG1_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(FALSE_K_i_2_n_0),
        .O(K28p5));
  FDRE K28p5_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(K28p5),
        .Q(K28p5_REG1),
        .R(1'b0));
  FDRE K28p5_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(K28p5_REG1),
        .Q(K28p5_REG2),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBA)) 
    RECEIVE_i_1
       (.I0(SOP_REG2),
        .I1(EOP),
        .I2(RECEIVE),
        .O(RECEIVE_i_1_n_0));
  FDRE RECEIVE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RECEIVE_i_1_n_0),
        .Q(RECEIVE),
        .R(SYNC_STATUS_REG0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    RUDI_C_i_1
       (.I0(p_1_in),
        .I1(\RX_CONFIG_VALID_REG_reg_n_0_[0] ),
        .I2(\RX_CONFIG_VALID_REG_reg_n_0_[3] ),
        .I3(p_0_in2_in),
        .O(RUDI_C0));
  FDRE RUDI_C_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RUDI_C0),
        .Q(status_vector[0]),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    RUDI_I_i_1
       (.I0(\IDLE_REG_reg_n_0_[2] ),
        .I1(p_0_in1_in),
        .O(RUDI_I0));
  FDRE RUDI_I_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RUDI_I0),
        .Q(status_vector[1]),
        .R(SR));
  FDRE RXCHARISK_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .Q(RXCHARISK_REG1),
        .R(1'b0));
  (* srl_bus_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_1_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
  (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_1_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[0]_srl4 " *) 
  SRL16E \RXDATA_REG4_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[0]),
        .Q(\RXDATA_REG4_reg[0]_srl4_n_0 ));
  (* srl_bus_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_1_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
  (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_1_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[1]_srl4 " *) 
  SRL16E \RXDATA_REG4_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[1]),
        .Q(\RXDATA_REG4_reg[1]_srl4_n_0 ));
  (* srl_bus_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_1_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
  (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_1_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[2]_srl4 " *) 
  SRL16E \RXDATA_REG4_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[2]),
        .Q(\RXDATA_REG4_reg[2]_srl4_n_0 ));
  (* srl_bus_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_1_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
  (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_1_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[3]_srl4 " *) 
  SRL16E \RXDATA_REG4_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[3]),
        .Q(\RXDATA_REG4_reg[3]_srl4_n_0 ));
  (* srl_bus_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_1_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
  (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_1_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[4]_srl4 " *) 
  SRL16E \RXDATA_REG4_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[4]),
        .Q(\RXDATA_REG4_reg[4]_srl4_n_0 ));
  (* srl_bus_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_1_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
  (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_1_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[5]_srl4 " *) 
  SRL16E \RXDATA_REG4_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[5]),
        .Q(\RXDATA_REG4_reg[5]_srl4_n_0 ));
  (* srl_bus_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_1_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
  (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_1_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[6]_srl4 " *) 
  SRL16E \RXDATA_REG4_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[6]),
        .Q(\RXDATA_REG4_reg[6]_srl4_n_0 ));
  (* srl_bus_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_1_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
  (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_1_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[7]_srl4 " *) 
  SRL16E \RXDATA_REG4_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[7]),
        .Q(\RXDATA_REG4_reg[7]_srl4_n_0 ));
  FDRE \RXDATA_REG5_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXDATA_REG4_reg[0]_srl4_n_0 ),
        .Q(RXDATA_REG5[0]),
        .R(1'b0));
  FDRE \RXDATA_REG5_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXDATA_REG4_reg[1]_srl4_n_0 ),
        .Q(RXDATA_REG5[1]),
        .R(1'b0));
  FDRE \RXDATA_REG5_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXDATA_REG4_reg[2]_srl4_n_0 ),
        .Q(RXDATA_REG5[2]),
        .R(1'b0));
  FDRE \RXDATA_REG5_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXDATA_REG4_reg[3]_srl4_n_0 ),
        .Q(RXDATA_REG5[3]),
        .R(1'b0));
  FDRE \RXDATA_REG5_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXDATA_REG4_reg[4]_srl4_n_0 ),
        .Q(RXDATA_REG5[4]),
        .R(1'b0));
  FDRE \RXDATA_REG5_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXDATA_REG4_reg[5]_srl4_n_0 ),
        .Q(RXDATA_REG5[5]),
        .R(1'b0));
  FDRE \RXDATA_REG5_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXDATA_REG4_reg[6]_srl4_n_0 ),
        .Q(RXDATA_REG5[6]),
        .R(1'b0));
  FDRE \RXDATA_REG5_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXDATA_REG4_reg[7]_srl4_n_0 ),
        .Q(RXDATA_REG5[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAFAE)) 
    \RXD[0]_i_1 
       (.I0(SOP_REG3),
        .I1(EXTEND_REG1),
        .I2(FALSE_CARRIER_REG3),
        .I3(RXDATA_REG5[0]),
        .O(\RXD[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0F0E)) 
    \RXD[1]_i_1 
       (.I0(EXTEND_REG1),
        .I1(FALSE_CARRIER_REG3),
        .I2(SOP_REG3),
        .I3(RXDATA_REG5[1]),
        .O(\RXD[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \RXD[2]_i_1 
       (.I0(SOP_REG3),
        .I1(EXTEND_REG1),
        .I2(FALSE_CARRIER_REG3),
        .I3(RXDATA_REG5[2]),
        .O(\RXD[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0F0E)) 
    \RXD[3]_i_1 
       (.I0(EXTEND_REG1),
        .I1(FALSE_CARRIER_REG3),
        .I2(SOP_REG3),
        .I3(RXDATA_REG5[3]),
        .O(\RXD[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    \RXD[4]_i_1 
       (.I0(SOP_REG3),
        .I1(RXDATA_REG5[4]),
        .I2(EXTEND_ERR),
        .I3(EXTEND_REG1),
        .I4(FALSE_CARRIER_REG3),
        .O(\RXD[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \RXD[5]_i_1 
       (.I0(RXDATA_REG5[5]),
        .I1(SOP_REG3),
        .I2(EXTEND_REG1),
        .I3(FALSE_CARRIER_REG3),
        .O(\RXD[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFF10)) 
    \RXD[6]_i_1 
       (.I0(EXTEND_REG1),
        .I1(FALSE_CARRIER_REG3),
        .I2(RXDATA_REG5[6]),
        .I3(SOP_REG3),
        .O(\RXD[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \RXD[7]_i_1 
       (.I0(RXDATA_REG5[7]),
        .I1(SOP_REG3),
        .I2(EXTEND_REG1),
        .I3(FALSE_CARRIER_REG3),
        .O(\RXD[7]_i_1_n_0 ));
  FDRE \RXD_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXD[0]_i_1_n_0 ),
        .Q(gmii_rxd[0]),
        .R(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ));
  FDRE \RXD_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXD[1]_i_1_n_0 ),
        .Q(gmii_rxd[1]),
        .R(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ));
  FDRE \RXD_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXD[2]_i_1_n_0 ),
        .Q(gmii_rxd[2]),
        .R(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ));
  FDRE \RXD_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXD[3]_i_1_n_0 ),
        .Q(gmii_rxd[3]),
        .R(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ));
  FDRE \RXD_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXD[4]_i_1_n_0 ),
        .Q(gmii_rxd[4]),
        .R(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ));
  FDRE \RXD_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXD[5]_i_1_n_0 ),
        .Q(gmii_rxd[5]),
        .R(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ));
  FDRE \RXD_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXD[6]_i_1_n_0 ),
        .Q(gmii_rxd[6]),
        .R(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ));
  FDRE \RXD_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXD[7]_i_1_n_0 ),
        .Q(gmii_rxd[7]),
        .R(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ));
  LUT6 #(
    .INIT(64'h0000000000000E00)) 
    RX_CONFIG_VALID_INT_i_1
       (.I0(C_HDR_REMOVED_REG),
        .I1(C_REG1),
        .I2(\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .I3(p_40_in),
        .I4(RX_CONFIG_VALID_INT_i_2_n_0),
        .I5(S2),
        .O(RX_CONFIG_VALID_INT0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    RX_CONFIG_VALID_INT_i_2
       (.I0(CGBAD),
        .I1(RXCHARISK_REG1),
        .O(RX_CONFIG_VALID_INT_i_2_n_0));
  FDRE RX_CONFIG_VALID_INT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_CONFIG_VALID_INT0),
        .Q(RX_CONFIG_VALID_INT),
        .R(SR));
  FDRE \RX_CONFIG_VALID_REG_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_CONFIG_VALID_INT),
        .Q(\RX_CONFIG_VALID_REG_reg_n_0_[0] ),
        .R(SR));
  FDRE \RX_CONFIG_VALID_REG_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RX_CONFIG_VALID_REG_reg_n_0_[0] ),
        .Q(p_0_in2_in),
        .R(SR));
  FDRE \RX_CONFIG_VALID_REG_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_0_in2_in),
        .Q(p_1_in),
        .R(SR));
  FDRE \RX_CONFIG_VALID_REG_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_1_in),
        .Q(\RX_CONFIG_VALID_REG_reg_n_0_[3] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFF00FF00FF00BA00)) 
    RX_DATA_ERROR_i_1
       (.I0(RX_DATA_ERROR_i_2_n_0),
        .I1(T_REG1),
        .I2(R),
        .I3(RX_DATA_ERROR_i_3_n_0),
        .I4(T_REG2),
        .I5(K28p5_REG1),
        .O(RX_DATA_ERROR0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    RX_DATA_ERROR_i_2
       (.I0(CGBAD_REG3),
        .I1(ILLEGAL_K_REG2),
        .I2(I_REG_reg_n_0),
        .I3(C_REG1),
        .O(RX_DATA_ERROR_i_2_n_0));
  LUT6 #(
    .INIT(64'hFF08FFFF00000000)) 
    RX_DATA_ERROR_i_3
       (.I0(T_REG2),
        .I1(FROM_RX_CX_i_2_n_0),
        .I2(R),
        .I3(RX_DATA_ERROR_i_2_n_0),
        .I4(R_REG1),
        .I5(RECEIVE),
        .O(RX_DATA_ERROR_i_3_n_0));
  FDRE RX_DATA_ERROR_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_DATA_ERROR0),
        .Q(RX_DATA_ERROR),
        .R(SYNC_STATUS_REG0));
  LUT6 #(
    .INIT(64'h88FF00F088880000)) 
    RX_DV_i_1
       (.I0(RX_DV_i_2_n_0),
        .I1(SOP_REG3),
        .I2(RECEIVE),
        .I3(EOP_REG1),
        .I4(p_40_in),
        .I5(gmii_rx_dv),
        .O(RX_DV_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    RX_DV_i_2
       (.I0(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2] ),
        .I1(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ),
        .O(RX_DV_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RX_DV_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_DV_i_1_n_0),
        .Q(gmii_rx_dv),
        .R(SR));
  LUT6 #(
    .INIT(64'h000E000E000F0000)) 
    RX_ER_i_1
       (.I0(RX_ER_i_2_n_0),
        .I1(RX_DATA_ERROR),
        .I2(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2] ),
        .I3(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ),
        .I4(RECEIVE),
        .I5(p_40_in),
        .O(RX_ER0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    RX_ER_i_2
       (.I0(EXTEND_REG1),
        .I1(FALSE_CARRIER_REG3),
        .O(RX_ER_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RX_ER_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_ER0),
        .Q(gmii_rx_er),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAFEFFFFAAFEAAFE)) 
    RX_INVALID_i_2
       (.I0(FROM_RX_CX),
        .I1(FROM_RX_K),
        .I2(FROM_IDLE_D),
        .I3(p_40_in),
        .I4(K28p5_REG1),
        .I5(status_vector[2]),
        .O(RX_INVALID_i_2_n_0));
  FDRE RX_INVALID_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_INVALID_i_2_n_0),
        .Q(status_vector[2]),
        .R(SYNC_STATUS_REG0));
  FDRE R_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(R),
        .Q(R_REG1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    R_i_1
       (.I0(R_i_2_n_0),
        .I1(R_i_3_n_0),
        .I2(R_i_4_n_0),
        .I3(Q[3]),
        .I4(Q[6]),
        .I5(\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .O(K23p7));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    R_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(R_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    R_i_3
       (.I0(Q[5]),
        .I1(Q[7]),
        .O(R_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    R_i_4
       (.I0(Q[4]),
        .I1(Q[2]),
        .O(R_i_4_n_0));
  FDRE R_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(K23p7),
        .Q(R),
        .R(1'b0));
  FDRE SOP_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SOP),
        .Q(SOP_REG1),
        .R(1'b0));
  FDRE SOP_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SOP_REG1),
        .Q(SOP_REG2),
        .R(1'b0));
  FDRE SOP_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SOP_REG2),
        .Q(SOP_REG3),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08080800)) 
    SOP_i_1
       (.I0(p_40_in),
        .I1(S),
        .I2(WAIT_FOR_K),
        .I3(I_REG_reg_n_0),
        .I4(EXTEND),
        .O(SOP0));
  FDRE SOP_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SOP0),
        .Q(SOP),
        .R(SR));
  FDRE SYNC_STATUS_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(1'b1),
        .Q(SYNC_STATUS_REG),
        .R(SYNC_STATUS_REG0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    S_i_1
       (.I0(S_i_2_n_0),
        .I1(Q[3]),
        .I2(\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(R_i_3_n_0),
        .O(S0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    S_i_2
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(D),
        .I4(\USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg[1] ),
        .I5(RXNOTINTABLE_INT),
        .O(S_i_2_n_0));
  FDRE S_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(S0),
        .Q(S),
        .R(1'b0));
  FDRE T_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(T),
        .Q(T_REG1),
        .R(1'b0));
  FDRE T_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(T_REG1),
        .Q(T_REG2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    T_i_1
       (.I0(Q[5]),
        .I1(Q[7]),
        .I2(Q[1]),
        .I3(Q[6]),
        .I4(Q[0]),
        .I5(FALSE_K_i_2_n_0),
        .O(K29p7));
  FDRE T_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(K29p7),
        .Q(T),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F0F)) 
    WAIT_FOR_K_i_1
       (.I0(RXEVEN),
        .I1(K28p5_REG1),
        .I2(SYNC_STATUS_REG),
        .I3(WAIT_FOR_K),
        .O(WAIT_FOR_K_i_1_n_0));
  FDRE WAIT_FOR_K_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(WAIT_FOR_K_i_1_n_0),
        .Q(WAIT_FOR_K),
        .R(SYNC_STATUS_REG0));
endmodule

(* ORIG_REF_NAME = "SYNCHRONISE" *) 
module gig_ethernet_pcs_pma_1_SYNCHRONISE
   (RXEVEN,
    p_40_in,
    SYNC_STATUS_REG0,
    STATUS_VECTOR_0_PRE0,
    enablealign,
    SIGNAL_DETECT_MOD,
    userclk2,
    SR,
    \USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg ,
    \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ,
    CONFIGURATION_VECTOR_REG,
    D,
    \USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg[1] ,
    RXNOTINTABLE_INT,
    reset_done);
  output RXEVEN;
  output p_40_in;
  output SYNC_STATUS_REG0;
  output STATUS_VECTOR_0_PRE0;
  output enablealign;
  input SIGNAL_DETECT_MOD;
  input userclk2;
  input [0:0]SR;
  input \USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg ;
  input \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ;
  input [0:0]CONFIGURATION_VECTOR_REG;
  input D;
  input \USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg[1] ;
  input RXNOTINTABLE_INT;
  input reset_done;

  wire CGBAD;
  wire [0:0]CONFIGURATION_VECTOR_REG;
  wire D;
  wire ENCOMMAALIGN_i_1_n_0;
  wire ENCOMMAALIGN_i_2_n_0;
  wire EVEN_i_1_n_0;
  wire \FSM_sequential_STATE[0]_i_2_n_0 ;
  wire \FSM_sequential_STATE[0]_i_3_n_0 ;
  wire \FSM_sequential_STATE[1]_i_2_n_0 ;
  wire \FSM_sequential_STATE[1]_i_3_n_0 ;
  wire \FSM_sequential_STATE[2]_i_2_n_0 ;
  wire \FSM_sequential_STATE[2]_i_3_n_0 ;
  wire \FSM_sequential_STATE[3]_i_1_n_0 ;
  wire \FSM_sequential_STATE[3]_i_2_n_0 ;
  wire \FSM_sequential_STATE[3]_i_3_n_0 ;
  wire \FSM_sequential_STATE_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_STATE_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_STATE_reg[2]_i_1_n_0 ;
  wire [1:0]GOOD_CGS;
  wire \GOOD_CGS[0]_i_1_n_0 ;
  wire \GOOD_CGS[1]_i_1_n_0 ;
  wire \GOOD_CGS[1]_i_2_n_0 ;
  wire RXEVEN;
  wire RXNOTINTABLE_INT;
  wire SIGNAL_DETECT_MOD;
  wire SIGNAL_DETECT_REG;
  wire [0:0]SR;
  (* RTL_KEEP = "yes" *) wire [3:0]STATE;
  wire STATUS_VECTOR_0_PRE0;
  wire SYNC_STATUS0;
  wire SYNC_STATUS_REG0;
  wire SYNC_STATUS_i_1_n_0;
  wire \USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg[1] ;
  wire \USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg ;
  wire \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ;
  wire enablealign;
  wire p_40_in;
  wire reset_done;
  wire userclk2;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    ENCOMMAALIGN_i_1
       (.I0(enablealign),
        .I1(ENCOMMAALIGN_i_2_n_0),
        .I2(SYNC_STATUS0),
        .O(ENCOMMAALIGN_i_1_n_0));
  LUT5 #(
    .INIT(32'h14010001)) 
    ENCOMMAALIGN_i_2
       (.I0(STATE[0]),
        .I1(STATE[1]),
        .I2(STATE[2]),
        .I3(STATE[3]),
        .I4(CGBAD),
        .O(ENCOMMAALIGN_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    ENCOMMAALIGN_i_3
       (.I0(\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .I1(STATE[0]),
        .I2(STATE[2]),
        .I3(STATE[1]),
        .I4(STATE[3]),
        .I5(CGBAD),
        .O(SYNC_STATUS0));
  FDRE ENCOMMAALIGN_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(ENCOMMAALIGN_i_1_n_0),
        .Q(enablealign),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    EVEN_i_1
       (.I0(p_40_in),
        .I1(\USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg ),
        .I2(RXEVEN),
        .O(EVEN_i_1_n_0));
  FDRE EVEN_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EVEN_i_1_n_0),
        .Q(RXEVEN),
        .R(SR));
  LUT5 #(
    .INIT(32'h61156000)) 
    \FSM_sequential_STATE[0]_i_2 
       (.I0(STATE[0]),
        .I1(CGBAD),
        .I2(STATE[2]),
        .I3(STATE[1]),
        .I4(\USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg ),
        .O(\FSM_sequential_STATE[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F000DF)) 
    \FSM_sequential_STATE[0]_i_3 
       (.I0(GOOD_CGS[1]),
        .I1(GOOD_CGS[0]),
        .I2(STATE[0]),
        .I3(STATE[2]),
        .I4(STATE[1]),
        .I5(CGBAD),
        .O(\FSM_sequential_STATE[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30330044)) 
    \FSM_sequential_STATE[1]_i_2 
       (.I0(\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .I1(STATE[0]),
        .I2(STATE[2]),
        .I3(CGBAD),
        .I4(STATE[1]),
        .O(\FSM_sequential_STATE[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF0004FF)) 
    \FSM_sequential_STATE[1]_i_3 
       (.I0(CGBAD),
        .I1(GOOD_CGS[1]),
        .I2(GOOD_CGS[0]),
        .I3(STATE[0]),
        .I4(STATE[1]),
        .I5(STATE[2]),
        .O(\FSM_sequential_STATE[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30370040)) 
    \FSM_sequential_STATE[2]_i_2 
       (.I0(\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .I1(STATE[0]),
        .I2(STATE[1]),
        .I3(CGBAD),
        .I4(STATE[2]),
        .O(\FSM_sequential_STATE[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000140E1414)) 
    \FSM_sequential_STATE[2]_i_3 
       (.I0(STATE[0]),
        .I1(STATE[1]),
        .I2(STATE[2]),
        .I3(GOOD_CGS[0]),
        .I4(GOOD_CGS[1]),
        .I5(CGBAD),
        .O(\FSM_sequential_STATE[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hF1)) 
    \FSM_sequential_STATE[3]_i_1 
       (.I0(CONFIGURATION_VECTOR_REG),
        .I1(SIGNAL_DETECT_REG),
        .I2(SR),
        .O(\FSM_sequential_STATE[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0FE000E0003030F0)) 
    \FSM_sequential_STATE[3]_i_2 
       (.I0(\FSM_sequential_STATE[3]_i_3_n_0 ),
        .I1(CGBAD),
        .I2(STATE[3]),
        .I3(STATE[2]),
        .I4(STATE[1]),
        .I5(STATE[0]),
        .O(\FSM_sequential_STATE[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_STATE[3]_i_3 
       (.I0(GOOD_CGS[0]),
        .I1(GOOD_CGS[1]),
        .O(\FSM_sequential_STATE[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \FSM_sequential_STATE[3]_i_4 
       (.I0(RXEVEN),
        .I1(\USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg ),
        .I2(D),
        .I3(\USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg[1] ),
        .I4(RXNOTINTABLE_INT),
        .O(CGBAD));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_STATE_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_sequential_STATE_reg[0]_i_1_n_0 ),
        .Q(STATE[0]),
        .R(\FSM_sequential_STATE[3]_i_1_n_0 ));
  MUXF7 \FSM_sequential_STATE_reg[0]_i_1 
       (.I0(\FSM_sequential_STATE[0]_i_2_n_0 ),
        .I1(\FSM_sequential_STATE[0]_i_3_n_0 ),
        .O(\FSM_sequential_STATE_reg[0]_i_1_n_0 ),
        .S(STATE[3]));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_STATE_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_sequential_STATE_reg[1]_i_1_n_0 ),
        .Q(STATE[1]),
        .R(\FSM_sequential_STATE[3]_i_1_n_0 ));
  MUXF7 \FSM_sequential_STATE_reg[1]_i_1 
       (.I0(\FSM_sequential_STATE[1]_i_2_n_0 ),
        .I1(\FSM_sequential_STATE[1]_i_3_n_0 ),
        .O(\FSM_sequential_STATE_reg[1]_i_1_n_0 ),
        .S(STATE[3]));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_STATE_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_sequential_STATE_reg[2]_i_1_n_0 ),
        .Q(STATE[2]),
        .R(\FSM_sequential_STATE[3]_i_1_n_0 ));
  MUXF7 \FSM_sequential_STATE_reg[2]_i_1 
       (.I0(\FSM_sequential_STATE[2]_i_2_n_0 ),
        .I1(\FSM_sequential_STATE[2]_i_3_n_0 ),
        .O(\FSM_sequential_STATE_reg[2]_i_1_n_0 ),
        .S(STATE[3]));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_STATE_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_sequential_STATE[3]_i_2_n_0 ),
        .Q(STATE[3]),
        .R(\FSM_sequential_STATE[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \GOOD_CGS[0]_i_1 
       (.I0(GOOD_CGS[0]),
        .I1(CGBAD),
        .I2(\GOOD_CGS[1]_i_2_n_0 ),
        .O(\GOOD_CGS[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h009A)) 
    \GOOD_CGS[1]_i_1 
       (.I0(GOOD_CGS[1]),
        .I1(CGBAD),
        .I2(GOOD_CGS[0]),
        .I3(\GOOD_CGS[1]_i_2_n_0 ),
        .O(\GOOD_CGS[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAABBEAAA)) 
    \GOOD_CGS[1]_i_2 
       (.I0(SR),
        .I1(STATE[0]),
        .I2(STATE[1]),
        .I3(STATE[2]),
        .I4(STATE[3]),
        .O(\GOOD_CGS[1]_i_2_n_0 ));
  FDRE \GOOD_CGS_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\GOOD_CGS[0]_i_1_n_0 ),
        .Q(GOOD_CGS[0]),
        .R(1'b0));
  FDRE \GOOD_CGS_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\GOOD_CGS[1]_i_1_n_0 ),
        .Q(GOOD_CGS[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    RX_INVALID_i_1
       (.I0(SR),
        .I1(p_40_in),
        .O(SYNC_STATUS_REG0));
  FDRE SIGNAL_DETECT_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SIGNAL_DETECT_MOD),
        .Q(SIGNAL_DETECT_REG),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    STATUS_VECTOR_0_PRE_i_1
       (.I0(p_40_in),
        .I1(reset_done),
        .O(STATUS_VECTOR_0_PRE0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    SYNC_STATUS_i_1
       (.I0(ENCOMMAALIGN_i_2_n_0),
        .I1(p_40_in),
        .I2(SYNC_STATUS0),
        .O(SYNC_STATUS_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    SYNC_STATUS_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SYNC_STATUS_i_1_n_0),
        .Q(p_40_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TX" *) 
module gig_ethernet_pcs_pma_1_TX
   (\USE_ROCKET_IO.TXCHARDISPMODE_reg ,
    \USE_ROCKET_IO.TXDATA_reg[7] ,
    D,
    \USE_ROCKET_IO.TXDATA_reg[5] ,
    \USE_ROCKET_IO.TXDATA_reg[3] ,
    \USE_ROCKET_IO.TXDATA_reg[2] ,
    \USE_ROCKET_IO.TXCHARISK_reg ,
    \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ,
    \USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg ,
    \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] ,
    \USE_ROCKET_IO.TXDATA_reg[2]_0 ,
    \USE_ROCKET_IO.TXCHARDISPVAL_reg ,
    gmii_tx_en,
    userclk2,
    \USE_ROCKET_IO.MGT_TX_RESET_INT_reg ,
    gmii_tx_er,
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ,
    gmii_txd,
    CONFIGURATION_VECTOR_REG,
    rxcharisk,
    rxchariscomma,
    rxdata);
  output \USE_ROCKET_IO.TXCHARDISPMODE_reg ;
  output \USE_ROCKET_IO.TXDATA_reg[7] ;
  output [3:0]D;
  output \USE_ROCKET_IO.TXDATA_reg[5] ;
  output \USE_ROCKET_IO.TXDATA_reg[3] ;
  output \USE_ROCKET_IO.TXDATA_reg[2] ;
  output \USE_ROCKET_IO.TXCHARISK_reg ;
  output \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ;
  output \USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg ;
  output [7:0]\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] ;
  output \USE_ROCKET_IO.TXDATA_reg[2]_0 ;
  output \USE_ROCKET_IO.TXCHARDISPVAL_reg ;
  input gmii_tx_en;
  input userclk2;
  input \USE_ROCKET_IO.MGT_TX_RESET_INT_reg ;
  input gmii_tx_er;
  input [0:0]\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ;
  input [7:0]gmii_txd;
  input [0:0]CONFIGURATION_VECTOR_REG;
  input [0:0]rxcharisk;
  input [0:0]rxchariscomma;
  input [7:0]rxdata;

  wire C1_OR_C2_i_1_n_0;
  wire C1_OR_C2_reg_n_0;
  wire CODE_GRPISK;
  wire CODE_GRPISK_i_1_n_0;
  wire \CODE_GRP[0]_i_1_n_0 ;
  wire \CODE_GRP[0]_i_2_n_0 ;
  wire \CODE_GRP[1]_i_1_n_0 ;
  wire \CODE_GRP[1]_i_2_n_0 ;
  wire \CODE_GRP[2]_i_1_n_0 ;
  wire \CODE_GRP[2]_i_2_n_0 ;
  wire \CODE_GRP[3]_i_1_n_0 ;
  wire \CODE_GRP[3]_i_2_n_0 ;
  wire \CODE_GRP[4]_i_1_n_0 ;
  wire \CODE_GRP[5]_i_1_n_0 ;
  wire \CODE_GRP[6]_i_1_n_0 ;
  wire \CODE_GRP[7]_i_1_n_0 ;
  wire \CODE_GRP[7]_i_2_n_0 ;
  wire \CODE_GRP_CNT_reg_n_0_[1] ;
  wire \CODE_GRP_reg_n_0_[0] ;
  wire [0:0]CONFIGURATION_VECTOR_REG;
  wire [6:0]CONFIG_DATA;
  wire \CONFIG_DATA_reg_n_0_[0] ;
  wire \CONFIG_DATA_reg_n_0_[1] ;
  wire \CONFIG_DATA_reg_n_0_[2] ;
  wire \CONFIG_DATA_reg_n_0_[3] ;
  wire \CONFIG_DATA_reg_n_0_[4] ;
  wire \CONFIG_DATA_reg_n_0_[5] ;
  wire \CONFIG_DATA_reg_n_0_[6] ;
  wire \CONFIG_DATA_reg_n_0_[7] ;
  wire CONFIG_K28p5;
  wire CONFIG_K28p5_0;
  wire [3:0]D;
  wire DISPARITY;
  wire INSERT_IDLE_i_1_n_0;
  wire INSERT_IDLE_reg_n_0;
  wire K28p5;
  wire K28p5_i_1_n_0;
  wire [0:0]\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ;
  wire \NO_QSGMII_DATA.TXCHARISK_i_1_n_0 ;
  wire \NO_QSGMII_DATA.TXDATA[0]_i_1_n_0 ;
  wire \NO_QSGMII_DATA.TXDATA[1]_i_1_n_0 ;
  wire \NO_QSGMII_DATA.TXDATA[2]_i_1_n_0 ;
  wire \NO_QSGMII_DATA.TXDATA[3]_i_1_n_0 ;
  wire \NO_QSGMII_DATA.TXDATA[4]_i_1_n_0 ;
  wire \NO_QSGMII_DATA.TXDATA[5]_i_1_n_0 ;
  wire \NO_QSGMII_DATA.TXDATA[6]_i_1_n_0 ;
  wire \NO_QSGMII_DATA.TXDATA[7]_i_1_n_0 ;
  wire \NO_QSGMII_DISP.DISPARITY_i_1_n_0 ;
  wire \NO_QSGMII_DISP.DISPARITY_i_2_n_0 ;
  wire \NO_QSGMII_DISP.DISPARITY_i_3_n_0 ;
  wire R;
  wire R_i_1__0_n_0;
  wire S;
  wire S0;
  wire SYNC_DISPARITY_i_1_n_0;
  wire SYNC_DISPARITY_reg_n_0;
  wire T;
  wire T0;
  wire TRIGGER_S;
  wire TRIGGER_S0;
  wire TRIGGER_T;
  wire TXCHARDISPMODE_INT;
  wire TXCHARDISPVAL;
  wire TXCHARISK_INT;
  wire [7:0]TXDATA;
  wire [7:0]TXD_REG1;
  wire TX_EN_REG1;
  wire TX_ER_REG1;
  wire TX_EVEN;
  wire TX_PACKET;
  wire TX_PACKET_i_1_n_0;
  wire \USE_ROCKET_IO.MGT_TX_RESET_INT_reg ;
  wire \USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg ;
  wire \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ;
  wire [7:0]\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] ;
  wire \USE_ROCKET_IO.TXCHARDISPMODE_reg ;
  wire \USE_ROCKET_IO.TXCHARDISPVAL_reg ;
  wire \USE_ROCKET_IO.TXCHARISK_reg ;
  wire \USE_ROCKET_IO.TXDATA_reg[2] ;
  wire \USE_ROCKET_IO.TXDATA_reg[2]_0 ;
  wire \USE_ROCKET_IO.TXDATA_reg[3] ;
  wire \USE_ROCKET_IO.TXDATA_reg[5] ;
  wire \USE_ROCKET_IO.TXDATA_reg[7] ;
  wire V;
  wire V_i_1_n_0;
  wire V_i_2_n_0;
  wire V_i_3_n_0;
  wire V_i_4_n_0;
  wire V_i_5_n_0;
  wire XMIT_CONFIG_INT;
  wire XMIT_CONFIG_INT_i_1_n_0;
  wire XMIT_DATA_INT_i_1_n_0;
  wire XMIT_DATA_INT_reg_n_0;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire p_0_in;
  wire p_0_in16_in;
  wire p_0_in35_in;
  wire p_10_out;
  wire p_1_in;
  wire p_1_in1_in;
  wire p_1_in34_in;
  wire p_33_in;
  wire p_45_in;
  wire p_8_out;
  wire [1:0]plusOp;
  wire [0:0]rxchariscomma;
  wire [0:0]rxcharisk;
  wire [7:0]rxdata;
  wire userclk2;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h3F80)) 
    C1_OR_C2_i_1
       (.I0(XMIT_CONFIG_INT),
        .I1(TX_EVEN),
        .I2(\CODE_GRP_CNT_reg_n_0_[1] ),
        .I3(C1_OR_C2_reg_n_0),
        .O(C1_OR_C2_i_1_n_0));
  FDRE C1_OR_C2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C1_OR_C2_i_1_n_0),
        .Q(C1_OR_C2_reg_n_0),
        .R(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  LUT6 #(
    .INIT(64'h3030FFFF3030FF55)) 
    CODE_GRPISK_i_1
       (.I0(TX_PACKET),
        .I1(\CODE_GRP_CNT_reg_n_0_[1] ),
        .I2(TX_EVEN),
        .I3(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ),
        .I4(XMIT_CONFIG_INT),
        .I5(\CODE_GRP[7]_i_2_n_0 ),
        .O(CODE_GRPISK_i_1_n_0));
  FDRE CODE_GRPISK_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(CODE_GRPISK_i_1_n_0),
        .Q(CODE_GRPISK),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFA00FAFC)) 
    \CODE_GRP[0]_i_1 
       (.I0(\CONFIG_DATA_reg_n_0_[0] ),
        .I1(S),
        .I2(\CODE_GRP[0]_i_2_n_0 ),
        .I3(XMIT_CONFIG_INT),
        .I4(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ),
        .O(\CODE_GRP[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFF8)) 
    \CODE_GRP[0]_i_2 
       (.I0(TX_PACKET),
        .I1(TXD_REG1[0]),
        .I2(R),
        .I3(T),
        .I4(XMIT_CONFIG_INT),
        .I5(V),
        .O(\CODE_GRP[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAA0000FFAAFEFE)) 
    \CODE_GRP[1]_i_1 
       (.I0(\CODE_GRP[1]_i_2_n_0 ),
        .I1(S),
        .I2(V),
        .I3(\CONFIG_DATA_reg_n_0_[1] ),
        .I4(XMIT_CONFIG_INT),
        .I5(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ),
        .O(\CODE_GRP[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000F08)) 
    \CODE_GRP[1]_i_2 
       (.I0(TX_PACKET),
        .I1(TXD_REG1[1]),
        .I2(XMIT_CONFIG_INT),
        .I3(R),
        .I4(T),
        .O(\CODE_GRP[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC0FFC044)) 
    \CODE_GRP[2]_i_1 
       (.I0(S),
        .I1(\CODE_GRP[2]_i_2_n_0 ),
        .I2(\CONFIG_DATA_reg_n_0_[2] ),
        .I3(XMIT_CONFIG_INT),
        .I4(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ),
        .O(\CODE_GRP[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \CODE_GRP[2]_i_2 
       (.I0(R),
        .I1(T),
        .I2(V),
        .I3(XMIT_CONFIG_INT),
        .I4(TX_PACKET),
        .I5(TXD_REG1[2]),
        .O(\CODE_GRP[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88BB888B)) 
    \CODE_GRP[3]_i_1 
       (.I0(\CONFIG_DATA_reg_n_0_[3] ),
        .I1(XMIT_CONFIG_INT),
        .I2(TX_PACKET),
        .I3(R),
        .I4(TXD_REG1[3]),
        .I5(\CODE_GRP[3]_i_2_n_0 ),
        .O(\CODE_GRP[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \CODE_GRP[3]_i_2 
       (.I0(T),
        .I1(S),
        .I2(V),
        .I3(XMIT_CONFIG_INT),
        .I4(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ),
        .O(\CODE_GRP[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFCFCFCFCFCACF)) 
    \CODE_GRP[4]_i_1 
       (.I0(TXD_REG1[4]),
        .I1(\CONFIG_DATA_reg_n_0_[4] ),
        .I2(XMIT_CONFIG_INT),
        .I3(TX_PACKET),
        .I4(\CODE_GRP[7]_i_2_n_0 ),
        .I5(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ),
        .O(\CODE_GRP[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFCFCFCFCFCACF)) 
    \CODE_GRP[5]_i_1 
       (.I0(TXD_REG1[5]),
        .I1(\CONFIG_DATA_reg_n_0_[5] ),
        .I2(XMIT_CONFIG_INT),
        .I3(TX_PACKET),
        .I4(\CODE_GRP[7]_i_2_n_0 ),
        .I5(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ),
        .O(\CODE_GRP[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAFFC0)) 
    \CODE_GRP[6]_i_1 
       (.I0(\CONFIG_DATA_reg_n_0_[6] ),
        .I1(TX_PACKET),
        .I2(TXD_REG1[6]),
        .I3(\CODE_GRP[7]_i_2_n_0 ),
        .I4(XMIT_CONFIG_INT),
        .I5(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ),
        .O(\CODE_GRP[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFCFCFCFCFCACF)) 
    \CODE_GRP[7]_i_1 
       (.I0(TXD_REG1[7]),
        .I1(\CONFIG_DATA_reg_n_0_[7] ),
        .I2(XMIT_CONFIG_INT),
        .I3(TX_PACKET),
        .I4(\CODE_GRP[7]_i_2_n_0 ),
        .I5(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ),
        .O(\CODE_GRP[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \CODE_GRP[7]_i_2 
       (.I0(V),
        .I1(S),
        .I2(T),
        .I3(R),
        .O(\CODE_GRP[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \CODE_GRP_CNT[0]_i_1 
       (.I0(TX_EVEN),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \CODE_GRP_CNT[1]_i_1 
       (.I0(TX_EVEN),
        .I1(\CODE_GRP_CNT_reg_n_0_[1] ),
        .O(plusOp[1]));
  FDSE \CODE_GRP_CNT_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(TX_EVEN),
        .S(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  FDSE \CODE_GRP_CNT_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\CODE_GRP_CNT_reg_n_0_[1] ),
        .S(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  FDRE \CODE_GRP_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\CODE_GRP[0]_i_1_n_0 ),
        .Q(\CODE_GRP_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \CODE_GRP_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\CODE_GRP[1]_i_1_n_0 ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \CODE_GRP_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\CODE_GRP[2]_i_1_n_0 ),
        .Q(p_0_in16_in),
        .R(1'b0));
  FDRE \CODE_GRP_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\CODE_GRP[3]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \CODE_GRP_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\CODE_GRP[4]_i_1_n_0 ),
        .Q(p_1_in1_in),
        .R(1'b0));
  FDRE \CODE_GRP_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\CODE_GRP[5]_i_1_n_0 ),
        .Q(p_1_in34_in),
        .R(1'b0));
  FDRE \CODE_GRP_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\CODE_GRP[6]_i_1_n_0 ),
        .Q(p_33_in),
        .R(1'b0));
  FDRE \CODE_GRP_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\CODE_GRP[7]_i_1_n_0 ),
        .Q(p_0_in35_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \CONFIG_DATA[0]_i_1 
       (.I0(\CODE_GRP_CNT_reg_n_0_[1] ),
        .I1(TX_EVEN),
        .I2(C1_OR_C2_reg_n_0),
        .O(CONFIG_DATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \CONFIG_DATA[1]_i_1 
       (.I0(TX_EVEN),
        .I1(C1_OR_C2_reg_n_0),
        .I2(\CODE_GRP_CNT_reg_n_0_[1] ),
        .O(CONFIG_DATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \CONFIG_DATA[3]_i_1 
       (.I0(TX_EVEN),
        .I1(\CODE_GRP_CNT_reg_n_0_[1] ),
        .O(CONFIG_DATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \CONFIG_DATA[6]_i_1 
       (.I0(TX_EVEN),
        .I1(C1_OR_C2_reg_n_0),
        .I2(\CODE_GRP_CNT_reg_n_0_[1] ),
        .O(CONFIG_DATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \CONFIG_DATA[7]_i_1 
       (.I0(TX_EVEN),
        .I1(C1_OR_C2_reg_n_0),
        .I2(\CODE_GRP_CNT_reg_n_0_[1] ),
        .O(CONFIG_DATA[2]));
  FDRE \CONFIG_DATA_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(CONFIG_DATA[0]),
        .Q(\CONFIG_DATA_reg_n_0_[0] ),
        .R(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  FDRE \CONFIG_DATA_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(CONFIG_DATA[1]),
        .Q(\CONFIG_DATA_reg_n_0_[1] ),
        .R(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  FDRE \CONFIG_DATA_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(CONFIG_DATA[2]),
        .Q(\CONFIG_DATA_reg_n_0_[2] ),
        .R(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  FDRE \CONFIG_DATA_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(CONFIG_DATA[3]),
        .Q(\CONFIG_DATA_reg_n_0_[3] ),
        .R(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  FDRE \CONFIG_DATA_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(CONFIG_DATA[2]),
        .Q(\CONFIG_DATA_reg_n_0_[4] ),
        .R(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  FDRE \CONFIG_DATA_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(CONFIG_DATA[2]),
        .Q(\CONFIG_DATA_reg_n_0_[5] ),
        .R(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  FDRE \CONFIG_DATA_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(CONFIG_DATA[6]),
        .Q(\CONFIG_DATA_reg_n_0_[6] ),
        .R(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  FDRE \CONFIG_DATA_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(CONFIG_DATA[2]),
        .Q(\CONFIG_DATA_reg_n_0_[7] ),
        .R(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h1)) 
    CONFIG_K28p5_i_1
       (.I0(TX_EVEN),
        .I1(\CODE_GRP_CNT_reg_n_0_[1] ),
        .O(CONFIG_K28p5_0));
  FDRE CONFIG_K28p5_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(CONFIG_K28p5_0),
        .Q(CONFIG_K28p5),
        .R(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h00AB)) 
    INSERT_IDLE_i_1
       (.I0(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ),
        .I1(\CODE_GRP[7]_i_2_n_0 ),
        .I2(TX_PACKET),
        .I3(XMIT_CONFIG_INT),
        .O(INSERT_IDLE_i_1_n_0));
  FDRE INSERT_IDLE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(INSERT_IDLE_i_1_n_0),
        .Q(INSERT_IDLE_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    K28p5_i_1
       (.I0(XMIT_CONFIG_INT),
        .I1(CONFIG_K28p5),
        .O(K28p5_i_1_n_0));
  FDRE K28p5_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(K28p5_i_1_n_0),
        .Q(K28p5),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \NO_QSGMII_CHAR.TXCHARDISPMODE_i_1 
       (.I0(SYNC_DISPARITY_reg_n_0),
        .I1(TX_EVEN),
        .O(p_10_out));
  FDSE \NO_QSGMII_CHAR.TXCHARDISPMODE_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_10_out),
        .Q(TXCHARDISPMODE_INT),
        .S(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \NO_QSGMII_CHAR.TXCHARDISPVAL_i_1 
       (.I0(TX_EVEN),
        .I1(SYNC_DISPARITY_reg_n_0),
        .I2(DISPARITY),
        .O(p_8_out));
  FDRE \NO_QSGMII_CHAR.TXCHARDISPVAL_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_8_out),
        .Q(TXCHARDISPVAL),
        .R(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  LUT4 #(
    .INIT(16'h002A)) 
    \NO_QSGMII_DATA.TXCHARISK_i_1 
       (.I0(CODE_GRPISK),
        .I1(TX_EVEN),
        .I2(INSERT_IDLE_reg_n_0),
        .I3(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ),
        .O(\NO_QSGMII_DATA.TXCHARISK_i_1_n_0 ));
  FDRE \NO_QSGMII_DATA.TXCHARISK_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_QSGMII_DATA.TXCHARISK_i_1_n_0 ),
        .Q(TXCHARISK_INT),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h23332000)) 
    \NO_QSGMII_DATA.TXDATA[0]_i_1 
       (.I0(DISPARITY),
        .I1(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ),
        .I2(INSERT_IDLE_reg_n_0),
        .I3(TX_EVEN),
        .I4(\CODE_GRP_reg_n_0_[0] ),
        .O(\NO_QSGMII_DATA.TXDATA[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \NO_QSGMII_DATA.TXDATA[1]_i_1 
       (.I0(p_1_in),
        .I1(TX_EVEN),
        .I2(INSERT_IDLE_reg_n_0),
        .I3(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ),
        .O(\NO_QSGMII_DATA.TXDATA[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h23332000)) 
    \NO_QSGMII_DATA.TXDATA[2]_i_1 
       (.I0(DISPARITY),
        .I1(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ),
        .I2(INSERT_IDLE_reg_n_0),
        .I3(TX_EVEN),
        .I4(p_0_in16_in),
        .O(\NO_QSGMII_DATA.TXDATA[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \NO_QSGMII_DATA.TXDATA[3]_i_1 
       (.I0(p_0_in),
        .I1(TX_EVEN),
        .I2(INSERT_IDLE_reg_n_0),
        .I3(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ),
        .O(\NO_QSGMII_DATA.TXDATA[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h13331000)) 
    \NO_QSGMII_DATA.TXDATA[4]_i_1 
       (.I0(DISPARITY),
        .I1(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ),
        .I2(INSERT_IDLE_reg_n_0),
        .I3(TX_EVEN),
        .I4(p_1_in1_in),
        .O(\NO_QSGMII_DATA.TXDATA[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \NO_QSGMII_DATA.TXDATA[5]_i_1 
       (.I0(p_1_in34_in),
        .I1(TX_EVEN),
        .I2(INSERT_IDLE_reg_n_0),
        .I3(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ),
        .O(\NO_QSGMII_DATA.TXDATA[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h3222)) 
    \NO_QSGMII_DATA.TXDATA[6]_i_1 
       (.I0(p_33_in),
        .I1(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ),
        .I2(TX_EVEN),
        .I3(INSERT_IDLE_reg_n_0),
        .O(\NO_QSGMII_DATA.TXDATA[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h23332000)) 
    \NO_QSGMII_DATA.TXDATA[7]_i_1 
       (.I0(DISPARITY),
        .I1(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ),
        .I2(INSERT_IDLE_reg_n_0),
        .I3(TX_EVEN),
        .I4(p_0_in35_in),
        .O(\NO_QSGMII_DATA.TXDATA[7]_i_1_n_0 ));
  FDRE \NO_QSGMII_DATA.TXDATA_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_QSGMII_DATA.TXDATA[0]_i_1_n_0 ),
        .Q(TXDATA[0]),
        .R(1'b0));
  FDRE \NO_QSGMII_DATA.TXDATA_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_QSGMII_DATA.TXDATA[1]_i_1_n_0 ),
        .Q(TXDATA[1]),
        .R(1'b0));
  FDRE \NO_QSGMII_DATA.TXDATA_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_QSGMII_DATA.TXDATA[2]_i_1_n_0 ),
        .Q(TXDATA[2]),
        .R(1'b0));
  FDRE \NO_QSGMII_DATA.TXDATA_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_QSGMII_DATA.TXDATA[3]_i_1_n_0 ),
        .Q(TXDATA[3]),
        .R(1'b0));
  FDRE \NO_QSGMII_DATA.TXDATA_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_QSGMII_DATA.TXDATA[4]_i_1_n_0 ),
        .Q(TXDATA[4]),
        .R(1'b0));
  FDRE \NO_QSGMII_DATA.TXDATA_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_QSGMII_DATA.TXDATA[5]_i_1_n_0 ),
        .Q(TXDATA[5]),
        .R(1'b0));
  FDRE \NO_QSGMII_DATA.TXDATA_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_QSGMII_DATA.TXDATA[6]_i_1_n_0 ),
        .Q(TXDATA[6]),
        .R(1'b0));
  FDRE \NO_QSGMII_DATA.TXDATA_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_QSGMII_DATA.TXDATA[7]_i_1_n_0 ),
        .Q(TXDATA[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0041414100BEBEBE)) 
    \NO_QSGMII_DISP.DISPARITY_i_1 
       (.I0(K28p5),
        .I1(\NO_QSGMII_DISP.DISPARITY_i_2_n_0 ),
        .I2(\NO_QSGMII_DISP.DISPARITY_i_3_n_0 ),
        .I3(INSERT_IDLE_reg_n_0),
        .I4(TX_EVEN),
        .I5(DISPARITY),
        .O(\NO_QSGMII_DISP.DISPARITY_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7C)) 
    \NO_QSGMII_DISP.DISPARITY_i_2 
       (.I0(p_0_in35_in),
        .I1(p_33_in),
        .I2(p_1_in34_in),
        .O(\NO_QSGMII_DISP.DISPARITY_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h177E7EA8)) 
    \NO_QSGMII_DISP.DISPARITY_i_3 
       (.I0(p_0_in16_in),
        .I1(p_1_in1_in),
        .I2(p_0_in),
        .I3(\CODE_GRP_reg_n_0_[0] ),
        .I4(p_1_in),
        .O(\NO_QSGMII_DISP.DISPARITY_i_3_n_0 ));
  FDSE \NO_QSGMII_DISP.DISPARITY_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_QSGMII_DISP.DISPARITY_i_1_n_0 ),
        .Q(DISPARITY),
        .S(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  LUT5 #(
    .INIT(32'hF0FEF0F0)) 
    R_i_1__0
       (.I0(TX_EVEN),
        .I1(TX_ER_REG1),
        .I2(T),
        .I3(S),
        .I4(R),
        .O(R_i_1__0_n_0));
  FDRE R_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(R_i_1__0_n_0),
        .Q(R),
        .R(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  LUT6 #(
    .INIT(64'h3030AAAA3030AAFF)) 
    SYNC_DISPARITY_i_1
       (.I0(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] ),
        .I1(\CODE_GRP_CNT_reg_n_0_[1] ),
        .I2(TX_EVEN),
        .I3(\CODE_GRP[7]_i_2_n_0 ),
        .I4(XMIT_CONFIG_INT),
        .I5(TX_PACKET),
        .O(SYNC_DISPARITY_i_1_n_0));
  FDRE SYNC_DISPARITY_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SYNC_DISPARITY_i_1_n_0),
        .Q(SYNC_DISPARITY_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF00000B000000)) 
    S_i_1__0
       (.I0(TX_ER_REG1),
        .I1(TX_EVEN),
        .I2(TX_EN_REG1),
        .I3(gmii_tx_en),
        .I4(XMIT_DATA_INT_reg_n_0),
        .I5(TRIGGER_S),
        .O(S0));
  FDRE S_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(S0),
        .Q(S),
        .R(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    TRIGGER_S_i_1
       (.I0(TX_EN_REG1),
        .I1(gmii_tx_en),
        .I2(TX_EVEN),
        .I3(TX_ER_REG1),
        .O(TRIGGER_S0));
  FDRE TRIGGER_S_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(TRIGGER_S0),
        .Q(TRIGGER_S),
        .R(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    TRIGGER_T_i_1
       (.I0(TX_EN_REG1),
        .I1(gmii_tx_en),
        .O(p_45_in));
  FDRE TRIGGER_T_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(p_45_in),
        .Q(TRIGGER_T),
        .R(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  FDRE \TXD_REG1_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[0]),
        .Q(TXD_REG1[0]),
        .R(1'b0));
  FDRE \TXD_REG1_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[1]),
        .Q(TXD_REG1[1]),
        .R(1'b0));
  FDRE \TXD_REG1_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[2]),
        .Q(TXD_REG1[2]),
        .R(1'b0));
  FDRE \TXD_REG1_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[3]),
        .Q(TXD_REG1[3]),
        .R(1'b0));
  FDRE \TXD_REG1_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[4]),
        .Q(TXD_REG1[4]),
        .R(1'b0));
  FDRE \TXD_REG1_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[5]),
        .Q(TXD_REG1[5]),
        .R(1'b0));
  FDRE \TXD_REG1_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[6]),
        .Q(TXD_REG1[6]),
        .R(1'b0));
  FDRE \TXD_REG1_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[7]),
        .Q(TXD_REG1[7]),
        .R(1'b0));
  FDRE TX_EN_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_tx_en),
        .Q(TX_EN_REG1),
        .R(1'b0));
  FDRE TX_ER_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_tx_er),
        .Q(TX_ER_REG1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    TX_PACKET_i_1
       (.I0(S),
        .I1(T),
        .I2(TX_PACKET),
        .O(TX_PACKET_i_1_n_0));
  FDRE TX_PACKET_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(TX_PACKET_i_1_n_0),
        .Q(TX_PACKET),
        .R(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  LUT6 #(
    .INIT(64'hFFFF00E000E000E0)) 
    T_i_1__0
       (.I0(TX_PACKET),
        .I1(S),
        .I2(TX_EN_REG1),
        .I3(gmii_tx_en),
        .I4(V),
        .I5(TRIGGER_T),
        .O(T0));
  FDRE T_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(T0),
        .Q(T),
        .R(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_i_1 
       (.I0(TXCHARISK_INT),
        .I1(CONFIGURATION_VECTOR_REG),
        .I2(rxchariscomma),
        .O(\USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_i_1 
       (.I0(TXCHARISK_INT),
        .I1(CONFIGURATION_VECTOR_REG),
        .I2(rxcharisk),
        .O(\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RXDATA_INT[0]_i_1 
       (.I0(TXDATA[0]),
        .I1(CONFIGURATION_VECTOR_REG),
        .I2(rxdata[0]),
        .O(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RXDATA_INT[1]_i_1 
       (.I0(TXDATA[1]),
        .I1(CONFIGURATION_VECTOR_REG),
        .I2(rxdata[1]),
        .O(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RXDATA_INT[2]_i_1 
       (.I0(TXDATA[2]),
        .I1(CONFIGURATION_VECTOR_REG),
        .I2(rxdata[2]),
        .O(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RXDATA_INT[3]_i_1 
       (.I0(TXDATA[3]),
        .I1(CONFIGURATION_VECTOR_REG),
        .I2(rxdata[3]),
        .O(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RXDATA_INT[4]_i_1 
       (.I0(TXDATA[4]),
        .I1(CONFIGURATION_VECTOR_REG),
        .I2(rxdata[4]),
        .O(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RXDATA_INT[5]_i_1 
       (.I0(TXDATA[5]),
        .I1(CONFIGURATION_VECTOR_REG),
        .I2(rxdata[5]),
        .O(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RXDATA_INT[6]_i_1 
       (.I0(TXDATA[6]),
        .I1(CONFIGURATION_VECTOR_REG),
        .I2(rxdata[6]),
        .O(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RXDATA_INT[7]_i_1 
       (.I0(TXDATA[7]),
        .I1(CONFIGURATION_VECTOR_REG),
        .I2(rxdata[7]),
        .O(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.TXCHARDISPMODE_i_1 
       (.I0(TX_EVEN),
        .I1(CONFIGURATION_VECTOR_REG),
        .I2(TXCHARDISPMODE_INT),
        .O(\USE_ROCKET_IO.TXCHARDISPMODE_reg ));
  LUT3 #(
    .INIT(8'h02)) 
    \USE_ROCKET_IO.TXCHARDISPVAL_i_1 
       (.I0(TXCHARDISPVAL),
        .I1(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ),
        .I2(CONFIGURATION_VECTOR_REG),
        .O(\USE_ROCKET_IO.TXCHARDISPVAL_reg ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.TXCHARISK_i_1 
       (.I0(TX_EVEN),
        .I1(CONFIGURATION_VECTOR_REG),
        .I2(TXCHARISK_INT),
        .O(\USE_ROCKET_IO.TXCHARISK_reg ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \USE_ROCKET_IO.TXDATA[0]_i_1 
       (.I0(TXDATA[0]),
        .I1(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ),
        .I2(CONFIGURATION_VECTOR_REG),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \USE_ROCKET_IO.TXDATA[1]_i_1 
       (.I0(TXDATA[1]),
        .I1(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ),
        .I2(CONFIGURATION_VECTOR_REG),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \USE_ROCKET_IO.TXDATA[2]_i_1 
       (.I0(TXDATA[2]),
        .I1(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ),
        .I2(CONFIGURATION_VECTOR_REG),
        .O(\USE_ROCKET_IO.TXDATA_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \USE_ROCKET_IO.TXDATA[3]_i_1 
       (.I0(TXDATA[3]),
        .I1(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ),
        .I2(CONFIGURATION_VECTOR_REG),
        .O(\USE_ROCKET_IO.TXDATA_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \USE_ROCKET_IO.TXDATA[4]_i_1 
       (.I0(TXDATA[4]),
        .I1(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ),
        .I2(CONFIGURATION_VECTOR_REG),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \USE_ROCKET_IO.TXDATA[5]_i_1 
       (.I0(TXDATA[5]),
        .I1(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ),
        .I2(CONFIGURATION_VECTOR_REG),
        .O(\USE_ROCKET_IO.TXDATA_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0704)) 
    \USE_ROCKET_IO.TXDATA[6]_i_1 
       (.I0(TX_EVEN),
        .I1(CONFIGURATION_VECTOR_REG),
        .I2(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ),
        .I3(TXDATA[6]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \USE_ROCKET_IO.TXDATA[7]_i_1 
       (.I0(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ),
        .I1(CONFIGURATION_VECTOR_REG),
        .I2(TX_EVEN),
        .O(\USE_ROCKET_IO.TXDATA_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \USE_ROCKET_IO.TXDATA[7]_i_2 
       (.I0(TXDATA[7]),
        .I1(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ),
        .I2(CONFIGURATION_VECTOR_REG),
        .O(\USE_ROCKET_IO.TXDATA_reg[7] ));
  LUT4 #(
    .INIT(16'hF888)) 
    V_i_1
       (.I0(XMIT_DATA_INT_reg_n_0),
        .I1(V_i_2_n_0),
        .I2(S),
        .I3(V),
        .O(V_i_1_n_0));
  LUT6 #(
    .INIT(64'hEAEEEAEEEAEEEAAA)) 
    V_i_2
       (.I0(V_i_3_n_0),
        .I1(gmii_tx_er),
        .I2(TX_PACKET),
        .I3(gmii_tx_en),
        .I4(V_i_4_n_0),
        .I5(V_i_5_n_0),
        .O(V_i_2_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    V_i_3
       (.I0(TX_PACKET),
        .I1(TX_EN_REG1),
        .I2(TX_ER_REG1),
        .O(V_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    V_i_4
       (.I0(gmii_txd[5]),
        .I1(gmii_txd[7]),
        .I2(gmii_txd[6]),
        .I3(gmii_txd[4]),
        .O(V_i_4_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    V_i_5
       (.I0(gmii_txd[2]),
        .I1(gmii_txd[1]),
        .I2(gmii_txd[0]),
        .I3(gmii_txd[3]),
        .O(V_i_5_n_0));
  FDRE V_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(V_i_1_n_0),
        .Q(V),
        .R(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    XMIT_CONFIG_INT_i_1
       (.I0(TX_EVEN),
        .I1(\CODE_GRP_CNT_reg_n_0_[1] ),
        .I2(XMIT_CONFIG_INT),
        .O(XMIT_CONFIG_INT_i_1_n_0));
  FDSE XMIT_CONFIG_INT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(XMIT_CONFIG_INT_i_1_n_0),
        .Q(XMIT_CONFIG_INT),
        .S(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    XMIT_DATA_INT_i_1
       (.I0(TX_EVEN),
        .I1(\CODE_GRP_CNT_reg_n_0_[1] ),
        .I2(XMIT_DATA_INT_reg_n_0),
        .O(XMIT_DATA_INT_i_1_n_0));
  FDRE XMIT_DATA_INT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(XMIT_DATA_INT_i_1_n_0),
        .Q(XMIT_DATA_INT_reg_n_0),
        .R(\USE_ROCKET_IO.MGT_TX_RESET_INT_reg ));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_GTWIZARD" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD
   (cpll_reset0_i,
    \rd_data_reg[0] ,
    txn,
    txp,
    rxoutclk,
    txoutclk,
    gt0_txbufstatus_out,
    D,
    gt0_rxuserrdy_i,
    gt0_txuserrdy_i,
    run_phase_alignment_int_s3,
    tx_fsm_reset_done_int_s3,
    \wait_bypass_count_reg[0] ,
    rx_fsm_reset_done_int_s3,
    \rd_data_reg[15] ,
    drp_busy_i1_reg,
    \rd_data_reg[15]_0 ,
    \FSM_sequential_tx_state_reg[0] ,
    pll_reset_asserted_reg,
    \time_out_counter_reg[18] ,
    \FSM_sequential_tx_state_reg[2] ,
    mmcm_lock_reclocked_reg,
    time_tlock_max_reg,
    time_out_500us_reg,
    gt0_gttxreset_t,
    mmcm_reset,
    reset_sync1,
    gt0_txresetdone_out_i,
    data_in,
    data_sync_reg1,
    init_wait_done_reg,
    time_out_1us_reg,
    \FSM_sequential_rx_state_reg[3] ,
    time_tlock_max_reg_0,
    time_tlock_max_reg_1,
    mmcm_lock_reclocked_0,
    time_out_100us_reg,
    time_out_1us_reg_0,
    gt0_gtrxreset_t,
    gt0_rxresetdone_out_i,
    data_sync_reg1_0,
    data_sync_reg1_1,
    time_tlock_max_reg_2,
    out,
    \FSM_sequential_rx_state_reg[0] ,
    data_out,
    rx_fsm_reset_done_int_reg,
    \init_wait_count_reg[0] ,
    \mmcm_lock_count_reg[9] ,
    \mmcm_lock_count_reg[9]_0 ,
    \mmcm_lock_count_reg[9]_1 ,
    \init_wait_count_reg[0]_0 ,
    \mmcm_lock_count_reg[9]_2 ,
    \mmcm_lock_count_reg[9]_3 ,
    \mmcm_lock_count_reg[9]_4 ,
    time_tlock_max_reg_3,
    time_out_100us_reg_0,
    time_out_100us_reg_1,
    time_tlock_max_reg_4,
    time_out_100us_reg_2,
    time_out_1us_reg_1,
    time_out_2ms,
    time_tlock_max_reg_5,
    time_out_100us_reg_3,
    time_out_1us_reg_2,
    time_out_100us_reg_4,
    \init_wait_count_reg[0]_1 ,
    time_out_2ms_2,
    time_tlock_max_reg_6,
    time_out_500us_reg_0,
    time_tlock_max_reg_7,
    time_tlock_max_reg_8,
    time_out_500us_reg_1,
    time_tlock_max_reg_9,
    \init_wait_count_reg[0]_2 ,
    time_out_1us_reg_3,
    time_out_1us_reg_4,
    \wait_bypass_count_reg[0]_0 ,
    \rd_data_reg[0]_0 ,
    \rd_data_reg[0]_1 ,
    CPLL_RESET0,
    reset_time_out_1,
    reset_time_out_reg,
    reset_time_out_reg_0,
    rx_fsm_reset_done_int_reg_0,
    rx_fsm_reset_done_int_reg_1,
    rx_fsm_reset_done_int_reg_2,
    reset_time_out_reg_1,
    \wait_bypass_count_reg[0]_1 ,
    CLK,
    independent_clock_bufg,
    gt0_cpllreset_i_3,
    rxn,
    rxp,
    gtrefclk_out,
    gt0_gttxreset_gt,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    reset_out,
    wtd_rxpcsreset_in,
    \cpllpd_wait_reg[95] ,
    gt0_txpd_in,
    MMCM_RESET_reg,
    gt0_rxpd_in,
    Q,
    \txchardispmode_int_reg[1] ,
    \txchardispval_int_reg[1] ,
    \txcharisk_int_reg[1] ,
    gt0_gtrxreset_gt,
    flag_reg,
    \FSM_sequential_state_reg[0] ,
    flag_reg_0,
    \init_wait_count_reg[7] ,
    AR,
    \FSM_sequential_tx_state_reg[2]_0 ,
    \FSM_sequential_tx_state_reg[3] ,
    time_out_2ms_reg,
    mmcm_lock_reclocked_reg_0,
    time_tlock_max_reg_10,
    time_out_500us_reg_2,
    \FSM_sequential_tx_state_reg[2]_1 ,
    \FSM_sequential_tx_state_reg[2]_2 ,
    \FSM_sequential_tx_state_reg[2]_3 ,
    \FSM_sequential_tx_state_reg[0]_0 ,
    \FSM_sequential_tx_state_reg[3]_0 ,
    \FSM_sequential_tx_state_reg[3]_1 ,
    time_out_wait_bypass_reg,
    \init_wait_count_reg[4] ,
    \FSM_sequential_rx_state_reg[3]_0 ,
    time_out_2ms_reg_0,
    \FSM_sequential_rx_state_reg[2] ,
    check_tlock_max_reg,
    mmcm_lock_reclocked_reg_1,
    time_out_100us_reg_5,
    time_out_1us_reg_5,
    \FSM_sequential_rx_state_reg[3]_1 ,
    data_sync_reg6,
    \FSM_sequential_rx_state_reg[3]_2 ,
    \FSM_sequential_rx_state_reg[0]_0 ,
    time_out_wait_bypass_reg_0,
    MMCM_RESET_reg_0,
    data_sync_reg6_0);
  output cpll_reset0_i;
  output \rd_data_reg[0] ;
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output [0:0]gt0_txbufstatus_out;
  output [23:0]D;
  output gt0_rxuserrdy_i;
  output gt0_txuserrdy_i;
  output run_phase_alignment_int_s3;
  output tx_fsm_reset_done_int_s3;
  output \wait_bypass_count_reg[0] ;
  output rx_fsm_reset_done_int_s3;
  output \rd_data_reg[15] ;
  output drp_busy_i1_reg;
  output \rd_data_reg[15]_0 ;
  output \FSM_sequential_tx_state_reg[0] ;
  output pll_reset_asserted_reg;
  output \time_out_counter_reg[18] ;
  output \FSM_sequential_tx_state_reg[2] ;
  output mmcm_lock_reclocked_reg;
  output time_tlock_max_reg;
  output time_out_500us_reg;
  output gt0_gttxreset_t;
  output mmcm_reset;
  output reset_sync1;
  output gt0_txresetdone_out_i;
  output data_in;
  output data_sync_reg1;
  output init_wait_done_reg;
  output time_out_1us_reg;
  output \FSM_sequential_rx_state_reg[3] ;
  output time_tlock_max_reg_0;
  output time_tlock_max_reg_1;
  output mmcm_lock_reclocked_0;
  output time_out_100us_reg;
  output time_out_1us_reg_0;
  output gt0_gtrxreset_t;
  output gt0_rxresetdone_out_i;
  output data_sync_reg1_0;
  output data_sync_reg1_1;
  output time_tlock_max_reg_2;
  output [3:0]out;
  output [3:0]\FSM_sequential_rx_state_reg[0] ;
  output data_out;
  output rx_fsm_reset_done_int_reg;
  output [3:0]\init_wait_count_reg[0] ;
  output \mmcm_lock_count_reg[9] ;
  output [1:0]\mmcm_lock_count_reg[9]_0 ;
  output \mmcm_lock_count_reg[9]_1 ;
  output [3:0]\init_wait_count_reg[0]_0 ;
  output \mmcm_lock_count_reg[9]_2 ;
  output [1:0]\mmcm_lock_count_reg[9]_3 ;
  output \mmcm_lock_count_reg[9]_4 ;
  output time_tlock_max_reg_3;
  output time_out_100us_reg_0;
  output time_out_100us_reg_1;
  output time_tlock_max_reg_4;
  output time_out_100us_reg_2;
  output time_out_1us_reg_1;
  output time_out_2ms;
  output time_tlock_max_reg_5;
  output time_out_100us_reg_3;
  output time_out_1us_reg_2;
  output time_out_100us_reg_4;
  output \init_wait_count_reg[0]_1 ;
  output time_out_2ms_2;
  output time_tlock_max_reg_6;
  output time_out_500us_reg_0;
  output time_tlock_max_reg_7;
  output time_tlock_max_reg_8;
  output time_out_500us_reg_1;
  output time_tlock_max_reg_9;
  output \init_wait_count_reg[0]_2 ;
  output time_out_1us_reg_3;
  output time_out_1us_reg_4;
  output \wait_bypass_count_reg[0]_0 ;
  output [2:0]\rd_data_reg[0]_0 ;
  output [3:0]\rd_data_reg[0]_1 ;
  output CPLL_RESET0;
  output reset_time_out_1;
  output reset_time_out_reg;
  output reset_time_out_reg_0;
  output rx_fsm_reset_done_int_reg_0;
  output rx_fsm_reset_done_int_reg_1;
  output rx_fsm_reset_done_int_reg_2;
  output reset_time_out_reg_1;
  output \wait_bypass_count_reg[0]_1 ;
  input CLK;
  input independent_clock_bufg;
  input gt0_cpllreset_i_3;
  input rxn;
  input rxp;
  input gtrefclk_out;
  input gt0_gttxreset_gt;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input reset_out;
  input wtd_rxpcsreset_in;
  input \cpllpd_wait_reg[95] ;
  input [0:0]gt0_txpd_in;
  input MMCM_RESET_reg;
  input [0:0]gt0_rxpd_in;
  input [15:0]Q;
  input [1:0]\txchardispmode_int_reg[1] ;
  input [1:0]\txchardispval_int_reg[1] ;
  input [1:0]\txcharisk_int_reg[1] ;
  input gt0_gtrxreset_gt;
  input flag_reg;
  input \FSM_sequential_state_reg[0] ;
  input flag_reg_0;
  input \init_wait_count_reg[7] ;
  input [0:0]AR;
  input \FSM_sequential_tx_state_reg[2]_0 ;
  input \FSM_sequential_tx_state_reg[3] ;
  input time_out_2ms_reg;
  input mmcm_lock_reclocked_reg_0;
  input time_tlock_max_reg_10;
  input time_out_500us_reg_2;
  input \FSM_sequential_tx_state_reg[2]_1 ;
  input \FSM_sequential_tx_state_reg[2]_2 ;
  input \FSM_sequential_tx_state_reg[2]_3 ;
  input \FSM_sequential_tx_state_reg[0]_0 ;
  input \FSM_sequential_tx_state_reg[3]_0 ;
  input \FSM_sequential_tx_state_reg[3]_1 ;
  input time_out_wait_bypass_reg;
  input \init_wait_count_reg[4] ;
  input \FSM_sequential_rx_state_reg[3]_0 ;
  input time_out_2ms_reg_0;
  input \FSM_sequential_rx_state_reg[2] ;
  input check_tlock_max_reg;
  input mmcm_lock_reclocked_reg_1;
  input time_out_100us_reg_5;
  input time_out_1us_reg_5;
  input \FSM_sequential_rx_state_reg[3]_1 ;
  input data_sync_reg6;
  input \FSM_sequential_rx_state_reg[3]_2 ;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input time_out_wait_bypass_reg_0;
  input MMCM_RESET_reg_0;
  input data_sync_reg6_0;

  wire [0:0]AR;
  wire CLK;
  wire CPLL_RESET0;
  wire [23:0]D;
  wire [3:0]\FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[2] ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire \FSM_sequential_rx_state_reg[3]_0 ;
  wire \FSM_sequential_rx_state_reg[3]_1 ;
  wire \FSM_sequential_rx_state_reg[3]_2 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0]_0 ;
  wire \FSM_sequential_tx_state_reg[2] ;
  wire \FSM_sequential_tx_state_reg[2]_0 ;
  wire \FSM_sequential_tx_state_reg[2]_1 ;
  wire \FSM_sequential_tx_state_reg[2]_2 ;
  wire \FSM_sequential_tx_state_reg[2]_3 ;
  wire \FSM_sequential_tx_state_reg[3] ;
  wire \FSM_sequential_tx_state_reg[3]_0 ;
  wire \FSM_sequential_tx_state_reg[3]_1 ;
  wire MMCM_RESET_reg;
  wire MMCM_RESET_reg_0;
  wire [15:0]Q;
  wire check_tlock_max_reg;
  wire cpll_reset0_i;
  wire \cpllpd_wait_reg[95] ;
  wire data_in;
  wire data_out;
  wire data_sync_reg1;
  wire data_sync_reg1_0;
  wire data_sync_reg1_1;
  wire data_sync_reg6;
  wire data_sync_reg6_0;
  wire drp_busy_i1_reg;
  wire flag_reg;
  wire flag_reg_0;
  wire gt0_cpllreset_i_3;
  wire gt0_gtrxreset_gt;
  wire gt0_gtrxreset_t;
  wire gt0_gttxreset_gt;
  wire gt0_gttxreset_t;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire [0:0]gt0_rxpd_in;
  wire gt0_rxresetdone_out_i;
  wire gt0_rxuserrdy_i;
  wire [0:0]gt0_txbufstatus_out;
  wire [0:0]gt0_txpd_in;
  wire gt0_txresetdone_out_i;
  wire gt0_txuserrdy_i;
  wire gtrefclk_out;
  wire independent_clock_bufg;
  wire [3:0]\init_wait_count_reg[0] ;
  wire [3:0]\init_wait_count_reg[0]_0 ;
  wire \init_wait_count_reg[0]_1 ;
  wire \init_wait_count_reg[0]_2 ;
  wire \init_wait_count_reg[4] ;
  wire \init_wait_count_reg[7] ;
  wire init_wait_done_reg;
  wire \mmcm_lock_count_reg[9] ;
  wire [1:0]\mmcm_lock_count_reg[9]_0 ;
  wire \mmcm_lock_count_reg[9]_1 ;
  wire \mmcm_lock_count_reg[9]_2 ;
  wire [1:0]\mmcm_lock_count_reg[9]_3 ;
  wire \mmcm_lock_count_reg[9]_4 ;
  wire mmcm_lock_reclocked_0;
  wire mmcm_lock_reclocked_reg;
  wire mmcm_lock_reclocked_reg_0;
  wire mmcm_lock_reclocked_reg_1;
  wire mmcm_reset;
  wire [3:0]out;
  wire pll_reset_asserted_reg;
  wire \rd_data_reg[0] ;
  wire [2:0]\rd_data_reg[0]_0 ;
  wire [3:0]\rd_data_reg[0]_1 ;
  wire \rd_data_reg[15] ;
  wire \rd_data_reg[15]_0 ;
  wire reset_out;
  wire reset_sync1;
  wire reset_time_out_1;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire run_phase_alignment_int_s3;
  wire rx_fsm_reset_done_int_reg;
  wire rx_fsm_reset_done_int_reg_0;
  wire rx_fsm_reset_done_int_reg_1;
  wire rx_fsm_reset_done_int_reg_2;
  wire rx_fsm_reset_done_int_s3;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire time_out_100us_reg;
  wire time_out_100us_reg_0;
  wire time_out_100us_reg_1;
  wire time_out_100us_reg_2;
  wire time_out_100us_reg_3;
  wire time_out_100us_reg_4;
  wire time_out_100us_reg_5;
  wire time_out_1us_reg;
  wire time_out_1us_reg_0;
  wire time_out_1us_reg_1;
  wire time_out_1us_reg_2;
  wire time_out_1us_reg_3;
  wire time_out_1us_reg_4;
  wire time_out_1us_reg_5;
  wire time_out_2ms;
  wire time_out_2ms_2;
  wire time_out_2ms_reg;
  wire time_out_2ms_reg_0;
  wire time_out_500us_reg;
  wire time_out_500us_reg_0;
  wire time_out_500us_reg_1;
  wire time_out_500us_reg_2;
  wire \time_out_counter_reg[18] ;
  wire time_out_wait_bypass_reg;
  wire time_out_wait_bypass_reg_0;
  wire time_tlock_max_reg;
  wire time_tlock_max_reg_0;
  wire time_tlock_max_reg_1;
  wire time_tlock_max_reg_10;
  wire time_tlock_max_reg_2;
  wire time_tlock_max_reg_3;
  wire time_tlock_max_reg_4;
  wire time_tlock_max_reg_5;
  wire time_tlock_max_reg_6;
  wire time_tlock_max_reg_7;
  wire time_tlock_max_reg_8;
  wire time_tlock_max_reg_9;
  wire tx_fsm_reset_done_int_s3;
  wire [1:0]\txchardispmode_int_reg[1] ;
  wire [1:0]\txchardispval_int_reg[1] ;
  wire [1:0]\txcharisk_int_reg[1] ;
  wire txn;
  wire txoutclk;
  wire txp;
  wire \wait_bypass_count_reg[0] ;
  wire \wait_bypass_count_reg[0]_0 ;
  wire \wait_bypass_count_reg[0]_1 ;
  wire wtd_rxpcsreset_in;

  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_init inst
       (.AR(AR),
        .CLK(CLK),
        .CPLL_RESET0(CPLL_RESET0),
        .D(D),
        .\FSM_sequential_rx_state_reg[0] (\FSM_sequential_rx_state_reg[0] ),
        .\FSM_sequential_rx_state_reg[0]_0 (\FSM_sequential_rx_state_reg[0]_0 ),
        .\FSM_sequential_rx_state_reg[2] (\FSM_sequential_rx_state_reg[2] ),
        .\FSM_sequential_rx_state_reg[3] (\FSM_sequential_rx_state_reg[3] ),
        .\FSM_sequential_rx_state_reg[3]_0 (\FSM_sequential_rx_state_reg[3]_0 ),
        .\FSM_sequential_rx_state_reg[3]_1 (\FSM_sequential_rx_state_reg[3]_1 ),
        .\FSM_sequential_rx_state_reg[3]_2 (\FSM_sequential_rx_state_reg[3]_2 ),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state_reg[0] ),
        .\FSM_sequential_tx_state_reg[0] (\FSM_sequential_tx_state_reg[0] ),
        .\FSM_sequential_tx_state_reg[0]_0 (\FSM_sequential_tx_state_reg[0]_0 ),
        .\FSM_sequential_tx_state_reg[2] (\FSM_sequential_tx_state_reg[2] ),
        .\FSM_sequential_tx_state_reg[2]_0 (\FSM_sequential_tx_state_reg[2]_0 ),
        .\FSM_sequential_tx_state_reg[2]_1 (\FSM_sequential_tx_state_reg[2]_1 ),
        .\FSM_sequential_tx_state_reg[2]_2 (\FSM_sequential_tx_state_reg[2]_2 ),
        .\FSM_sequential_tx_state_reg[2]_3 (\FSM_sequential_tx_state_reg[2]_3 ),
        .\FSM_sequential_tx_state_reg[3] (\FSM_sequential_tx_state_reg[3] ),
        .\FSM_sequential_tx_state_reg[3]_0 (\FSM_sequential_tx_state_reg[3]_0 ),
        .\FSM_sequential_tx_state_reg[3]_1 (\FSM_sequential_tx_state_reg[3]_1 ),
        .MMCM_RESET_reg(MMCM_RESET_reg),
        .MMCM_RESET_reg_0(MMCM_RESET_reg_0),
        .Q(Q),
        .check_tlock_max_reg(check_tlock_max_reg),
        .cpll_reset0_i(cpll_reset0_i),
        .\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95] ),
        .data_in(data_in),
        .data_out(data_out),
        .data_sync_reg1(data_sync_reg1),
        .data_sync_reg1_0(data_sync_reg1_0),
        .data_sync_reg1_1(data_sync_reg1_1),
        .data_sync_reg6(data_sync_reg6),
        .data_sync_reg6_0(data_sync_reg6_0),
        .drp_busy_i1_reg(drp_busy_i1_reg),
        .flag_reg(flag_reg),
        .flag_reg_0(flag_reg_0),
        .gt0_cpllreset_i_3(gt0_cpllreset_i_3),
        .gt0_gtrxreset_gt(gt0_gtrxreset_gt),
        .gt0_gtrxreset_t(gt0_gtrxreset_t),
        .gt0_gttxreset_gt(gt0_gttxreset_gt),
        .gt0_gttxreset_t(gt0_gttxreset_t),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gt0_rxpd_in(gt0_rxpd_in),
        .gt0_rxresetdone_out_i(gt0_rxresetdone_out_i),
        .gt0_rxuserrdy_i(gt0_rxuserrdy_i),
        .gt0_txbufstatus_out(gt0_txbufstatus_out),
        .gt0_txpd_in(gt0_txpd_in),
        .gt0_txresetdone_out_i(gt0_txresetdone_out_i),
        .gt0_txuserrdy_i(gt0_txuserrdy_i),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .\init_wait_count_reg[0] (\init_wait_count_reg[0] ),
        .\init_wait_count_reg[0]_0 (\init_wait_count_reg[0]_0 ),
        .\init_wait_count_reg[0]_1 (\init_wait_count_reg[0]_1 ),
        .\init_wait_count_reg[0]_2 (\init_wait_count_reg[0]_2 ),
        .\init_wait_count_reg[4] (\init_wait_count_reg[4] ),
        .\init_wait_count_reg[7] (\init_wait_count_reg[7] ),
        .init_wait_done_reg(init_wait_done_reg),
        .\mmcm_lock_count_reg[9] (\mmcm_lock_count_reg[9] ),
        .\mmcm_lock_count_reg[9]_0 (\mmcm_lock_count_reg[9]_0 ),
        .\mmcm_lock_count_reg[9]_1 (\mmcm_lock_count_reg[9]_1 ),
        .\mmcm_lock_count_reg[9]_2 (\mmcm_lock_count_reg[9]_2 ),
        .\mmcm_lock_count_reg[9]_3 (\mmcm_lock_count_reg[9]_3 ),
        .\mmcm_lock_count_reg[9]_4 (\mmcm_lock_count_reg[9]_4 ),
        .mmcm_lock_reclocked_0(mmcm_lock_reclocked_0),
        .mmcm_lock_reclocked_reg(mmcm_lock_reclocked_reg),
        .mmcm_lock_reclocked_reg_0(mmcm_lock_reclocked_reg_0),
        .mmcm_lock_reclocked_reg_1(mmcm_lock_reclocked_reg_1),
        .mmcm_reset(mmcm_reset),
        .out(out),
        .pll_reset_asserted_reg(pll_reset_asserted_reg),
        .\rd_data_reg[0] (\rd_data_reg[0] ),
        .\rd_data_reg[0]_0 (\rd_data_reg[0]_0 ),
        .\rd_data_reg[0]_1 (\rd_data_reg[0]_1 ),
        .\rd_data_reg[15] (\rd_data_reg[15] ),
        .\rd_data_reg[15]_0 (\rd_data_reg[15]_0 ),
        .reset_out(reset_out),
        .reset_sync1(reset_sync1),
        .reset_time_out_1(reset_time_out_1),
        .reset_time_out_reg(reset_time_out_reg),
        .reset_time_out_reg_0(reset_time_out_reg_0),
        .reset_time_out_reg_1(reset_time_out_reg_1),
        .run_phase_alignment_int_s3(run_phase_alignment_int_s3),
        .rx_fsm_reset_done_int_reg(rx_fsm_reset_done_int_reg),
        .rx_fsm_reset_done_int_reg_0(rx_fsm_reset_done_int_reg_0),
        .rx_fsm_reset_done_int_reg_1(rx_fsm_reset_done_int_reg_1),
        .rx_fsm_reset_done_int_reg_2(rx_fsm_reset_done_int_reg_2),
        .rx_fsm_reset_done_int_s3(rx_fsm_reset_done_int_s3),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .time_out_100us_reg(time_out_100us_reg),
        .time_out_100us_reg_0(time_out_100us_reg_0),
        .time_out_100us_reg_1(time_out_100us_reg_1),
        .time_out_100us_reg_2(time_out_100us_reg_2),
        .time_out_100us_reg_3(time_out_100us_reg_3),
        .time_out_100us_reg_4(time_out_100us_reg_4),
        .time_out_100us_reg_5(time_out_100us_reg_5),
        .time_out_1us_reg(time_out_1us_reg),
        .time_out_1us_reg_0(time_out_1us_reg_0),
        .time_out_1us_reg_1(time_out_1us_reg_1),
        .time_out_1us_reg_2(time_out_1us_reg_2),
        .time_out_1us_reg_3(time_out_1us_reg_3),
        .time_out_1us_reg_4(time_out_1us_reg_4),
        .time_out_1us_reg_5(time_out_1us_reg_5),
        .time_out_2ms(time_out_2ms),
        .time_out_2ms_2(time_out_2ms_2),
        .time_out_2ms_reg(time_out_2ms_reg),
        .time_out_2ms_reg_0(time_out_2ms_reg_0),
        .time_out_500us_reg(time_out_500us_reg),
        .time_out_500us_reg_0(time_out_500us_reg_0),
        .time_out_500us_reg_1(time_out_500us_reg_1),
        .time_out_500us_reg_2(time_out_500us_reg_2),
        .\time_out_counter_reg[18] (\time_out_counter_reg[18] ),
        .time_out_wait_bypass_reg(time_out_wait_bypass_reg),
        .time_out_wait_bypass_reg_0(time_out_wait_bypass_reg_0),
        .time_tlock_max_reg(time_tlock_max_reg),
        .time_tlock_max_reg_0(time_tlock_max_reg_0),
        .time_tlock_max_reg_1(time_tlock_max_reg_1),
        .time_tlock_max_reg_10(time_tlock_max_reg_10),
        .time_tlock_max_reg_2(time_tlock_max_reg_2),
        .time_tlock_max_reg_3(time_tlock_max_reg_3),
        .time_tlock_max_reg_4(time_tlock_max_reg_4),
        .time_tlock_max_reg_5(time_tlock_max_reg_5),
        .time_tlock_max_reg_6(time_tlock_max_reg_6),
        .time_tlock_max_reg_7(time_tlock_max_reg_7),
        .time_tlock_max_reg_8(time_tlock_max_reg_8),
        .time_tlock_max_reg_9(time_tlock_max_reg_9),
        .tx_fsm_reset_done_int_s3(tx_fsm_reset_done_int_s3),
        .\txchardispmode_int_reg[1] (\txchardispmode_int_reg[1] ),
        .\txchardispval_int_reg[1] (\txchardispval_int_reg[1] ),
        .\txcharisk_int_reg[1] (\txcharisk_int_reg[1] ),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .\wait_bypass_count_reg[0] (\wait_bypass_count_reg[0] ),
        .\wait_bypass_count_reg[0]_0 (\wait_bypass_count_reg[0]_0 ),
        .\wait_bypass_count_reg[0]_1 (\wait_bypass_count_reg[0]_1 ),
        .wtd_rxpcsreset_in(wtd_rxpcsreset_in));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_GTWIZARD_GT" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_GT
   (data_sync_reg1,
    gt0_cpllrefclklost_i,
    \rd_data_reg[0] ,
    txn,
    txp,
    rxoutclk,
    data_sync_reg1_0,
    txoutclk,
    data_sync_reg1_1,
    gt0_txbufstatus_out,
    D,
    \rd_data_reg[15] ,
    drp_busy_i1_reg_0,
    \rd_data_reg[15]_0 ,
    out,
    \rd_data_reg[0]_0 ,
    independent_clock_bufg,
    gt0_cpllpd_i,
    gt0_cpllreset_i_3,
    CLK,
    rxn,
    rxp,
    gtrefclk_out,
    gt0_gttxreset_gt,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    reset_out,
    wtd_rxpcsreset_in,
    gt0_rxuserrdy_i,
    \cpllpd_wait_reg[95] ,
    gt0_txpd_in,
    gt0_txuserrdy_i,
    MMCM_RESET_reg,
    gt0_rxpd_in,
    Q,
    \txchardispmode_int_reg[1] ,
    \txchardispval_int_reg[1] ,
    \txcharisk_int_reg[1] ,
    flag_reg,
    \FSM_sequential_state_reg[0] ,
    flag_reg_0,
    SR,
    CPLL_RESET_reg);
  output data_sync_reg1;
  output gt0_cpllrefclklost_i;
  output \rd_data_reg[0] ;
  output txn;
  output txp;
  output rxoutclk;
  output data_sync_reg1_0;
  output txoutclk;
  output data_sync_reg1_1;
  output [0:0]gt0_txbufstatus_out;
  output [23:0]D;
  output \rd_data_reg[15] ;
  output drp_busy_i1_reg_0;
  output \rd_data_reg[15]_0 ;
  output [2:0]out;
  output [3:0]\rd_data_reg[0]_0 ;
  input independent_clock_bufg;
  input gt0_cpllpd_i;
  input gt0_cpllreset_i_3;
  input CLK;
  input rxn;
  input rxp;
  input gtrefclk_out;
  input gt0_gttxreset_gt;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input reset_out;
  input wtd_rxpcsreset_in;
  input gt0_rxuserrdy_i;
  input \cpllpd_wait_reg[95] ;
  input [0:0]gt0_txpd_in;
  input gt0_txuserrdy_i;
  input MMCM_RESET_reg;
  input [0:0]gt0_rxpd_in;
  input [15:0]Q;
  input [1:0]\txchardispmode_int_reg[1] ;
  input [1:0]\txchardispval_int_reg[1] ;
  input [1:0]\txcharisk_int_reg[1] ;
  input flag_reg;
  input \FSM_sequential_state_reg[0] ;
  input flag_reg_0;
  input [0:0]SR;
  input CPLL_RESET_reg;

  wire CLK;
  wire CPLL_RESET_reg;
  wire [23:0]D;
  wire \FSM_sequential_state_reg[0] ;
  wire MMCM_RESET_reg;
  wire [15:0]Q;
  wire [0:0]SR;
  wire \cpllpd_wait_reg[95] ;
  wire data_sync_reg1;
  wire data_sync_reg1_0;
  wire data_sync_reg1_1;
  wire drp_busy_i1;
  wire drp_busy_i1_reg_0;
  wire [4:4]drpaddr_i;
  wire [15:0]drpdi_i;
  wire drpen_i;
  wire drpwe_i;
  wire flag_reg;
  wire flag_reg_0;
  wire gt0_cpllpd_i;
  wire gt0_cpllrefclklost_i;
  wire gt0_cpllreset_i_3;
  wire gt0_gttxreset_gt;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire [0:0]gt0_rxpd_in;
  wire gt0_rxuserrdy_i;
  wire [0:0]gt0_txbufstatus_out;
  wire [0:0]gt0_txpd_in;
  wire gt0_txuserrdy_i;
  wire gthe2_i_i_22_n_0;
  wire gthe2_i_i_23_n_0;
  wire gthe2_i_i_24_n_0;
  wire gthe2_i_i_25_n_0;
  wire gthe2_i_i_26_n_0;
  wire gthe2_i_i_27_n_0;
  wire gthe2_i_i_28_n_0;
  wire gthe2_i_i_29_n_0;
  wire gthe2_i_i_30_n_0;
  wire gthe2_i_i_31_n_0;
  wire gthe2_i_i_32_n_0;
  wire gthe2_i_i_33_n_0;
  wire gthe2_i_i_34_n_0;
  wire gthe2_i_i_35_n_0;
  wire gthe2_i_i_36_n_0;
  wire gthe2_i_i_37_n_0;
  wire gthe2_i_i_38_n_0;
  wire gthe2_i_i_39_n_0;
  wire gthe2_i_n_0;
  wire gthe2_i_n_10;
  wire gthe2_i_n_11;
  wire gthe2_i_n_113;
  wire gthe2_i_n_114;
  wire gthe2_i_n_115;
  wire gthe2_i_n_116;
  wire gthe2_i_n_17;
  wire gthe2_i_n_205;
  wire gthe2_i_n_206;
  wire gthe2_i_n_207;
  wire gthe2_i_n_208;
  wire gthe2_i_n_209;
  wire gthe2_i_n_210;
  wire gthe2_i_n_211;
  wire gthe2_i_n_33;
  wire gthe2_i_n_34;
  wire gthe2_i_n_4;
  wire gthe2_i_n_46;
  wire gthe2_i_n_47;
  wire gthe2_i_n_50;
  wire gthe2_i_n_57;
  wire gthe2_i_n_58;
  wire gthe2_i_n_59;
  wire gthe2_i_n_60;
  wire gthe2_i_n_61;
  wire gthe2_i_n_62;
  wire gthe2_i_n_63;
  wire gthe2_i_n_64;
  wire gthe2_i_n_65;
  wire gthe2_i_n_66;
  wire gthe2_i_n_67;
  wire gthe2_i_n_68;
  wire gthe2_i_n_69;
  wire gthe2_i_n_70;
  wire gthe2_i_n_71;
  wire gthe2_i_n_72;
  wire gthe2_i_n_73;
  wire gthe2_i_n_74;
  wire gthe2_i_n_75;
  wire gthe2_i_n_76;
  wire gthe2_i_n_77;
  wire gthe2_i_n_78;
  wire gthe2_i_n_79;
  wire gthe2_i_n_80;
  wire gthe2_i_n_81;
  wire gthe2_i_n_82;
  wire gthe2_i_n_83;
  wire gthe2_i_n_84;
  wire gthe2_i_n_85;
  wire gthe2_i_n_86;
  wire gthe2_i_n_87;
  wire gtrefclk_out;
  wire gtrxreset_out;
  wire gtrxreset_seq_i_n_6;
  wire independent_clock_bufg;
  wire [2:0]out;
  wire [15:0]rd_data;
  wire [15:0]rd_data_0;
  wire \rd_data_reg[0] ;
  wire [3:0]\rd_data_reg[0]_0 ;
  wire \rd_data_reg[15] ;
  wire \rd_data_reg[15]_0 ;
  wire reset_out;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire rxpmareset_out;
  wire [1:0]\txchardispmode_int_reg[1] ;
  wire [1:0]\txchardispval_int_reg[1] ;
  wire [1:0]\txcharisk_int_reg[1] ;
  wire txn;
  wire txoutclk;
  wire txp;
  wire wtd_rxpcsreset_in;
  wire NLW_gthe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gthe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gthe2_i_RSOSINTDONE_UNCONNECTED;
  wire NLW_gthe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gthe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gthe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gthe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gthe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gthe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gthe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gthe2_i_RXDFESLIDETAPSTARTED_UNCONNECTED;
  wire NLW_gthe2_i_RXDFESLIDETAPSTROBEDONE_UNCONNECTED;
  wire NLW_gthe2_i_RXDFESLIDETAPSTROBESTARTED_UNCONNECTED;
  wire NLW_gthe2_i_RXDFESTADAPTDONE_UNCONNECTED;
  wire NLW_gthe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gthe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gthe2_i_RXOSINTSTARTED_UNCONNECTED;
  wire NLW_gthe2_i_RXOSINTSTROBEDONE_UNCONNECTED;
  wire NLW_gthe2_i_RXOSINTSTROBESTARTED_UNCONNECTED;
  wire NLW_gthe2_i_RXOUTCLKFABRIC_UNCONNECTED;
  wire NLW_gthe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gthe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gthe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gthe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gthe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gthe2_i_RXSYNCDONE_UNCONNECTED;
  wire NLW_gthe2_i_RXSYNCOUT_UNCONNECTED;
  wire NLW_gthe2_i_RXVALID_UNCONNECTED;
  wire NLW_gthe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gthe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gthe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gthe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gthe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gthe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gthe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gthe2_i_TXRATEDONE_UNCONNECTED;
  wire NLW_gthe2_i_TXSYNCDONE_UNCONNECTED;
  wire NLW_gthe2_i_TXSYNCOUT_UNCONNECTED;
  wire [15:0]NLW_gthe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:2]NLW_gthe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:2]NLW_gthe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gthe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gthe2_i_RXCLKCORCNT_UNCONNECTED;
  wire [63:16]NLW_gthe2_i_RXDATA_UNCONNECTED;
  wire [1:0]NLW_gthe2_i_RXDATAVALID_UNCONNECTED;
  wire [7:2]NLW_gthe2_i_RXDISPERR_UNCONNECTED;
  wire [5:0]NLW_gthe2_i_RXHEADER_UNCONNECTED;
  wire [1:0]NLW_gthe2_i_RXHEADERVALID_UNCONNECTED;
  wire [7:2]NLW_gthe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gthe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gthe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [1:0]NLW_gthe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire [2:0]NLW_gthe2_i_RXSTATUS_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    drp_busy_i1_reg
       (.C(CLK),
        .CE(1'b1),
        .D(gtrxreset_seq_i_n_6),
        .Q(drp_busy_i1),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  GTHE2_CHANNEL #(
    .ACJTAG_DEBUG_MODE(1'b0),
    .ACJTAG_MODE(1'b0),
    .ACJTAG_RESET(1'b0),
    .ADAPT_CFG0(20'h00C10),
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b0001111111),
    .ALIGN_COMMA_WORD(2),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .A_RXOSCALRESET(1'b0),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CFOK_CFG(42'h24800040E80),
    .CFOK_CFG2(6'b100000),
    .CFOK_CFG3(6'b100000),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(36),
    .CLK_COR_MIN_LAT(32),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0100000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG(29'h00BC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CLK_PHASE_SEL(1'b0),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CLKRSVD0_INVERTED(1'b0),
    .IS_CLKRSVD1_INVERTED(1'b0),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DMONITORCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_SIGVALIDCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .LOOPBACK_CFG(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h19),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'b00000000000000000000000010000000),
    .PMA_RSV2(32'b00011100000000000000000000001010),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(15'b000000000001000),
    .PMA_RSV5(4'b0000),
    .RESET_POWERSAVE_DISABLE(1'b0),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(61),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(8),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(83'h0002007FE0800C2080018),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00001000000000),
    .RXLPM_LF_CFG(18'b001001000000000000),
    .RXOOB_CFG(7'b0000110),
    .RXOOB_CLK_CFG("PMA"),
    .RXOSCALRESET_TIME(5'b00011),
    .RXOSCALRESET_TIMEOUT(5'b00000),
    .RXOUT_DIV(4),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'hC00002),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPI_CFG0(2'b00),
    .RXPI_CFG1(2'b00),
    .RXPI_CFG2(2'b00),
    .RXPI_CFG3(2'b11),
    .RXPI_CFG4(1'b1),
    .RXPI_CFG5(1'b1),
    .RXPI_CFG6(3'b001),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RXSYNC_MULTILANE(1'b0),
    .RXSYNC_OVRD(1'b0),
    .RXSYNC_SKIP_DA(1'b0),
    .RX_BIAS_CFG(24'b000011000000000000010000),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(5),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(4'b1010),
    .RX_DATA_WIDTH(20),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(14'b00000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFELPM_CFG0(4'b0110),
    .RX_DFELPM_CFG1(1'b0),
    .RX_DFELPM_KLKH_AGC_STUP_EN(1'b1),
    .RX_DFE_AGC_CFG0(2'b00),
    .RX_DFE_AGC_CFG1(3'b010),
    .RX_DFE_AGC_CFG2(4'b0000),
    .RX_DFE_AGC_OVRDEN(1'b1),
    .RX_DFE_GAIN_CFG(23'h0020C0),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011100000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_H6_CFG(11'b00000100000),
    .RX_DFE_H7_CFG(11'b00000100000),
    .RX_DFE_KL_CFG(33'b001000001000000000000001100010000),
    .RX_DFE_KL_LPM_KH_CFG0(2'b01),
    .RX_DFE_KL_LPM_KH_CFG1(3'b010),
    .RX_DFE_KL_LPM_KH_CFG2(4'b0010),
    .RX_DFE_KL_LPM_KH_OVRDEN(1'b1),
    .RX_DFE_KL_LPM_KL_CFG0(2'b01),
    .RX_DFE_KL_LPM_KL_CFG1(3'b010),
    .RX_DFE_KL_LPM_KL_CFG2(4'b0010),
    .RX_DFE_KL_LPM_KL_OVRDEN(1'b1),
    .RX_DFE_LPM_CFG(16'h0080),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_ST_CFG(54'h00E100000C003F),
    .RX_DFE_UT_CFG(17'b00011100000000000),
    .RX_DFE_VP_CFG(17'b00011101010100011),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(0),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b100),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("FALSE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("2.0"),
    .TERM_RCAL_CFG(15'b100001000010000),
    .TERM_RCAL_OVRD(3'b000),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOOB_CFG(1'b0),
    .TXOUT_DIV(4),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPI_CFG0(2'b00),
    .TXPI_CFG1(2'b00),
    .TXPI_CFG2(2'b00),
    .TXPI_CFG3(1'b0),
    .TXPI_CFG4(1'b0),
    .TXPI_CFG5(3'b100),
    .TXPI_GREY_SEL(1'b0),
    .TXPI_INVSTROBE_SEL(1'b0),
    .TXPI_PPMCLK_SEL("TXUSRCLK2"),
    .TXPI_PPM_CFG(8'b00000000),
    .TXPI_SYNFREQ_PPM(3'b001),
    .TXPMARESET_TIME(5'b00001),
    .TXSYNC_MULTILANE(1'b0),
    .TXSYNC_OVRD(1'b0),
    .TXSYNC_SKIP_DA(1'b0),
    .TX_CLK25_DIV(5),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(20),
    .TX_DEEMPH0(6'b000000),
    .TX_DEEMPH1(6'b000000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(0),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_PRECHARGE_TIME(17'h155CC),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0),
    .USE_PCS_CLK_PHASE_SEL(1'b0)) 
    gthe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD0(1'b0),
        .CLKRSVD1(1'b0),
        .CPLLFBCLKLOST(gthe2_i_n_0),
        .CPLLLOCK(data_sync_reg1),
        .CPLLLOCKDETCLK(independent_clock_bufg),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(gt0_cpllpd_i),
        .CPLLREFCLKLOST(gt0_cpllrefclklost_i),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(gt0_cpllreset_i_3),
        .DMONFIFORESET(1'b0),
        .DMONITORCLK(1'b0),
        .DMONITOROUT({gthe2_i_n_57,gthe2_i_n_58,gthe2_i_n_59,gthe2_i_n_60,gthe2_i_n_61,gthe2_i_n_62,gthe2_i_n_63,gthe2_i_n_64,gthe2_i_n_65,gthe2_i_n_66,gthe2_i_n_67,gthe2_i_n_68,gthe2_i_n_69,gthe2_i_n_70,gthe2_i_n_71}),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,drpaddr_i,1'b0,1'b0,1'b0,drpaddr_i}),
        .DRPCLK(CLK),
        .DRPDI(drpdi_i),
        .DRPDO({gthe2_i_n_72,gthe2_i_n_73,gthe2_i_n_74,gthe2_i_n_75,gthe2_i_n_76,gthe2_i_n_77,gthe2_i_n_78,gthe2_i_n_79,gthe2_i_n_80,gthe2_i_n_81,gthe2_i_n_82,gthe2_i_n_83,gthe2_i_n_84,gthe2_i_n_85,gthe2_i_n_86,gthe2_i_n_87}),
        .DRPEN(drpen_i),
        .DRPRDY(\rd_data_reg[0] ),
        .DRPWE(drpwe_i),
        .EYESCANDATAERROR(gthe2_i_n_4),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTGREFCLK(1'b0),
        .GTHRXN(rxn),
        .GTHRXP(rxp),
        .GTHTXN(txn),
        .GTHTXP(txp),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(gtrefclk_out),
        .GTREFCLK1(1'b0),
        .GTREFCLKMONITOR(NLW_gthe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(gtrxreset_out),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .GTTXRESET(gt0_gttxreset_gt),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gthe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gthe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt0_qplloutclk_out),
        .QPLLREFCLK(gt0_qplloutrefclk_out),
        .RESETOVRD(1'b0),
        .RSOSINTDONE(NLW_gthe2_i_RSOSINTDONE_UNCONNECTED),
        .RX8B10BEN(1'b1),
        .RXADAPTSELTEST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({gthe2_i_n_114,gthe2_i_n_115,gthe2_i_n_116}),
        .RXBYTEISALIGNED(gthe2_i_n_10),
        .RXBYTEREALIGN(gthe2_i_n_11),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gthe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gthe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gthe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gthe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gthe2_i_RXCHARISCOMMA_UNCONNECTED[7:2],D[11],D[23]}),
        .RXCHARISK({NLW_gthe2_i_RXCHARISK_UNCONNECTED[7:2],D[10],D[22]}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gthe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(NLW_gthe2_i_RXCLKCORCNT_UNCONNECTED[1:0]),
        .RXCOMINITDET(NLW_gthe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gthe2_i_n_17),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gthe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gthe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gthe2_i_RXDATA_UNCONNECTED[63:16],D[7:0],D[19:12]}),
        .RXDATAVALID(NLW_gthe2_i_RXDATAVALID_UNCONNECTED[1:0]),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(1'b0),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFEAGCTRL({1'b1,1'b0,1'b0,1'b0,1'b0}),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(1'b0),
        .RXDFELFOVRDEN(1'b0),
        .RXDFELPMRESET(1'b0),
        .RXDFESLIDETAP({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXDFESLIDETAPADAPTEN(1'b0),
        .RXDFESLIDETAPHOLD(1'b0),
        .RXDFESLIDETAPID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXDFESLIDETAPINITOVRDEN(1'b0),
        .RXDFESLIDETAPONLYADAPTEN(1'b0),
        .RXDFESLIDETAPOVRDEN(1'b0),
        .RXDFESLIDETAPSTARTED(NLW_gthe2_i_RXDFESLIDETAPSTARTED_UNCONNECTED),
        .RXDFESLIDETAPSTROBE(1'b0),
        .RXDFESLIDETAPSTROBEDONE(NLW_gthe2_i_RXDFESLIDETAPSTROBEDONE_UNCONNECTED),
        .RXDFESLIDETAPSTROBESTARTED(NLW_gthe2_i_RXDFESLIDETAPSTROBESTARTED_UNCONNECTED),
        .RXDFESTADAPTDONE(NLW_gthe2_i_RXDFESTADAPTDONE_UNCONNECTED),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFETAP6HOLD(1'b0),
        .RXDFETAP6OVRDEN(1'b0),
        .RXDFETAP7HOLD(1'b0),
        .RXDFETAP7OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDISPERR({NLW_gthe2_i_RXDISPERR_UNCONNECTED[7:2],D[9],D[21]}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gthe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gthe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gthe2_i_RXHEADER_UNCONNECTED[5:0]),
        .RXHEADERVALID(NLW_gthe2_i_RXHEADERVALID_UNCONNECTED[1:0]),
        .RXLPMEN(1'b1),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(reset_out),
        .RXMONITOROUT({gthe2_i_n_205,gthe2_i_n_206,gthe2_i_n_207,gthe2_i_n_208,gthe2_i_n_209,gthe2_i_n_210,gthe2_i_n_211}),
        .RXMONITORSEL({1'b0,1'b0}),
        .RXNOTINTABLE({NLW_gthe2_i_RXNOTINTABLE_UNCONNECTED[7:2],D[8],D[20]}),
        .RXOOBRESET(1'b0),
        .RXOSCALRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSINTCFG({1'b0,1'b1,1'b1,1'b0}),
        .RXOSINTEN(1'b1),
        .RXOSINTHOLD(1'b0),
        .RXOSINTID0({1'b0,1'b0,1'b0,1'b0}),
        .RXOSINTNTRLEN(1'b0),
        .RXOSINTOVRDEN(1'b0),
        .RXOSINTSTARTED(NLW_gthe2_i_RXOSINTSTARTED_UNCONNECTED),
        .RXOSINTSTROBE(1'b0),
        .RXOSINTSTROBEDONE(NLW_gthe2_i_RXOSINTSTROBEDONE_UNCONNECTED),
        .RXOSINTSTROBESTARTED(NLW_gthe2_i_RXOSINTSTROBESTARTED_UNCONNECTED),
        .RXOSINTTESTOVRDEN(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(rxoutclk),
        .RXOUTCLKFABRIC(NLW_gthe2_i_RXOUTCLKFABRIC_UNCONNECTED),
        .RXOUTCLKPCS(NLW_gthe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(reset_out),
        .RXPCSRESET(wtd_rxpcsreset_in),
        .RXPD({gt0_rxpd_in,gt0_rxpd_in}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gthe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gthe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gthe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(rxpmareset_out),
        .RXPMARESETDONE(gthe2_i_n_33),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gthe2_i_n_34),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gthe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gthe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gthe2_i_RXRATEDONE_UNCONNECTED),
        .RXRATEMODE(1'b0),
        .RXRESETDONE(data_sync_reg1_0),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gthe2_i_RXSTARTOFSEQ_UNCONNECTED[1:0]),
        .RXSTATUS(NLW_gthe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYNCALLIN(1'b0),
        .RXSYNCDONE(NLW_gthe2_i_RXSYNCDONE_UNCONNECTED),
        .RXSYNCIN(1'b0),
        .RXSYNCMODE(1'b0),
        .RXSYNCOUT(NLW_gthe2_i_RXSYNCOUT_UNCONNECTED),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXUSERRDY(gt0_rxuserrdy_i),
        .RXUSRCLK(\cpllpd_wait_reg[95] ),
        .RXUSRCLK2(\cpllpd_wait_reg[95] ),
        .RXVALID(NLW_gthe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .SIGVALIDCLK(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({gt0_txbufstatus_out,gthe2_i_n_113}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\txchardispmode_int_reg[1] }),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\txchardispval_int_reg[1] }),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\txcharisk_int_reg[1] }),
        .TXCOMFINISH(NLW_gthe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gthe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(gt0_txpd_in),
        .TXGEARBOXREADY(NLW_gthe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(txoutclk),
        .TXOUTCLKFABRIC(gthe2_i_n_46),
        .TXOUTCLKPCS(gthe2_i_n_47),
        .TXOUTCLKSEL({1'b1,1'b0,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({gt0_txpd_in,gt0_txpd_in}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gthe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gthe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPIPPMEN(1'b0),
        .TXPIPPMOVRDEN(1'b0),
        .TXPIPPMPD(1'b0),
        .TXPIPPMSEL(1'b1),
        .TXPIPPMSTEPSIZE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPMARESETDONE(gthe2_i_n_50),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gthe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gthe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gthe2_i_TXRATEDONE_UNCONNECTED),
        .TXRATEMODE(1'b0),
        .TXRESETDONE(data_sync_reg1_1),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYNCALLIN(1'b0),
        .TXSYNCDONE(NLW_gthe2_i_TXSYNCDONE_UNCONNECTED),
        .TXSYNCIN(1'b0),
        .TXSYNCMODE(1'b0),
        .TXSYNCOUT(NLW_gthe2_i_TXSYNCOUT_UNCONNECTED),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(gt0_txuserrdy_i),
        .TXUSRCLK(MMCM_RESET_reg),
        .TXUSRCLK2(MMCM_RESET_reg));
  LUT6 #(
    .INIT(64'hAAAAAAAA3C000000)) 
    gthe2_i_i_10
       (.I0(gthe2_i_i_29_n_0),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(rd_data[10]),
        .I5(drp_busy_i1_reg_0),
        .O(drpdi_i[10]));
  LUT6 #(
    .INIT(64'hAAAAAAAA3C000000)) 
    gthe2_i_i_11
       (.I0(gthe2_i_i_30_n_0),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(rd_data[9]),
        .I5(drp_busy_i1_reg_0),
        .O(drpdi_i[9]));
  LUT6 #(
    .INIT(64'hAAAAAAAA3C000000)) 
    gthe2_i_i_12
       (.I0(gthe2_i_i_31_n_0),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(rd_data[8]),
        .I5(drp_busy_i1_reg_0),
        .O(drpdi_i[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAA3C000000)) 
    gthe2_i_i_13
       (.I0(gthe2_i_i_32_n_0),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(rd_data[7]),
        .I5(drp_busy_i1_reg_0),
        .O(drpdi_i[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAA3C000000)) 
    gthe2_i_i_14
       (.I0(gthe2_i_i_33_n_0),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(rd_data[6]),
        .I5(drp_busy_i1_reg_0),
        .O(drpdi_i[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAA3C000000)) 
    gthe2_i_i_15
       (.I0(gthe2_i_i_34_n_0),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(rd_data[5]),
        .I5(drp_busy_i1_reg_0),
        .O(drpdi_i[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAA3C000000)) 
    gthe2_i_i_16
       (.I0(gthe2_i_i_35_n_0),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(rd_data[4]),
        .I5(drp_busy_i1_reg_0),
        .O(drpdi_i[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAA3C000000)) 
    gthe2_i_i_17
       (.I0(gthe2_i_i_36_n_0),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(rd_data[3]),
        .I5(drp_busy_i1_reg_0),
        .O(drpdi_i[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA3C000000)) 
    gthe2_i_i_18
       (.I0(gthe2_i_i_37_n_0),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(rd_data[2]),
        .I5(drp_busy_i1_reg_0),
        .O(drpdi_i[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAA3C000000)) 
    gthe2_i_i_19
       (.I0(gthe2_i_i_38_n_0),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(rd_data[1]),
        .I5(drp_busy_i1_reg_0),
        .O(drpdi_i[1]));
  LUT5 #(
    .INIT(32'h8B88B8B8)) 
    gthe2_i_i_2
       (.I0(gthe2_i_i_22_n_0),
        .I1(drp_busy_i1_reg_0),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[2]),
        .O(drpen_i));
  LUT6 #(
    .INIT(64'hAAAAAAAA3C000000)) 
    gthe2_i_i_20
       (.I0(gthe2_i_i_39_n_0),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(rd_data[0]),
        .I5(drp_busy_i1_reg_0),
        .O(drpdi_i[0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h000030C4)) 
    gthe2_i_i_22
       (.I0(drp_busy_i1),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\rd_data_reg[0]_0 [2]),
        .I4(\rd_data_reg[0]_0 [3]),
        .O(gthe2_i_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0028)) 
    gthe2_i_i_23
       (.I0(\rd_data_reg[0]_0 [1]),
        .I1(\rd_data_reg[0]_0 [2]),
        .I2(\rd_data_reg[0]_0 [0]),
        .I3(\rd_data_reg[0]_0 [3]),
        .O(gthe2_i_i_23_n_0));
  LUT5 #(
    .INIT(32'h00000880)) 
    gthe2_i_i_24
       (.I0(\rd_data_reg[0]_0 [1]),
        .I1(rd_data_0[15]),
        .I2(\rd_data_reg[0]_0 [2]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data_reg[0]_0 [3]),
        .O(gthe2_i_i_24_n_0));
  LUT5 #(
    .INIT(32'h00000880)) 
    gthe2_i_i_25
       (.I0(\rd_data_reg[0]_0 [1]),
        .I1(rd_data_0[14]),
        .I2(\rd_data_reg[0]_0 [2]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data_reg[0]_0 [3]),
        .O(gthe2_i_i_25_n_0));
  LUT5 #(
    .INIT(32'h00000880)) 
    gthe2_i_i_26
       (.I0(\rd_data_reg[0]_0 [1]),
        .I1(rd_data_0[13]),
        .I2(\rd_data_reg[0]_0 [2]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data_reg[0]_0 [3]),
        .O(gthe2_i_i_26_n_0));
  LUT5 #(
    .INIT(32'h00000880)) 
    gthe2_i_i_27
       (.I0(\rd_data_reg[0]_0 [1]),
        .I1(rd_data_0[12]),
        .I2(\rd_data_reg[0]_0 [2]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data_reg[0]_0 [3]),
        .O(gthe2_i_i_27_n_0));
  LUT5 #(
    .INIT(32'h00000080)) 
    gthe2_i_i_28
       (.I0(\rd_data_reg[0]_0 [2]),
        .I1(\rd_data_reg[0]_0 [1]),
        .I2(rd_data_0[11]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data_reg[0]_0 [3]),
        .O(gthe2_i_i_28_n_0));
  LUT5 #(
    .INIT(32'h00000880)) 
    gthe2_i_i_29
       (.I0(\rd_data_reg[0]_0 [1]),
        .I1(rd_data_0[10]),
        .I2(\rd_data_reg[0]_0 [2]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data_reg[0]_0 [3]),
        .O(gthe2_i_i_29_n_0));
  LUT5 #(
    .INIT(32'h88B8B888)) 
    gthe2_i_i_3
       (.I0(gthe2_i_i_23_n_0),
        .I1(drp_busy_i1_reg_0),
        .I2(out[1]),
        .I3(out[2]),
        .I4(out[0]),
        .O(drpwe_i));
  LUT5 #(
    .INIT(32'h00000880)) 
    gthe2_i_i_30
       (.I0(\rd_data_reg[0]_0 [1]),
        .I1(rd_data_0[9]),
        .I2(\rd_data_reg[0]_0 [2]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data_reg[0]_0 [3]),
        .O(gthe2_i_i_30_n_0));
  LUT5 #(
    .INIT(32'h00000880)) 
    gthe2_i_i_31
       (.I0(\rd_data_reg[0]_0 [1]),
        .I1(rd_data_0[8]),
        .I2(\rd_data_reg[0]_0 [2]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data_reg[0]_0 [3]),
        .O(gthe2_i_i_31_n_0));
  LUT5 #(
    .INIT(32'h00000880)) 
    gthe2_i_i_32
       (.I0(\rd_data_reg[0]_0 [1]),
        .I1(rd_data_0[7]),
        .I2(\rd_data_reg[0]_0 [2]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data_reg[0]_0 [3]),
        .O(gthe2_i_i_32_n_0));
  LUT5 #(
    .INIT(32'h00000880)) 
    gthe2_i_i_33
       (.I0(\rd_data_reg[0]_0 [1]),
        .I1(rd_data_0[6]),
        .I2(\rd_data_reg[0]_0 [2]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data_reg[0]_0 [3]),
        .O(gthe2_i_i_33_n_0));
  LUT5 #(
    .INIT(32'h00000880)) 
    gthe2_i_i_34
       (.I0(\rd_data_reg[0]_0 [1]),
        .I1(rd_data_0[5]),
        .I2(\rd_data_reg[0]_0 [2]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data_reg[0]_0 [3]),
        .O(gthe2_i_i_34_n_0));
  LUT5 #(
    .INIT(32'h00000880)) 
    gthe2_i_i_35
       (.I0(\rd_data_reg[0]_0 [1]),
        .I1(rd_data_0[4]),
        .I2(\rd_data_reg[0]_0 [2]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data_reg[0]_0 [3]),
        .O(gthe2_i_i_35_n_0));
  LUT5 #(
    .INIT(32'h00000880)) 
    gthe2_i_i_36
       (.I0(\rd_data_reg[0]_0 [1]),
        .I1(rd_data_0[3]),
        .I2(\rd_data_reg[0]_0 [2]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data_reg[0]_0 [3]),
        .O(gthe2_i_i_36_n_0));
  LUT5 #(
    .INIT(32'h00000880)) 
    gthe2_i_i_37
       (.I0(\rd_data_reg[0]_0 [1]),
        .I1(rd_data_0[2]),
        .I2(\rd_data_reg[0]_0 [2]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data_reg[0]_0 [3]),
        .O(gthe2_i_i_37_n_0));
  LUT5 #(
    .INIT(32'h00000880)) 
    gthe2_i_i_38
       (.I0(\rd_data_reg[0]_0 [1]),
        .I1(rd_data_0[1]),
        .I2(\rd_data_reg[0]_0 [2]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data_reg[0]_0 [3]),
        .O(gthe2_i_i_38_n_0));
  LUT5 #(
    .INIT(32'h00000880)) 
    gthe2_i_i_39
       (.I0(\rd_data_reg[0]_0 [1]),
        .I1(rd_data_0[0]),
        .I2(\rd_data_reg[0]_0 [2]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data_reg[0]_0 [3]),
        .O(gthe2_i_i_39_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA3C000000)) 
    gthe2_i_i_5
       (.I0(gthe2_i_i_24_n_0),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(rd_data[15]),
        .I5(drp_busy_i1_reg_0),
        .O(drpdi_i[15]));
  LUT6 #(
    .INIT(64'hAAAAAAAA3C000000)) 
    gthe2_i_i_6
       (.I0(gthe2_i_i_25_n_0),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(rd_data[14]),
        .I5(drp_busy_i1_reg_0),
        .O(drpdi_i[14]));
  LUT6 #(
    .INIT(64'hAAAAAAAA3C000000)) 
    gthe2_i_i_7
       (.I0(gthe2_i_i_26_n_0),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(rd_data[13]),
        .I5(drp_busy_i1_reg_0),
        .O(drpdi_i[13]));
  LUT6 #(
    .INIT(64'hAAAAAAAA3C000000)) 
    gthe2_i_i_8
       (.I0(gthe2_i_i_27_n_0),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(rd_data[12]),
        .I5(drp_busy_i1_reg_0),
        .O(drpdi_i[12]));
  LUT6 #(
    .INIT(64'hAAAAAAAA30000000)) 
    gthe2_i_i_9
       (.I0(gthe2_i_i_28_n_0),
        .I1(out[0]),
        .I2(out[2]),
        .I3(rd_data[11]),
        .I4(out[1]),
        .I5(drp_busy_i1_reg_0),
        .O(drpdi_i[11]));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_gtwizard_gtrxreset_seq gtrxreset_seq_i
       (.CLK(CLK),
        .CPLL_RESET_reg(CPLL_RESET_reg),
        .D({gthe2_i_n_72,gthe2_i_n_73,gthe2_i_n_74,gthe2_i_n_75,gthe2_i_n_76,gthe2_i_n_77,gthe2_i_n_78,gthe2_i_n_79,gthe2_i_n_80,gthe2_i_n_81,gthe2_i_n_82,gthe2_i_n_83,gthe2_i_n_84,gthe2_i_n_85,gthe2_i_n_86,gthe2_i_n_87}),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state_reg[0] ),
        .Q(rd_data),
        .SR(SR),
        .\cpllpd_wait_reg[95] (\rd_data_reg[0] ),
        .data_in(gthe2_i_n_33),
        .drp_busy_i1_reg(drp_busy_i1_reg_0),
        .drp_busy_i1_reg_0(gtrxreset_seq_i_n_6),
        .flag_reg_0(flag_reg),
        .gtrxreset_out(gtrxreset_out),
        .out(out),
        .\rd_data_reg[15]_0 (\rd_data_reg[15] ));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_gtwizard_rxpmarst_seq rxpmarst_seq_i
       (.CLK(CLK),
        .CPLL_RESET_reg(CPLL_RESET_reg),
        .D({gthe2_i_n_72,gthe2_i_n_73,gthe2_i_n_74,gthe2_i_n_75,gthe2_i_n_76,gthe2_i_n_77,gthe2_i_n_78,gthe2_i_n_79,gthe2_i_n_80,gthe2_i_n_81,gthe2_i_n_82,gthe2_i_n_83,gthe2_i_n_84,gthe2_i_n_85,gthe2_i_n_86,gthe2_i_n_87}),
        .DRPADDR(drpaddr_i),
        .DRP_OP_DONE_reg(drp_busy_i1_reg_0),
        .Q(rd_data_0),
        .\cpllpd_wait_reg[95] (\rd_data_reg[0] ),
        .data_in(gthe2_i_n_33),
        .drp_busy_i1(drp_busy_i1),
        .flag_reg_0(flag_reg_0),
        .out(\rd_data_reg[0]_0 ),
        .\rd_data_reg[15]_0 (\rd_data_reg[15]_0 ),
        .rxpmareset_out(rxpmareset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_GTWIZARD_init" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_init
   (cpll_reset0_i,
    \rd_data_reg[0] ,
    txn,
    txp,
    rxoutclk,
    txoutclk,
    gt0_txbufstatus_out,
    D,
    gt0_rxuserrdy_i,
    gt0_txuserrdy_i,
    run_phase_alignment_int_s3,
    tx_fsm_reset_done_int_s3,
    \wait_bypass_count_reg[0] ,
    rx_fsm_reset_done_int_s3,
    \rd_data_reg[15] ,
    drp_busy_i1_reg,
    \rd_data_reg[15]_0 ,
    \FSM_sequential_tx_state_reg[0] ,
    pll_reset_asserted_reg,
    \time_out_counter_reg[18] ,
    \FSM_sequential_tx_state_reg[2] ,
    mmcm_lock_reclocked_reg,
    time_tlock_max_reg,
    time_out_500us_reg,
    gt0_gttxreset_t,
    mmcm_reset,
    reset_sync1,
    gt0_txresetdone_out_i,
    data_in,
    data_sync_reg1,
    init_wait_done_reg,
    time_out_1us_reg,
    \FSM_sequential_rx_state_reg[3] ,
    time_tlock_max_reg_0,
    time_tlock_max_reg_1,
    mmcm_lock_reclocked_0,
    time_out_100us_reg,
    time_out_1us_reg_0,
    gt0_gtrxreset_t,
    gt0_rxresetdone_out_i,
    data_sync_reg1_0,
    data_sync_reg1_1,
    time_tlock_max_reg_2,
    out,
    \FSM_sequential_rx_state_reg[0] ,
    data_out,
    rx_fsm_reset_done_int_reg,
    \init_wait_count_reg[0] ,
    \mmcm_lock_count_reg[9] ,
    \mmcm_lock_count_reg[9]_0 ,
    \mmcm_lock_count_reg[9]_1 ,
    \init_wait_count_reg[0]_0 ,
    \mmcm_lock_count_reg[9]_2 ,
    \mmcm_lock_count_reg[9]_3 ,
    \mmcm_lock_count_reg[9]_4 ,
    time_tlock_max_reg_3,
    time_out_100us_reg_0,
    time_out_100us_reg_1,
    time_tlock_max_reg_4,
    time_out_100us_reg_2,
    time_out_1us_reg_1,
    time_out_2ms,
    time_tlock_max_reg_5,
    time_out_100us_reg_3,
    time_out_1us_reg_2,
    time_out_100us_reg_4,
    \init_wait_count_reg[0]_1 ,
    time_out_2ms_2,
    time_tlock_max_reg_6,
    time_out_500us_reg_0,
    time_tlock_max_reg_7,
    time_tlock_max_reg_8,
    time_out_500us_reg_1,
    time_tlock_max_reg_9,
    \init_wait_count_reg[0]_2 ,
    time_out_1us_reg_3,
    time_out_1us_reg_4,
    \wait_bypass_count_reg[0]_0 ,
    \rd_data_reg[0]_0 ,
    \rd_data_reg[0]_1 ,
    CPLL_RESET0,
    reset_time_out_1,
    reset_time_out_reg,
    reset_time_out_reg_0,
    rx_fsm_reset_done_int_reg_0,
    rx_fsm_reset_done_int_reg_1,
    rx_fsm_reset_done_int_reg_2,
    reset_time_out_reg_1,
    \wait_bypass_count_reg[0]_1 ,
    CLK,
    independent_clock_bufg,
    gt0_cpllreset_i_3,
    rxn,
    rxp,
    gtrefclk_out,
    gt0_gttxreset_gt,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    reset_out,
    wtd_rxpcsreset_in,
    \cpllpd_wait_reg[95] ,
    gt0_txpd_in,
    MMCM_RESET_reg,
    gt0_rxpd_in,
    Q,
    \txchardispmode_int_reg[1] ,
    \txchardispval_int_reg[1] ,
    \txcharisk_int_reg[1] ,
    gt0_gtrxreset_gt,
    flag_reg,
    \FSM_sequential_state_reg[0] ,
    flag_reg_0,
    \init_wait_count_reg[7] ,
    AR,
    \FSM_sequential_tx_state_reg[2]_0 ,
    \FSM_sequential_tx_state_reg[3] ,
    time_out_2ms_reg,
    mmcm_lock_reclocked_reg_0,
    time_tlock_max_reg_10,
    time_out_500us_reg_2,
    \FSM_sequential_tx_state_reg[2]_1 ,
    \FSM_sequential_tx_state_reg[2]_2 ,
    \FSM_sequential_tx_state_reg[2]_3 ,
    \FSM_sequential_tx_state_reg[0]_0 ,
    \FSM_sequential_tx_state_reg[3]_0 ,
    \FSM_sequential_tx_state_reg[3]_1 ,
    time_out_wait_bypass_reg,
    \init_wait_count_reg[4] ,
    \FSM_sequential_rx_state_reg[3]_0 ,
    time_out_2ms_reg_0,
    \FSM_sequential_rx_state_reg[2] ,
    check_tlock_max_reg,
    mmcm_lock_reclocked_reg_1,
    time_out_100us_reg_5,
    time_out_1us_reg_5,
    \FSM_sequential_rx_state_reg[3]_1 ,
    data_sync_reg6,
    \FSM_sequential_rx_state_reg[3]_2 ,
    \FSM_sequential_rx_state_reg[0]_0 ,
    time_out_wait_bypass_reg_0,
    MMCM_RESET_reg_0,
    data_sync_reg6_0);
  output cpll_reset0_i;
  output \rd_data_reg[0] ;
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output [0:0]gt0_txbufstatus_out;
  output [23:0]D;
  output gt0_rxuserrdy_i;
  output gt0_txuserrdy_i;
  output run_phase_alignment_int_s3;
  output tx_fsm_reset_done_int_s3;
  output \wait_bypass_count_reg[0] ;
  output rx_fsm_reset_done_int_s3;
  output \rd_data_reg[15] ;
  output drp_busy_i1_reg;
  output \rd_data_reg[15]_0 ;
  output \FSM_sequential_tx_state_reg[0] ;
  output pll_reset_asserted_reg;
  output \time_out_counter_reg[18] ;
  output \FSM_sequential_tx_state_reg[2] ;
  output mmcm_lock_reclocked_reg;
  output time_tlock_max_reg;
  output time_out_500us_reg;
  output gt0_gttxreset_t;
  output mmcm_reset;
  output reset_sync1;
  output gt0_txresetdone_out_i;
  output data_in;
  output data_sync_reg1;
  output init_wait_done_reg;
  output time_out_1us_reg;
  output \FSM_sequential_rx_state_reg[3] ;
  output time_tlock_max_reg_0;
  output time_tlock_max_reg_1;
  output mmcm_lock_reclocked_0;
  output time_out_100us_reg;
  output time_out_1us_reg_0;
  output gt0_gtrxreset_t;
  output gt0_rxresetdone_out_i;
  output data_sync_reg1_0;
  output data_sync_reg1_1;
  output time_tlock_max_reg_2;
  output [3:0]out;
  output [3:0]\FSM_sequential_rx_state_reg[0] ;
  output data_out;
  output rx_fsm_reset_done_int_reg;
  output [3:0]\init_wait_count_reg[0] ;
  output \mmcm_lock_count_reg[9] ;
  output [1:0]\mmcm_lock_count_reg[9]_0 ;
  output \mmcm_lock_count_reg[9]_1 ;
  output [3:0]\init_wait_count_reg[0]_0 ;
  output \mmcm_lock_count_reg[9]_2 ;
  output [1:0]\mmcm_lock_count_reg[9]_3 ;
  output \mmcm_lock_count_reg[9]_4 ;
  output time_tlock_max_reg_3;
  output time_out_100us_reg_0;
  output time_out_100us_reg_1;
  output time_tlock_max_reg_4;
  output time_out_100us_reg_2;
  output time_out_1us_reg_1;
  output time_out_2ms;
  output time_tlock_max_reg_5;
  output time_out_100us_reg_3;
  output time_out_1us_reg_2;
  output time_out_100us_reg_4;
  output \init_wait_count_reg[0]_1 ;
  output time_out_2ms_2;
  output time_tlock_max_reg_6;
  output time_out_500us_reg_0;
  output time_tlock_max_reg_7;
  output time_tlock_max_reg_8;
  output time_out_500us_reg_1;
  output time_tlock_max_reg_9;
  output \init_wait_count_reg[0]_2 ;
  output time_out_1us_reg_3;
  output time_out_1us_reg_4;
  output \wait_bypass_count_reg[0]_0 ;
  output [2:0]\rd_data_reg[0]_0 ;
  output [3:0]\rd_data_reg[0]_1 ;
  output CPLL_RESET0;
  output reset_time_out_1;
  output reset_time_out_reg;
  output reset_time_out_reg_0;
  output rx_fsm_reset_done_int_reg_0;
  output rx_fsm_reset_done_int_reg_1;
  output rx_fsm_reset_done_int_reg_2;
  output reset_time_out_reg_1;
  output \wait_bypass_count_reg[0]_1 ;
  input CLK;
  input independent_clock_bufg;
  input gt0_cpllreset_i_3;
  input rxn;
  input rxp;
  input gtrefclk_out;
  input gt0_gttxreset_gt;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input reset_out;
  input wtd_rxpcsreset_in;
  input \cpllpd_wait_reg[95] ;
  input [0:0]gt0_txpd_in;
  input MMCM_RESET_reg;
  input [0:0]gt0_rxpd_in;
  input [15:0]Q;
  input [1:0]\txchardispmode_int_reg[1] ;
  input [1:0]\txchardispval_int_reg[1] ;
  input [1:0]\txcharisk_int_reg[1] ;
  input gt0_gtrxreset_gt;
  input flag_reg;
  input \FSM_sequential_state_reg[0] ;
  input flag_reg_0;
  input \init_wait_count_reg[7] ;
  input [0:0]AR;
  input \FSM_sequential_tx_state_reg[2]_0 ;
  input \FSM_sequential_tx_state_reg[3] ;
  input time_out_2ms_reg;
  input mmcm_lock_reclocked_reg_0;
  input time_tlock_max_reg_10;
  input time_out_500us_reg_2;
  input \FSM_sequential_tx_state_reg[2]_1 ;
  input \FSM_sequential_tx_state_reg[2]_2 ;
  input \FSM_sequential_tx_state_reg[2]_3 ;
  input \FSM_sequential_tx_state_reg[0]_0 ;
  input \FSM_sequential_tx_state_reg[3]_0 ;
  input \FSM_sequential_tx_state_reg[3]_1 ;
  input time_out_wait_bypass_reg;
  input \init_wait_count_reg[4] ;
  input \FSM_sequential_rx_state_reg[3]_0 ;
  input time_out_2ms_reg_0;
  input \FSM_sequential_rx_state_reg[2] ;
  input check_tlock_max_reg;
  input mmcm_lock_reclocked_reg_1;
  input time_out_100us_reg_5;
  input time_out_1us_reg_5;
  input \FSM_sequential_rx_state_reg[3]_1 ;
  input data_sync_reg6;
  input \FSM_sequential_rx_state_reg[3]_2 ;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input time_out_wait_bypass_reg_0;
  input MMCM_RESET_reg_0;
  input data_sync_reg6_0;

  wire [0:0]AR;
  wire CLK;
  wire CPLL_RESET0;
  wire [23:0]D;
  wire [3:0]\FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[2] ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire \FSM_sequential_rx_state_reg[3]_0 ;
  wire \FSM_sequential_rx_state_reg[3]_1 ;
  wire \FSM_sequential_rx_state_reg[3]_2 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0]_0 ;
  wire \FSM_sequential_tx_state_reg[2] ;
  wire \FSM_sequential_tx_state_reg[2]_0 ;
  wire \FSM_sequential_tx_state_reg[2]_1 ;
  wire \FSM_sequential_tx_state_reg[2]_2 ;
  wire \FSM_sequential_tx_state_reg[2]_3 ;
  wire \FSM_sequential_tx_state_reg[3] ;
  wire \FSM_sequential_tx_state_reg[3]_0 ;
  wire \FSM_sequential_tx_state_reg[3]_1 ;
  wire MMCM_RESET_reg;
  wire MMCM_RESET_reg_0;
  wire [15:0]Q;
  wire check_tlock_max_reg;
  wire cpll_reset0_i;
  wire \cpllpd_wait_reg[95] ;
  wire [31:1]data0;
  wire data_in;
  wire data_out;
  wire data_sync_reg1;
  wire data_sync_reg1_0;
  wire data_sync_reg1_1;
  wire data_sync_reg6;
  wire data_sync_reg6_0;
  wire drp_busy_i1_reg;
  wire flag_reg;
  wire flag_reg_0;
  wire gt0_cpllrefclklost_i;
  wire gt0_cpllreset_i_3;
  wire gt0_gtrxreset_gt;
  wire gt0_gtrxreset_gt_d1;
  wire gt0_gtrxreset_t;
  wire gt0_gttxreset_gt;
  wire gt0_gttxreset_t;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire [31:0]gt0_rx_cdrlock_counter;
  wire \gt0_rx_cdrlock_counter[12]_i_3_n_0 ;
  wire \gt0_rx_cdrlock_counter[12]_i_4_n_0 ;
  wire \gt0_rx_cdrlock_counter[12]_i_5_n_0 ;
  wire \gt0_rx_cdrlock_counter[12]_i_6_n_0 ;
  wire \gt0_rx_cdrlock_counter[16]_i_3_n_0 ;
  wire \gt0_rx_cdrlock_counter[16]_i_4_n_0 ;
  wire \gt0_rx_cdrlock_counter[16]_i_5_n_0 ;
  wire \gt0_rx_cdrlock_counter[16]_i_6_n_0 ;
  wire \gt0_rx_cdrlock_counter[20]_i_3_n_0 ;
  wire \gt0_rx_cdrlock_counter[20]_i_4_n_0 ;
  wire \gt0_rx_cdrlock_counter[20]_i_5_n_0 ;
  wire \gt0_rx_cdrlock_counter[20]_i_6_n_0 ;
  wire \gt0_rx_cdrlock_counter[24]_i_3_n_0 ;
  wire \gt0_rx_cdrlock_counter[24]_i_4_n_0 ;
  wire \gt0_rx_cdrlock_counter[24]_i_5_n_0 ;
  wire \gt0_rx_cdrlock_counter[24]_i_6_n_0 ;
  wire \gt0_rx_cdrlock_counter[28]_i_3_n_0 ;
  wire \gt0_rx_cdrlock_counter[28]_i_4_n_0 ;
  wire \gt0_rx_cdrlock_counter[28]_i_5_n_0 ;
  wire \gt0_rx_cdrlock_counter[28]_i_6_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_10_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_11_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_12_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_13_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_3_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_4_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_6_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_7_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_8_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_9_n_0 ;
  wire \gt0_rx_cdrlock_counter[4]_i_3_n_0 ;
  wire \gt0_rx_cdrlock_counter[4]_i_4_n_0 ;
  wire \gt0_rx_cdrlock_counter[4]_i_5_n_0 ;
  wire \gt0_rx_cdrlock_counter[4]_i_6_n_0 ;
  wire \gt0_rx_cdrlock_counter[8]_i_3_n_0 ;
  wire \gt0_rx_cdrlock_counter[8]_i_4_n_0 ;
  wire \gt0_rx_cdrlock_counter[8]_i_5_n_0 ;
  wire \gt0_rx_cdrlock_counter[8]_i_6_n_0 ;
  wire [31:0]gt0_rx_cdrlock_counter_0;
  wire \gt0_rx_cdrlock_counter_reg[12]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[12]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[12]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[12]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[16]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[16]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[16]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[16]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[20]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[20]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[20]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[20]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[24]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[24]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[24]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[24]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[28]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[28]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[28]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[28]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[31]_i_5_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[31]_i_5_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_2_n_3 ;
  wire gt0_rx_cdrlocked_i_1_n_0;
  wire gt0_rx_cdrlocked_reg_n_0;
  wire [0:0]gt0_rxpd_in;
  wire gt0_rxresetdone_out_i;
  wire gt0_rxuserrdy_i;
  wire [0:0]gt0_txbufstatus_out;
  wire [0:0]gt0_txpd_in;
  wire gt0_txresetdone_out_i;
  wire gt0_txuserrdy_i;
  wire gtrefclk_out;
  wire gtwizard_i_n_1;
  wire gtwizard_i_n_7;
  wire gtwizard_i_n_9;
  wire independent_clock_bufg;
  wire [3:0]\init_wait_count_reg[0] ;
  wire [3:0]\init_wait_count_reg[0]_0 ;
  wire \init_wait_count_reg[0]_1 ;
  wire \init_wait_count_reg[0]_2 ;
  wire \init_wait_count_reg[4] ;
  wire \init_wait_count_reg[7] ;
  wire init_wait_done_reg;
  wire \mmcm_lock_count_reg[9] ;
  wire [1:0]\mmcm_lock_count_reg[9]_0 ;
  wire \mmcm_lock_count_reg[9]_1 ;
  wire \mmcm_lock_count_reg[9]_2 ;
  wire [1:0]\mmcm_lock_count_reg[9]_3 ;
  wire \mmcm_lock_count_reg[9]_4 ;
  wire mmcm_lock_reclocked_0;
  wire mmcm_lock_reclocked_reg;
  wire mmcm_lock_reclocked_reg_0;
  wire mmcm_lock_reclocked_reg_1;
  wire mmcm_reset;
  wire [3:0]out;
  wire pll_reset_asserted_reg;
  wire \rd_data_reg[0] ;
  wire [2:0]\rd_data_reg[0]_0 ;
  wire [3:0]\rd_data_reg[0]_1 ;
  wire \rd_data_reg[15] ;
  wire \rd_data_reg[15]_0 ;
  wire reset_out;
  wire reset_sync1;
  wire reset_time_out_1;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire run_phase_alignment_int_s3;
  wire rx_fsm_reset_done_int_reg;
  wire rx_fsm_reset_done_int_reg_0;
  wire rx_fsm_reset_done_int_reg_1;
  wire rx_fsm_reset_done_int_reg_2;
  wire rx_fsm_reset_done_int_s3;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire time_out_100us_reg;
  wire time_out_100us_reg_0;
  wire time_out_100us_reg_1;
  wire time_out_100us_reg_2;
  wire time_out_100us_reg_3;
  wire time_out_100us_reg_4;
  wire time_out_100us_reg_5;
  wire time_out_1us_reg;
  wire time_out_1us_reg_0;
  wire time_out_1us_reg_1;
  wire time_out_1us_reg_2;
  wire time_out_1us_reg_3;
  wire time_out_1us_reg_4;
  wire time_out_1us_reg_5;
  wire time_out_2ms;
  wire time_out_2ms_2;
  wire time_out_2ms_reg;
  wire time_out_2ms_reg_0;
  wire time_out_500us_reg;
  wire time_out_500us_reg_0;
  wire time_out_500us_reg_1;
  wire time_out_500us_reg_2;
  wire \time_out_counter_reg[18] ;
  wire time_out_wait_bypass_reg;
  wire time_out_wait_bypass_reg_0;
  wire time_tlock_max_reg;
  wire time_tlock_max_reg_0;
  wire time_tlock_max_reg_1;
  wire time_tlock_max_reg_10;
  wire time_tlock_max_reg_2;
  wire time_tlock_max_reg_3;
  wire time_tlock_max_reg_4;
  wire time_tlock_max_reg_5;
  wire time_tlock_max_reg_6;
  wire time_tlock_max_reg_7;
  wire time_tlock_max_reg_8;
  wire time_tlock_max_reg_9;
  wire tx_fsm_reset_done_int_s3;
  wire [1:0]\txchardispmode_int_reg[1] ;
  wire [1:0]\txchardispval_int_reg[1] ;
  wire [1:0]\txcharisk_int_reg[1] ;
  wire txn;
  wire txoutclk;
  wire txp;
  wire \wait_bypass_count_reg[0] ;
  wire \wait_bypass_count_reg[0]_0 ;
  wire \wait_bypass_count_reg[0]_1 ;
  wire wtd_rxpcsreset_in;
  wire [3:2]\NLW_gt0_rx_cdrlock_counter_reg[31]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_gt0_rx_cdrlock_counter_reg[31]_i_5_O_UNCONNECTED ;

  FDRE gt0_gtrxreset_gt_d1_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_gtrxreset_gt),
        .Q(gt0_gtrxreset_gt_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \gt0_rx_cdrlock_counter[0]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .O(gt0_rx_cdrlock_counter_0[0]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[10]_i_1 
       (.I0(data0[10]),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlock_counter_0[10]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[11]_i_1 
       (.I0(data0[11]),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlock_counter_0[11]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[12]_i_1 
       (.I0(data0[12]),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlock_counter_0[12]));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[12]_i_3 
       (.I0(gt0_rx_cdrlock_counter[12]),
        .O(\gt0_rx_cdrlock_counter[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[12]_i_4 
       (.I0(gt0_rx_cdrlock_counter[11]),
        .O(\gt0_rx_cdrlock_counter[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[12]_i_5 
       (.I0(gt0_rx_cdrlock_counter[10]),
        .O(\gt0_rx_cdrlock_counter[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[12]_i_6 
       (.I0(gt0_rx_cdrlock_counter[9]),
        .O(\gt0_rx_cdrlock_counter[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[13]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[13]),
        .O(gt0_rx_cdrlock_counter_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[14]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[14]),
        .O(gt0_rx_cdrlock_counter_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[15]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[15]),
        .O(gt0_rx_cdrlock_counter_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[16]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[16]),
        .O(gt0_rx_cdrlock_counter_0[16]));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[16]_i_3 
       (.I0(gt0_rx_cdrlock_counter[16]),
        .O(\gt0_rx_cdrlock_counter[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[16]_i_4 
       (.I0(gt0_rx_cdrlock_counter[15]),
        .O(\gt0_rx_cdrlock_counter[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[16]_i_5 
       (.I0(gt0_rx_cdrlock_counter[14]),
        .O(\gt0_rx_cdrlock_counter[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[16]_i_6 
       (.I0(gt0_rx_cdrlock_counter[13]),
        .O(\gt0_rx_cdrlock_counter[16]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[17]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[17]),
        .O(gt0_rx_cdrlock_counter_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[18]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[18]),
        .O(gt0_rx_cdrlock_counter_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[19]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[19]),
        .O(gt0_rx_cdrlock_counter_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[1]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[1]),
        .O(gt0_rx_cdrlock_counter_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[20]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[20]),
        .O(gt0_rx_cdrlock_counter_0[20]));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[20]_i_3 
       (.I0(gt0_rx_cdrlock_counter[20]),
        .O(\gt0_rx_cdrlock_counter[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[20]_i_4 
       (.I0(gt0_rx_cdrlock_counter[19]),
        .O(\gt0_rx_cdrlock_counter[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[20]_i_5 
       (.I0(gt0_rx_cdrlock_counter[18]),
        .O(\gt0_rx_cdrlock_counter[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[20]_i_6 
       (.I0(gt0_rx_cdrlock_counter[17]),
        .O(\gt0_rx_cdrlock_counter[20]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[21]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[21]),
        .O(gt0_rx_cdrlock_counter_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[22]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[22]),
        .O(gt0_rx_cdrlock_counter_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[23]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[23]),
        .O(gt0_rx_cdrlock_counter_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[24]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[24]),
        .O(gt0_rx_cdrlock_counter_0[24]));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[24]_i_3 
       (.I0(gt0_rx_cdrlock_counter[24]),
        .O(\gt0_rx_cdrlock_counter[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[24]_i_4 
       (.I0(gt0_rx_cdrlock_counter[23]),
        .O(\gt0_rx_cdrlock_counter[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[24]_i_5 
       (.I0(gt0_rx_cdrlock_counter[22]),
        .O(\gt0_rx_cdrlock_counter[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[24]_i_6 
       (.I0(gt0_rx_cdrlock_counter[21]),
        .O(\gt0_rx_cdrlock_counter[24]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[25]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[25]),
        .O(gt0_rx_cdrlock_counter_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[26]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[26]),
        .O(gt0_rx_cdrlock_counter_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[27]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[27]),
        .O(gt0_rx_cdrlock_counter_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[28]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[28]),
        .O(gt0_rx_cdrlock_counter_0[28]));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[28]_i_3 
       (.I0(gt0_rx_cdrlock_counter[28]),
        .O(\gt0_rx_cdrlock_counter[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[28]_i_4 
       (.I0(gt0_rx_cdrlock_counter[27]),
        .O(\gt0_rx_cdrlock_counter[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[28]_i_5 
       (.I0(gt0_rx_cdrlock_counter[26]),
        .O(\gt0_rx_cdrlock_counter[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[28]_i_6 
       (.I0(gt0_rx_cdrlock_counter[25]),
        .O(\gt0_rx_cdrlock_counter[28]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[29]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[29]),
        .O(gt0_rx_cdrlock_counter_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[2]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[2]),
        .O(gt0_rx_cdrlock_counter_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[30]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[30]),
        .O(gt0_rx_cdrlock_counter_0[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[31]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[31]),
        .O(gt0_rx_cdrlock_counter_0[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_10 
       (.I0(gt0_rx_cdrlock_counter[27]),
        .I1(gt0_rx_cdrlock_counter[26]),
        .I2(gt0_rx_cdrlock_counter[29]),
        .I3(gt0_rx_cdrlock_counter[28]),
        .O(\gt0_rx_cdrlock_counter[31]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[31]_i_11 
       (.I0(gt0_rx_cdrlock_counter[31]),
        .O(\gt0_rx_cdrlock_counter[31]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[31]_i_12 
       (.I0(gt0_rx_cdrlock_counter[30]),
        .O(\gt0_rx_cdrlock_counter[31]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[31]_i_13 
       (.I0(gt0_rx_cdrlock_counter[29]),
        .O(\gt0_rx_cdrlock_counter[31]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \gt0_rx_cdrlock_counter[31]_i_2 
       (.I0(gt0_rx_cdrlock_counter[13]),
        .I1(gt0_rx_cdrlock_counter[12]),
        .I2(gt0_rx_cdrlock_counter[10]),
        .I3(gt0_rx_cdrlock_counter[11]),
        .I4(\gt0_rx_cdrlock_counter[31]_i_6_n_0 ),
        .O(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_3 
       (.I0(gt0_rx_cdrlock_counter[4]),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(gt0_rx_cdrlock_counter[2]),
        .I3(gt0_rx_cdrlock_counter[3]),
        .I4(\gt0_rx_cdrlock_counter[31]_i_7_n_0 ),
        .O(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_4 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_8_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_9_n_0 ),
        .I2(gt0_rx_cdrlock_counter[31]),
        .I3(gt0_rx_cdrlock_counter[30]),
        .I4(gt0_rx_cdrlock_counter[1]),
        .I5(\gt0_rx_cdrlock_counter[31]_i_10_n_0 ),
        .O(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_6 
       (.I0(gt0_rx_cdrlock_counter[15]),
        .I1(gt0_rx_cdrlock_counter[14]),
        .I2(gt0_rx_cdrlock_counter[17]),
        .I3(gt0_rx_cdrlock_counter[16]),
        .O(\gt0_rx_cdrlock_counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \gt0_rx_cdrlock_counter[31]_i_7 
       (.I0(gt0_rx_cdrlock_counter[6]),
        .I1(gt0_rx_cdrlock_counter[7]),
        .I2(gt0_rx_cdrlock_counter[9]),
        .I3(gt0_rx_cdrlock_counter[8]),
        .O(\gt0_rx_cdrlock_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_8 
       (.I0(gt0_rx_cdrlock_counter[23]),
        .I1(gt0_rx_cdrlock_counter[22]),
        .I2(gt0_rx_cdrlock_counter[25]),
        .I3(gt0_rx_cdrlock_counter[24]),
        .O(\gt0_rx_cdrlock_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_9 
       (.I0(gt0_rx_cdrlock_counter[19]),
        .I1(gt0_rx_cdrlock_counter[18]),
        .I2(gt0_rx_cdrlock_counter[21]),
        .I3(gt0_rx_cdrlock_counter[20]),
        .O(\gt0_rx_cdrlock_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[3]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[3]),
        .O(gt0_rx_cdrlock_counter_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[4]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[4]),
        .O(gt0_rx_cdrlock_counter_0[4]));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[4]_i_3 
       (.I0(gt0_rx_cdrlock_counter[4]),
        .O(\gt0_rx_cdrlock_counter[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[4]_i_4 
       (.I0(gt0_rx_cdrlock_counter[3]),
        .O(\gt0_rx_cdrlock_counter[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[4]_i_5 
       (.I0(gt0_rx_cdrlock_counter[2]),
        .O(\gt0_rx_cdrlock_counter[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[4]_i_6 
       (.I0(gt0_rx_cdrlock_counter[1]),
        .O(\gt0_rx_cdrlock_counter[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[5]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[5]),
        .O(gt0_rx_cdrlock_counter_0[5]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[6]_i_1 
       (.I0(data0[6]),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlock_counter_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[7]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(data0[7]),
        .O(gt0_rx_cdrlock_counter_0[7]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[8]_i_1 
       (.I0(data0[8]),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlock_counter_0[8]));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[8]_i_3 
       (.I0(gt0_rx_cdrlock_counter[8]),
        .O(\gt0_rx_cdrlock_counter[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[8]_i_4 
       (.I0(gt0_rx_cdrlock_counter[7]),
        .O(\gt0_rx_cdrlock_counter[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[8]_i_5 
       (.I0(gt0_rx_cdrlock_counter[6]),
        .O(\gt0_rx_cdrlock_counter[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \gt0_rx_cdrlock_counter[8]_i_6 
       (.I0(gt0_rx_cdrlock_counter[5]),
        .O(\gt0_rx_cdrlock_counter[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[9]_i_1 
       (.I0(data0[9]),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlock_counter_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[0]),
        .Q(gt0_rx_cdrlock_counter[0]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[10]),
        .Q(gt0_rx_cdrlock_counter[10]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[11]),
        .Q(gt0_rx_cdrlock_counter[11]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[12]),
        .Q(gt0_rx_cdrlock_counter[12]),
        .R(gt0_gtrxreset_gt_d1));
  CARRY4 \gt0_rx_cdrlock_counter_reg[12]_i_2 
       (.CI(\gt0_rx_cdrlock_counter_reg[8]_i_2_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[12]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[12]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[12]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\gt0_rx_cdrlock_counter[12]_i_3_n_0 ,\gt0_rx_cdrlock_counter[12]_i_4_n_0 ,\gt0_rx_cdrlock_counter[12]_i_5_n_0 ,\gt0_rx_cdrlock_counter[12]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[13]),
        .Q(gt0_rx_cdrlock_counter[13]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[14]),
        .Q(gt0_rx_cdrlock_counter[14]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[15]),
        .Q(gt0_rx_cdrlock_counter[15]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[16] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[16]),
        .Q(gt0_rx_cdrlock_counter[16]),
        .R(gt0_gtrxreset_gt_d1));
  CARRY4 \gt0_rx_cdrlock_counter_reg[16]_i_2 
       (.CI(\gt0_rx_cdrlock_counter_reg[12]_i_2_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[16]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[16]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[16]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\gt0_rx_cdrlock_counter[16]_i_3_n_0 ,\gt0_rx_cdrlock_counter[16]_i_4_n_0 ,\gt0_rx_cdrlock_counter[16]_i_5_n_0 ,\gt0_rx_cdrlock_counter[16]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[17]),
        .Q(gt0_rx_cdrlock_counter[17]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[18]),
        .Q(gt0_rx_cdrlock_counter[18]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[19] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[19]),
        .Q(gt0_rx_cdrlock_counter[19]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[1]),
        .Q(gt0_rx_cdrlock_counter[1]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[20] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[20]),
        .Q(gt0_rx_cdrlock_counter[20]),
        .R(gt0_gtrxreset_gt_d1));
  CARRY4 \gt0_rx_cdrlock_counter_reg[20]_i_2 
       (.CI(\gt0_rx_cdrlock_counter_reg[16]_i_2_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[20]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[20]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[20]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\gt0_rx_cdrlock_counter[20]_i_3_n_0 ,\gt0_rx_cdrlock_counter[20]_i_4_n_0 ,\gt0_rx_cdrlock_counter[20]_i_5_n_0 ,\gt0_rx_cdrlock_counter[20]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[21] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[21]),
        .Q(gt0_rx_cdrlock_counter[21]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[22] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[22]),
        .Q(gt0_rx_cdrlock_counter[22]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[23] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[23]),
        .Q(gt0_rx_cdrlock_counter[23]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[24] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[24]),
        .Q(gt0_rx_cdrlock_counter[24]),
        .R(gt0_gtrxreset_gt_d1));
  CARRY4 \gt0_rx_cdrlock_counter_reg[24]_i_2 
       (.CI(\gt0_rx_cdrlock_counter_reg[20]_i_2_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[24]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[24]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[24]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\gt0_rx_cdrlock_counter[24]_i_3_n_0 ,\gt0_rx_cdrlock_counter[24]_i_4_n_0 ,\gt0_rx_cdrlock_counter[24]_i_5_n_0 ,\gt0_rx_cdrlock_counter[24]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[25] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[25]),
        .Q(gt0_rx_cdrlock_counter[25]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[26] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[26]),
        .Q(gt0_rx_cdrlock_counter[26]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[27] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[27]),
        .Q(gt0_rx_cdrlock_counter[27]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[28] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[28]),
        .Q(gt0_rx_cdrlock_counter[28]),
        .R(gt0_gtrxreset_gt_d1));
  CARRY4 \gt0_rx_cdrlock_counter_reg[28]_i_2 
       (.CI(\gt0_rx_cdrlock_counter_reg[24]_i_2_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[28]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[28]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[28]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\gt0_rx_cdrlock_counter[28]_i_3_n_0 ,\gt0_rx_cdrlock_counter[28]_i_4_n_0 ,\gt0_rx_cdrlock_counter[28]_i_5_n_0 ,\gt0_rx_cdrlock_counter[28]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[29] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[29]),
        .Q(gt0_rx_cdrlock_counter[29]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[2]),
        .Q(gt0_rx_cdrlock_counter[2]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[30] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[30]),
        .Q(gt0_rx_cdrlock_counter[30]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[31] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[31]),
        .Q(gt0_rx_cdrlock_counter[31]),
        .R(gt0_gtrxreset_gt_d1));
  CARRY4 \gt0_rx_cdrlock_counter_reg[31]_i_5 
       (.CI(\gt0_rx_cdrlock_counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_gt0_rx_cdrlock_counter_reg[31]_i_5_CO_UNCONNECTED [3:2],\gt0_rx_cdrlock_counter_reg[31]_i_5_n_2 ,\gt0_rx_cdrlock_counter_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gt0_rx_cdrlock_counter_reg[31]_i_5_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,\gt0_rx_cdrlock_counter[31]_i_11_n_0 ,\gt0_rx_cdrlock_counter[31]_i_12_n_0 ,\gt0_rx_cdrlock_counter[31]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[3]),
        .Q(gt0_rx_cdrlock_counter[3]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[4]),
        .Q(gt0_rx_cdrlock_counter[4]),
        .R(gt0_gtrxreset_gt_d1));
  CARRY4 \gt0_rx_cdrlock_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\gt0_rx_cdrlock_counter_reg[4]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[4]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[4]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[4]_i_2_n_3 }),
        .CYINIT(gt0_rx_cdrlock_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\gt0_rx_cdrlock_counter[4]_i_3_n_0 ,\gt0_rx_cdrlock_counter[4]_i_4_n_0 ,\gt0_rx_cdrlock_counter[4]_i_5_n_0 ,\gt0_rx_cdrlock_counter[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[5]),
        .Q(gt0_rx_cdrlock_counter[5]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[6]),
        .Q(gt0_rx_cdrlock_counter[6]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[7]),
        .Q(gt0_rx_cdrlock_counter[7]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[8]),
        .Q(gt0_rx_cdrlock_counter[8]),
        .R(gt0_gtrxreset_gt_d1));
  CARRY4 \gt0_rx_cdrlock_counter_reg[8]_i_2 
       (.CI(\gt0_rx_cdrlock_counter_reg[4]_i_2_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[8]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[8]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[8]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\gt0_rx_cdrlock_counter[8]_i_3_n_0 ,\gt0_rx_cdrlock_counter[8]_i_4_n_0 ,\gt0_rx_cdrlock_counter[8]_i_5_n_0 ,\gt0_rx_cdrlock_counter[8]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[9]),
        .Q(gt0_rx_cdrlock_counter[9]),
        .R(gt0_gtrxreset_gt_d1));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    gt0_rx_cdrlocked_i_1
       (.I0(gt0_rx_cdrlocked_reg_n_0),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(gt0_rx_cdrlocked_i_1_n_0));
  FDRE gt0_rx_cdrlocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlocked_i_1_n_0),
        .Q(gt0_rx_cdrlocked_reg_n_0),
        .R(gt0_gtrxreset_gt_d1));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_RX_STARTUP_FSM gt0_rxresetfsm_i
       (.AR(AR),
        .\FSM_sequential_rx_state_reg[0]_0 (\FSM_sequential_rx_state_reg[0]_0 ),
        .\FSM_sequential_rx_state_reg[2]_0 (\FSM_sequential_rx_state_reg[2] ),
        .\FSM_sequential_rx_state_reg[3]_0 (\FSM_sequential_rx_state_reg[3] ),
        .\FSM_sequential_rx_state_reg[3]_1 (\FSM_sequential_rx_state_reg[3]_0 ),
        .\FSM_sequential_rx_state_reg[3]_2 (\FSM_sequential_rx_state_reg[3]_1 ),
        .\FSM_sequential_rx_state_reg[3]_3 (\FSM_sequential_rx_state_reg[3]_2 ),
        .MMCM_RESET_reg(MMCM_RESET_reg_0),
        .Q(\init_wait_count_reg[0]_0 ),
        .check_tlock_max_reg_0(check_tlock_max_reg),
        .\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95] ),
        .\cpllpd_wait_reg[95]_0 (gtwizard_i_n_1),
        .data_in(gtwizard_i_n_7),
        .data_out(data_out),
        .data_sync_reg1(data_sync_reg1_0),
        .data_sync_reg1_0(data_sync_reg1_1),
        .data_sync_reg6(data_sync_reg6),
        .data_sync_reg6_0(data_sync_reg6_0),
        .gt0_gtrxreset_t(gt0_gtrxreset_t),
        .gt0_rx_cdrlocked_reg(gt0_rx_cdrlocked_reg_n_0),
        .gt0_rxresetdone_out_i(gt0_rxresetdone_out_i),
        .gt0_rxuserrdy_i(gt0_rxuserrdy_i),
        .independent_clock_bufg(independent_clock_bufg),
        .\init_wait_count_reg[0]_0 (\init_wait_count_reg[0]_2 ),
        .\init_wait_count_reg[4]_0 (\init_wait_count_reg[4] ),
        .init_wait_done_reg_0(init_wait_done_reg),
        .\mmcm_lock_count_reg[9]_0 (\mmcm_lock_count_reg[9]_2 ),
        .\mmcm_lock_count_reg[9]_1 (\mmcm_lock_count_reg[9]_3 ),
        .\mmcm_lock_count_reg[9]_2 (\mmcm_lock_count_reg[9]_4 ),
        .mmcm_lock_reclocked_0(mmcm_lock_reclocked_0),
        .mmcm_lock_reclocked_reg_0(mmcm_lock_reclocked_reg_1),
        .out(\FSM_sequential_rx_state_reg[0] ),
        .reset_time_out_reg_0(reset_time_out_reg),
        .reset_time_out_reg_1(reset_time_out_reg_0),
        .reset_time_out_reg_2(reset_time_out_reg_1),
        .rx_fsm_reset_done_int_reg_0(rx_fsm_reset_done_int_reg),
        .rx_fsm_reset_done_int_reg_1(rx_fsm_reset_done_int_reg_0),
        .rx_fsm_reset_done_int_reg_2(rx_fsm_reset_done_int_reg_1),
        .rx_fsm_reset_done_int_reg_3(rx_fsm_reset_done_int_reg_2),
        .rx_fsm_reset_done_int_s3(rx_fsm_reset_done_int_s3),
        .time_out_100us_reg_0(time_out_100us_reg),
        .time_out_100us_reg_1(time_out_100us_reg_0),
        .time_out_100us_reg_2(time_out_100us_reg_1),
        .time_out_100us_reg_3(time_out_100us_reg_2),
        .time_out_100us_reg_4(time_out_100us_reg_3),
        .time_out_100us_reg_5(time_out_100us_reg_4),
        .time_out_100us_reg_6(time_out_100us_reg_5),
        .time_out_1us_reg_0(time_out_1us_reg),
        .time_out_1us_reg_1(time_out_1us_reg_0),
        .time_out_1us_reg_2(time_out_1us_reg_1),
        .time_out_1us_reg_3(time_out_1us_reg_2),
        .time_out_1us_reg_4(time_out_1us_reg_3),
        .time_out_1us_reg_5(time_out_1us_reg_4),
        .time_out_1us_reg_6(time_out_1us_reg_5),
        .time_out_2ms(time_out_2ms),
        .time_out_2ms_reg_0(time_out_2ms_reg_0),
        .time_out_wait_bypass_reg_0(time_out_wait_bypass_reg_0),
        .time_tlock_max_reg_0(time_tlock_max_reg_0),
        .time_tlock_max_reg_1(time_tlock_max_reg_1),
        .time_tlock_max_reg_2(time_tlock_max_reg_2),
        .time_tlock_max_reg_3(time_tlock_max_reg_3),
        .time_tlock_max_reg_4(time_tlock_max_reg_4),
        .time_tlock_max_reg_5(time_tlock_max_reg_5),
        .\wait_bypass_count_reg[0]_0 (\wait_bypass_count_reg[0] ),
        .\wait_bypass_count_reg[0]_1 (\wait_bypass_count_reg[0]_0 ));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_TX_STARTUP_FSM gt0_txresetfsm_i
       (.AR(AR),
        .CPLL_RESET0(CPLL_RESET0),
        .\FSM_sequential_tx_state_reg[0]_0 (\FSM_sequential_tx_state_reg[0] ),
        .\FSM_sequential_tx_state_reg[0]_1 (\FSM_sequential_tx_state_reg[0]_0 ),
        .\FSM_sequential_tx_state_reg[2]_0 (\FSM_sequential_tx_state_reg[2] ),
        .\FSM_sequential_tx_state_reg[2]_1 (\FSM_sequential_tx_state_reg[2]_0 ),
        .\FSM_sequential_tx_state_reg[2]_2 (\FSM_sequential_tx_state_reg[2]_1 ),
        .\FSM_sequential_tx_state_reg[2]_3 (\FSM_sequential_tx_state_reg[2]_2 ),
        .\FSM_sequential_tx_state_reg[2]_4 (\FSM_sequential_tx_state_reg[2]_3 ),
        .\FSM_sequential_tx_state_reg[3]_0 (\FSM_sequential_tx_state_reg[3] ),
        .\FSM_sequential_tx_state_reg[3]_1 (\FSM_sequential_tx_state_reg[3]_0 ),
        .\FSM_sequential_tx_state_reg[3]_2 (\FSM_sequential_tx_state_reg[3]_1 ),
        .MMCM_RESET_reg_0(MMCM_RESET_reg),
        .MMCM_RESET_reg_1(MMCM_RESET_reg_0),
        .Q(\init_wait_count_reg[0] ),
        .\cpllpd_wait_reg[95] (gtwizard_i_n_9),
        .\cpllpd_wait_reg[95]_0 (gtwizard_i_n_1),
        .data_in(data_in),
        .data_sync_reg1(data_sync_reg1),
        .gt0_cpllrefclklost_i(gt0_cpllrefclklost_i),
        .gt0_gttxreset_t(gt0_gttxreset_t),
        .gt0_txresetdone_out_i(gt0_txresetdone_out_i),
        .gt0_txuserrdy_i(gt0_txuserrdy_i),
        .independent_clock_bufg(independent_clock_bufg),
        .\init_wait_count_reg[0]_0 (\init_wait_count_reg[0]_1 ),
        .\init_wait_count_reg[7]_0 (\init_wait_count_reg[7] ),
        .\mmcm_lock_count_reg[9]_0 (\mmcm_lock_count_reg[9] ),
        .\mmcm_lock_count_reg[9]_1 (\mmcm_lock_count_reg[9]_0 ),
        .\mmcm_lock_count_reg[9]_2 (\mmcm_lock_count_reg[9]_1 ),
        .mmcm_lock_reclocked_reg_0(mmcm_lock_reclocked_reg),
        .mmcm_lock_reclocked_reg_1(mmcm_lock_reclocked_reg_0),
        .mmcm_reset(mmcm_reset),
        .out(out),
        .pll_reset_asserted_reg_0(pll_reset_asserted_reg),
        .reset_sync1(reset_sync1),
        .reset_time_out_1(reset_time_out_1),
        .run_phase_alignment_int_s3(run_phase_alignment_int_s3),
        .time_out_2ms_2(time_out_2ms_2),
        .time_out_2ms_reg_0(time_out_2ms_reg),
        .time_out_500us_reg_0(time_out_500us_reg),
        .time_out_500us_reg_1(time_out_500us_reg_0),
        .time_out_500us_reg_2(time_out_500us_reg_1),
        .time_out_500us_reg_3(time_out_500us_reg_2),
        .\time_out_counter_reg[18]_0 (\time_out_counter_reg[18] ),
        .time_out_wait_bypass_reg_0(time_out_wait_bypass_reg),
        .time_tlock_max_reg_0(time_tlock_max_reg),
        .time_tlock_max_reg_1(time_tlock_max_reg_6),
        .time_tlock_max_reg_2(time_tlock_max_reg_7),
        .time_tlock_max_reg_3(time_tlock_max_reg_8),
        .time_tlock_max_reg_4(time_tlock_max_reg_9),
        .time_tlock_max_reg_5(time_tlock_max_reg_10),
        .tx_fsm_reset_done_int_s3(tx_fsm_reset_done_int_s3),
        .\wait_bypass_count_reg[0]_0 (\wait_bypass_count_reg[0]_1 ));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_multi_gt gtwizard_i
       (.CLK(CLK),
        .CPLL_RESET_reg(reset_sync1),
        .D(D),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state_reg[0] ),
        .MMCM_RESET_reg(MMCM_RESET_reg),
        .Q(Q),
        .SR(gt0_gtrxreset_gt_d1),
        .cpll_reset0_i(cpll_reset0_i),
        .\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95] ),
        .data_sync_reg1(gtwizard_i_n_1),
        .data_sync_reg1_0(gtwizard_i_n_7),
        .data_sync_reg1_1(gtwizard_i_n_9),
        .drp_busy_i1_reg(drp_busy_i1_reg),
        .flag_reg(flag_reg),
        .flag_reg_0(flag_reg_0),
        .gt0_cpllrefclklost_i(gt0_cpllrefclklost_i),
        .gt0_cpllreset_i_3(gt0_cpllreset_i_3),
        .gt0_gttxreset_gt(gt0_gttxreset_gt),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gt0_rxpd_in(gt0_rxpd_in),
        .gt0_rxuserrdy_i(gt0_rxuserrdy_i),
        .gt0_txbufstatus_out(gt0_txbufstatus_out),
        .gt0_txpd_in(gt0_txpd_in),
        .gt0_txuserrdy_i(gt0_txuserrdy_i),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .out(\rd_data_reg[0]_0 ),
        .\rd_data_reg[0] (\rd_data_reg[0] ),
        .\rd_data_reg[0]_0 (\rd_data_reg[0]_1 ),
        .\rd_data_reg[15] (\rd_data_reg[15] ),
        .\rd_data_reg[15]_0 (\rd_data_reg[15]_0 ),
        .reset_out(reset_out),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .\txchardispmode_int_reg[1] (\txchardispmode_int_reg[1] ),
        .\txchardispval_int_reg[1] (\txchardispval_int_reg[1] ),
        .\txcharisk_int_reg[1] (\txcharisk_int_reg[1] ),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .wtd_rxpcsreset_in(wtd_rxpcsreset_in));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_GTWIZARD_multi_gt" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_multi_gt
   (cpll_reset0_i,
    data_sync_reg1,
    gt0_cpllrefclklost_i,
    \rd_data_reg[0] ,
    txn,
    txp,
    rxoutclk,
    data_sync_reg1_0,
    txoutclk,
    data_sync_reg1_1,
    gt0_txbufstatus_out,
    D,
    \rd_data_reg[15] ,
    drp_busy_i1_reg,
    \rd_data_reg[15]_0 ,
    out,
    \rd_data_reg[0]_0 ,
    CLK,
    independent_clock_bufg,
    gt0_cpllreset_i_3,
    rxn,
    rxp,
    gtrefclk_out,
    gt0_gttxreset_gt,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    reset_out,
    wtd_rxpcsreset_in,
    gt0_rxuserrdy_i,
    \cpllpd_wait_reg[95] ,
    gt0_txpd_in,
    gt0_txuserrdy_i,
    MMCM_RESET_reg,
    gt0_rxpd_in,
    Q,
    \txchardispmode_int_reg[1] ,
    \txchardispval_int_reg[1] ,
    \txcharisk_int_reg[1] ,
    flag_reg,
    \FSM_sequential_state_reg[0] ,
    flag_reg_0,
    SR,
    CPLL_RESET_reg);
  output cpll_reset0_i;
  output data_sync_reg1;
  output gt0_cpllrefclklost_i;
  output \rd_data_reg[0] ;
  output txn;
  output txp;
  output rxoutclk;
  output data_sync_reg1_0;
  output txoutclk;
  output data_sync_reg1_1;
  output [0:0]gt0_txbufstatus_out;
  output [23:0]D;
  output \rd_data_reg[15] ;
  output drp_busy_i1_reg;
  output \rd_data_reg[15]_0 ;
  output [2:0]out;
  output [3:0]\rd_data_reg[0]_0 ;
  input CLK;
  input independent_clock_bufg;
  input gt0_cpllreset_i_3;
  input rxn;
  input rxp;
  input gtrefclk_out;
  input gt0_gttxreset_gt;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input reset_out;
  input wtd_rxpcsreset_in;
  input gt0_rxuserrdy_i;
  input \cpllpd_wait_reg[95] ;
  input [0:0]gt0_txpd_in;
  input gt0_txuserrdy_i;
  input MMCM_RESET_reg;
  input [0:0]gt0_rxpd_in;
  input [15:0]Q;
  input [1:0]\txchardispmode_int_reg[1] ;
  input [1:0]\txchardispval_int_reg[1] ;
  input [1:0]\txcharisk_int_reg[1] ;
  input flag_reg;
  input \FSM_sequential_state_reg[0] ;
  input flag_reg_0;
  input [0:0]SR;
  input CPLL_RESET_reg;

  wire CLK;
  wire CPLL_RESET_reg;
  wire [23:0]D;
  wire \FSM_sequential_state_reg[0] ;
  wire MMCM_RESET_reg;
  wire [15:0]Q;
  wire [0:0]SR;
  wire cpll_reset0_i;
  wire \cpllpd_wait_reg[95] ;
  wire data_sync_reg1;
  wire data_sync_reg1_0;
  wire data_sync_reg1_1;
  wire drp_busy_i1_reg;
  wire flag_reg;
  wire flag_reg_0;
  wire gt0_cpllpd_i;
  wire gt0_cpllrefclklost_i;
  wire gt0_cpllreset_i_3;
  wire gt0_gttxreset_gt;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire [0:0]gt0_rxpd_in;
  wire gt0_rxuserrdy_i;
  wire [0:0]gt0_txbufstatus_out;
  wire [0:0]gt0_txpd_in;
  wire gt0_txuserrdy_i;
  wire gtrefclk_out;
  wire independent_clock_bufg;
  wire [2:0]out;
  wire \rd_data_reg[0] ;
  wire [3:0]\rd_data_reg[0]_0 ;
  wire \rd_data_reg[15] ;
  wire \rd_data_reg[15]_0 ;
  wire reset_out;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire [1:0]\txchardispmode_int_reg[1] ;
  wire [1:0]\txchardispval_int_reg[1] ;
  wire [1:0]\txcharisk_int_reg[1] ;
  wire txn;
  wire txoutclk;
  wire txp;
  wire wtd_rxpcsreset_in;

  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_cpll_railing cpll_railing0_i
       (.CLK(CLK),
        .cpll_reset0_i(cpll_reset0_i),
        .gt0_cpllpd_i(gt0_cpllpd_i));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_GT gt0_GTWIZARD_i
       (.CLK(CLK),
        .CPLL_RESET_reg(CPLL_RESET_reg),
        .D(D),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state_reg[0] ),
        .MMCM_RESET_reg(MMCM_RESET_reg),
        .Q(Q),
        .SR(SR),
        .\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95] ),
        .data_sync_reg1(data_sync_reg1),
        .data_sync_reg1_0(data_sync_reg1_0),
        .data_sync_reg1_1(data_sync_reg1_1),
        .drp_busy_i1_reg_0(drp_busy_i1_reg),
        .flag_reg(flag_reg),
        .flag_reg_0(flag_reg_0),
        .gt0_cpllpd_i(gt0_cpllpd_i),
        .gt0_cpllrefclklost_i(gt0_cpllrefclklost_i),
        .gt0_cpllreset_i_3(gt0_cpllreset_i_3),
        .gt0_gttxreset_gt(gt0_gttxreset_gt),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gt0_rxpd_in(gt0_rxpd_in),
        .gt0_rxuserrdy_i(gt0_rxuserrdy_i),
        .gt0_txbufstatus_out(gt0_txbufstatus_out),
        .gt0_txpd_in(gt0_txpd_in),
        .gt0_txuserrdy_i(gt0_txuserrdy_i),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .out(out),
        .\rd_data_reg[0] (\rd_data_reg[0] ),
        .\rd_data_reg[0]_0 (\rd_data_reg[0]_0 ),
        .\rd_data_reg[15] (\rd_data_reg[15] ),
        .\rd_data_reg[15]_0 (\rd_data_reg[15]_0 ),
        .reset_out(reset_out),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .\txchardispmode_int_reg[1] (\txchardispmode_int_reg[1] ),
        .\txchardispval_int_reg[1] (\txchardispval_int_reg[1] ),
        .\txcharisk_int_reg[1] (\txcharisk_int_reg[1] ),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .wtd_rxpcsreset_in(wtd_rxpcsreset_in));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_RX_STARTUP_FSM" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_RX_STARTUP_FSM
   (\wait_bypass_count_reg[0]_0 ,
    rx_fsm_reset_done_int_s3,
    init_wait_done_reg_0,
    time_out_1us_reg_0,
    \FSM_sequential_rx_state_reg[3]_0 ,
    time_tlock_max_reg_0,
    time_tlock_max_reg_1,
    mmcm_lock_reclocked_0,
    time_out_100us_reg_0,
    time_out_1us_reg_1,
    gt0_gtrxreset_t,
    gt0_rxresetdone_out_i,
    gt0_rxuserrdy_i,
    data_sync_reg1,
    data_sync_reg1_0,
    time_tlock_max_reg_2,
    out,
    data_out,
    rx_fsm_reset_done_int_reg_0,
    Q,
    \mmcm_lock_count_reg[9]_0 ,
    \mmcm_lock_count_reg[9]_1 ,
    \mmcm_lock_count_reg[9]_2 ,
    time_tlock_max_reg_3,
    time_out_100us_reg_1,
    time_out_100us_reg_2,
    time_tlock_max_reg_4,
    time_out_100us_reg_3,
    time_out_1us_reg_2,
    time_out_2ms,
    time_tlock_max_reg_5,
    time_out_100us_reg_4,
    time_out_1us_reg_3,
    time_out_100us_reg_5,
    \init_wait_count_reg[0]_0 ,
    time_out_1us_reg_4,
    time_out_1us_reg_5,
    \wait_bypass_count_reg[0]_1 ,
    reset_time_out_reg_0,
    reset_time_out_reg_1,
    rx_fsm_reset_done_int_reg_1,
    rx_fsm_reset_done_int_reg_2,
    rx_fsm_reset_done_int_reg_3,
    reset_time_out_reg_2,
    independent_clock_bufg,
    \cpllpd_wait_reg[95] ,
    \init_wait_count_reg[4]_0 ,
    AR,
    \FSM_sequential_rx_state_reg[3]_1 ,
    time_out_2ms_reg_0,
    \FSM_sequential_rx_state_reg[2]_0 ,
    check_tlock_max_reg_0,
    mmcm_lock_reclocked_reg_0,
    time_out_100us_reg_6,
    time_out_1us_reg_6,
    \FSM_sequential_rx_state_reg[3]_2 ,
    data_sync_reg6,
    \FSM_sequential_rx_state_reg[3]_3 ,
    \FSM_sequential_rx_state_reg[0]_0 ,
    time_out_wait_bypass_reg_0,
    data_in,
    MMCM_RESET_reg,
    data_sync_reg6_0,
    \cpllpd_wait_reg[95]_0 ,
    gt0_rx_cdrlocked_reg);
  output \wait_bypass_count_reg[0]_0 ;
  output rx_fsm_reset_done_int_s3;
  output init_wait_done_reg_0;
  output time_out_1us_reg_0;
  output \FSM_sequential_rx_state_reg[3]_0 ;
  output time_tlock_max_reg_0;
  output time_tlock_max_reg_1;
  output mmcm_lock_reclocked_0;
  output time_out_100us_reg_0;
  output time_out_1us_reg_1;
  output gt0_gtrxreset_t;
  output gt0_rxresetdone_out_i;
  output gt0_rxuserrdy_i;
  output data_sync_reg1;
  output data_sync_reg1_0;
  output time_tlock_max_reg_2;
  output [3:0]out;
  output data_out;
  output rx_fsm_reset_done_int_reg_0;
  output [3:0]Q;
  output \mmcm_lock_count_reg[9]_0 ;
  output [1:0]\mmcm_lock_count_reg[9]_1 ;
  output \mmcm_lock_count_reg[9]_2 ;
  output time_tlock_max_reg_3;
  output time_out_100us_reg_1;
  output time_out_100us_reg_2;
  output time_tlock_max_reg_4;
  output time_out_100us_reg_3;
  output time_out_1us_reg_2;
  output time_out_2ms;
  output time_tlock_max_reg_5;
  output time_out_100us_reg_4;
  output time_out_1us_reg_3;
  output time_out_100us_reg_5;
  output \init_wait_count_reg[0]_0 ;
  output time_out_1us_reg_4;
  output time_out_1us_reg_5;
  output \wait_bypass_count_reg[0]_1 ;
  output reset_time_out_reg_0;
  output reset_time_out_reg_1;
  output rx_fsm_reset_done_int_reg_1;
  output rx_fsm_reset_done_int_reg_2;
  output rx_fsm_reset_done_int_reg_3;
  output reset_time_out_reg_2;
  input independent_clock_bufg;
  input \cpllpd_wait_reg[95] ;
  input \init_wait_count_reg[4]_0 ;
  input [0:0]AR;
  input \FSM_sequential_rx_state_reg[3]_1 ;
  input time_out_2ms_reg_0;
  input \FSM_sequential_rx_state_reg[2]_0 ;
  input check_tlock_max_reg_0;
  input mmcm_lock_reclocked_reg_0;
  input time_out_100us_reg_6;
  input time_out_1us_reg_6;
  input \FSM_sequential_rx_state_reg[3]_2 ;
  input data_sync_reg6;
  input \FSM_sequential_rx_state_reg[3]_3 ;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input time_out_wait_bypass_reg_0;
  input data_in;
  input MMCM_RESET_reg;
  input data_sync_reg6_0;
  input \cpllpd_wait_reg[95]_0 ;
  input gt0_rx_cdrlocked_reg;

  wire [0:0]AR;
  wire \FSM_sequential_rx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_11_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_9_n_0 ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[2]_0 ;
  wire \FSM_sequential_rx_state_reg[3]_0 ;
  wire \FSM_sequential_rx_state_reg[3]_1 ;
  wire \FSM_sequential_rx_state_reg[3]_2 ;
  wire \FSM_sequential_rx_state_reg[3]_3 ;
  wire MMCM_RESET_reg;
  wire [3:0]Q;
  wire check_tlock_max_reg_0;
  wire cplllock_sync;
  wire \cpllpd_wait_reg[95] ;
  wire \cpllpd_wait_reg[95]_0 ;
  wire data_in;
  wire data_out;
  wire data_sync_reg1;
  wire data_sync_reg1_0;
  wire data_sync_reg6;
  wire data_sync_reg6_0;
  wire gt0_gtrxreset_t;
  wire gt0_rx_cdrlocked_reg;
  wire gt0_rxresetdone_out_i;
  wire gt0_rxuserrdy_i;
  wire independent_clock_bufg;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1__0_n_0 ;
  wire \init_wait_count[7]_i_4__0_n_0 ;
  wire \init_wait_count_reg[0]_0 ;
  wire \init_wait_count_reg[4]_0 ;
  wire [7:3]init_wait_count_reg__0;
  wire init_wait_done_reg_0;
  wire \mmcm_lock_count[7]_i_2__0_n_0 ;
  wire \mmcm_lock_count[8]_i_2__0_n_0 ;
  wire \mmcm_lock_count[9]_i_2__0_n_0 ;
  wire \mmcm_lock_count_reg[9]_0 ;
  wire [1:0]\mmcm_lock_count_reg[9]_1 ;
  wire \mmcm_lock_count_reg[9]_2 ;
  wire [7:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked_0;
  wire mmcm_lock_reclocked_reg_0;
  (* RTL_KEEP = "yes" *) wire [3:0]out;
  wire [7:1]p_0_in__2;
  wire [9:0]p_0_in__3;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire reset_time_out_reg_2;
  wire run_phase_alignment_int_s2;
  wire rx_fsm_reset_done_int_i_6_n_0;
  wire rx_fsm_reset_done_int_reg_0;
  wire rx_fsm_reset_done_int_reg_1;
  wire rx_fsm_reset_done_int_reg_2;
  wire rx_fsm_reset_done_int_reg_3;
  wire rx_fsm_reset_done_int_s2;
  wire rx_fsm_reset_done_int_s3;
  wire rx_state17_out;
  wire rxresetdone_s2;
  wire rxresetdone_s3;
  wire sync_cplllock_n_0;
  wire sync_data_valid_n_2;
  wire sync_data_valid_n_3;
  wire sync_data_valid_n_4;
  wire sync_data_valid_n_6;
  wire sync_mmcm_lock_reclocked_n_0;
  wire time_out_100us_reg_0;
  wire time_out_100us_reg_1;
  wire time_out_100us_reg_2;
  wire time_out_100us_reg_3;
  wire time_out_100us_reg_4;
  wire time_out_100us_reg_5;
  wire time_out_100us_reg_6;
  wire time_out_1us_reg_0;
  wire time_out_1us_reg_1;
  wire time_out_1us_reg_2;
  wire time_out_1us_reg_3;
  wire time_out_1us_reg_4;
  wire time_out_1us_reg_5;
  wire time_out_1us_reg_6;
  wire time_out_2ms;
  wire time_out_2ms_reg_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_10_n_0 ;
  wire \time_out_counter[0]_i_11_n_0 ;
  wire \time_out_counter[0]_i_4__0_n_0 ;
  wire \time_out_counter[0]_i_5__0_n_0 ;
  wire \time_out_counter[0]_i_6__0_n_0 ;
  wire \time_out_counter[0]_i_7__0_n_0 ;
  wire \time_out_counter[0]_i_8__0_n_0 ;
  wire \time_out_counter[0]_i_9__0_n_0 ;
  wire \time_out_counter[12]_i_2__0_n_0 ;
  wire \time_out_counter[12]_i_3__0_n_0 ;
  wire \time_out_counter[12]_i_4__0_n_0 ;
  wire \time_out_counter[12]_i_5__0_n_0 ;
  wire \time_out_counter[16]_i_2__0_n_0 ;
  wire \time_out_counter[16]_i_3__0_n_0 ;
  wire \time_out_counter[16]_i_4__0_n_0 ;
  wire \time_out_counter[16]_i_5_n_0 ;
  wire \time_out_counter[4]_i_2__0_n_0 ;
  wire \time_out_counter[4]_i_3__0_n_0 ;
  wire \time_out_counter[4]_i_4__0_n_0 ;
  wire \time_out_counter[4]_i_5__0_n_0 ;
  wire \time_out_counter[8]_i_2__0_n_0 ;
  wire \time_out_counter[8]_i_3__0_n_0 ;
  wire \time_out_counter[8]_i_4__0_n_0 ;
  wire \time_out_counter[8]_i_5__0_n_0 ;
  wire [19:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__0_n_0 ;
  wire \time_out_counter_reg[0]_i_2__0_n_1 ;
  wire \time_out_counter_reg[0]_i_2__0_n_2 ;
  wire \time_out_counter_reg[0]_i_2__0_n_3 ;
  wire \time_out_counter_reg[0]_i_2__0_n_4 ;
  wire \time_out_counter_reg[0]_i_2__0_n_5 ;
  wire \time_out_counter_reg[0]_i_2__0_n_6 ;
  wire \time_out_counter_reg[0]_i_2__0_n_7 ;
  wire \time_out_counter_reg[12]_i_1__0_n_0 ;
  wire \time_out_counter_reg[12]_i_1__0_n_1 ;
  wire \time_out_counter_reg[12]_i_1__0_n_2 ;
  wire \time_out_counter_reg[12]_i_1__0_n_3 ;
  wire \time_out_counter_reg[12]_i_1__0_n_4 ;
  wire \time_out_counter_reg[12]_i_1__0_n_5 ;
  wire \time_out_counter_reg[12]_i_1__0_n_6 ;
  wire \time_out_counter_reg[12]_i_1__0_n_7 ;
  wire \time_out_counter_reg[16]_i_1__0_n_1 ;
  wire \time_out_counter_reg[16]_i_1__0_n_2 ;
  wire \time_out_counter_reg[16]_i_1__0_n_3 ;
  wire \time_out_counter_reg[16]_i_1__0_n_4 ;
  wire \time_out_counter_reg[16]_i_1__0_n_5 ;
  wire \time_out_counter_reg[16]_i_1__0_n_6 ;
  wire \time_out_counter_reg[16]_i_1__0_n_7 ;
  wire \time_out_counter_reg[4]_i_1__0_n_0 ;
  wire \time_out_counter_reg[4]_i_1__0_n_1 ;
  wire \time_out_counter_reg[4]_i_1__0_n_2 ;
  wire \time_out_counter_reg[4]_i_1__0_n_3 ;
  wire \time_out_counter_reg[4]_i_1__0_n_4 ;
  wire \time_out_counter_reg[4]_i_1__0_n_5 ;
  wire \time_out_counter_reg[4]_i_1__0_n_6 ;
  wire \time_out_counter_reg[4]_i_1__0_n_7 ;
  wire \time_out_counter_reg[8]_i_1__0_n_0 ;
  wire \time_out_counter_reg[8]_i_1__0_n_1 ;
  wire \time_out_counter_reg[8]_i_1__0_n_2 ;
  wire \time_out_counter_reg[8]_i_1__0_n_3 ;
  wire \time_out_counter_reg[8]_i_1__0_n_4 ;
  wire \time_out_counter_reg[8]_i_1__0_n_5 ;
  wire \time_out_counter_reg[8]_i_1__0_n_6 ;
  wire \time_out_counter_reg[8]_i_1__0_n_7 ;
  wire time_out_wait_bypass_reg_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max_reg_0;
  wire time_tlock_max_reg_1;
  wire time_tlock_max_reg_2;
  wire time_tlock_max_reg_3;
  wire time_tlock_max_reg_4;
  wire time_tlock_max_reg_5;
  wire \wait_bypass_count[0]_i_10__0_n_0 ;
  wire \wait_bypass_count[0]_i_1__0_n_0 ;
  wire \wait_bypass_count[0]_i_2__0_n_0 ;
  wire \wait_bypass_count[0]_i_5__0_n_0 ;
  wire \wait_bypass_count[0]_i_6__0_n_0 ;
  wire \wait_bypass_count[0]_i_7__0_n_0 ;
  wire \wait_bypass_count[0]_i_8__0_n_0 ;
  wire \wait_bypass_count[0]_i_9__0_n_0 ;
  wire \wait_bypass_count[12]_i_2__0_n_0 ;
  wire \wait_bypass_count[4]_i_2__0_n_0 ;
  wire \wait_bypass_count[4]_i_3__0_n_0 ;
  wire \wait_bypass_count[4]_i_4__0_n_0 ;
  wire \wait_bypass_count[4]_i_5__0_n_0 ;
  wire \wait_bypass_count[8]_i_2__0_n_0 ;
  wire \wait_bypass_count[8]_i_3__0_n_0 ;
  wire \wait_bypass_count[8]_i_4__0_n_0 ;
  wire \wait_bypass_count[8]_i_5__0_n_0 ;
  wire [12:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_0 ;
  wire \wait_bypass_count_reg[0]_1 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_7 ;
  wire wait_time_cnt0;
  wire \wait_time_cnt[0]_i_10_n_0 ;
  wire \wait_time_cnt[0]_i_11_n_0 ;
  wire \wait_time_cnt[0]_i_2__0_n_0 ;
  wire \wait_time_cnt[0]_i_4__0_n_0 ;
  wire \wait_time_cnt[0]_i_5__0_n_0 ;
  wire \wait_time_cnt[0]_i_6__0_n_0 ;
  wire \wait_time_cnt[0]_i_7__0_n_0 ;
  wire \wait_time_cnt[0]_i_8_n_0 ;
  wire \wait_time_cnt[0]_i_9_n_0 ;
  wire \wait_time_cnt[12]_i_2__0_n_0 ;
  wire \wait_time_cnt[12]_i_3__0_n_0 ;
  wire \wait_time_cnt[12]_i_4__0_n_0 ;
  wire \wait_time_cnt[12]_i_5__0_n_0 ;
  wire \wait_time_cnt[4]_i_2__0_n_0 ;
  wire \wait_time_cnt[4]_i_3__0_n_0 ;
  wire \wait_time_cnt[4]_i_4__0_n_0 ;
  wire \wait_time_cnt[4]_i_5__0_n_0 ;
  wire \wait_time_cnt[8]_i_2__0_n_0 ;
  wire \wait_time_cnt[8]_i_3__0_n_0 ;
  wire \wait_time_cnt[8]_i_4__0_n_0 ;
  wire \wait_time_cnt[8]_i_5__0_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3__0_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_7 ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAA2A202AAA2A2A2A)) 
    \FSM_sequential_rx_state[0]_i_2 
       (.I0(out[0]),
        .I1(\FSM_sequential_rx_state_reg[3]_0 ),
        .I2(out[1]),
        .I3(out[2]),
        .I4(time_out_1us_reg_0),
        .I5(time_tlock_max_reg_1),
        .O(\FSM_sequential_rx_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000110CFF00)) 
    \FSM_sequential_rx_state[2]_i_1 
       (.I0(rx_state17_out),
        .I1(out[1]),
        .I2(\FSM_sequential_rx_state_reg[3]_0 ),
        .I3(out[2]),
        .I4(out[0]),
        .I5(out[3]),
        .O(\FSM_sequential_rx_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_rx_state[2]_i_2 
       (.I0(time_tlock_max_reg_1),
        .I1(time_out_1us_reg_0),
        .O(rx_state17_out));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \FSM_sequential_rx_state[3]_i_10 
       (.I0(rxresetdone_s3),
        .I1(\FSM_sequential_rx_state_reg[3]_0 ),
        .I2(out[1]),
        .I3(mmcm_lock_reclocked_0),
        .I4(time_out_1us_reg_0),
        .I5(time_tlock_max_reg_1),
        .O(\FSM_sequential_rx_state[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_rx_state[3]_i_11 
       (.I0(time_out_100us_reg_0),
        .I1(time_out_1us_reg_0),
        .O(\FSM_sequential_rx_state[3]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_rx_state[3]_i_3 
       (.I0(init_wait_done_reg_0),
        .I1(out[1]),
        .I2(out[2]),
        .O(\FSM_sequential_rx_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00040000)) 
    \FSM_sequential_rx_state[3]_i_4 
       (.I0(\wait_time_cnt[0]_i_4__0_n_0 ),
        .I1(\wait_time_cnt[0]_i_5__0_n_0 ),
        .I2(\wait_time_cnt[0]_i_6__0_n_0 ),
        .I3(\wait_time_cnt[0]_i_7__0_n_0 ),
        .I4(out[1]),
        .I5(\FSM_sequential_rx_state[3]_i_9_n_0 ),
        .O(\FSM_sequential_rx_state[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[3]_i_7 
       (.I0(out[3]),
        .I1(out[0]),
        .O(\FSM_sequential_rx_state[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_rx_state[3]_i_9 
       (.I0(gt0_rx_cdrlocked_reg),
        .I1(out[2]),
        .I2(out[1]),
        .O(\FSM_sequential_rx_state[3]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sync_cplllock_n_0),
        .D(sync_data_valid_n_4),
        .Q(out[0]),
        .R(AR));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sync_cplllock_n_0),
        .D(sync_data_valid_n_3),
        .Q(out[1]),
        .R(AR));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sync_cplllock_n_0),
        .D(\FSM_sequential_rx_state[2]_i_1_n_0 ),
        .Q(out[2]),
        .R(AR));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sync_cplllock_n_0),
        .D(sync_data_valid_n_2),
        .Q(out[3]),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    RXUSERRDY_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(\FSM_sequential_rx_state_reg[3]_3 ),
        .Q(gt0_rxuserrdy_i),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    check_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(\FSM_sequential_rx_state_reg[2]_0 ),
        .Q(time_tlock_max_reg_0),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    gtrxreset_i_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(\FSM_sequential_rx_state_reg[3]_2 ),
        .Q(gt0_gtrxreset_t),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__0 
       (.I0(Q[0]),
        .O(\init_wait_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_wait_count[2]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg__0[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(init_wait_count_reg__0[3]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg__0[5]),
        .I1(init_wait_count_reg__0[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(p_0_in__2[5]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[6]_i_1__0 
       (.I0(init_wait_count_reg__0[6]),
        .I1(Q[3]),
        .I2(\init_wait_count[7]_i_4__0_n_0 ),
        .I3(init_wait_count_reg__0[3]),
        .I4(init_wait_count_reg__0[5]),
        .O(p_0_in__2[6]));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \init_wait_count[7]_i_1__0 
       (.I0(\init_wait_count_reg[0]_0 ),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(init_wait_count));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[7]_i_2__0 
       (.I0(init_wait_count_reg__0[7]),
        .I1(init_wait_count_reg__0[5]),
        .I2(init_wait_count_reg__0[3]),
        .I3(\init_wait_count[7]_i_4__0_n_0 ),
        .I4(Q[3]),
        .I5(init_wait_count_reg__0[6]),
        .O(p_0_in__2[7]));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \init_wait_count[7]_i_3__0 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[5]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[7]),
        .O(\init_wait_count_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \init_wait_count[7]_i_4__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\init_wait_count[7]_i_4__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(AR),
        .D(\init_wait_count[0]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__2[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__2[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__2[3]),
        .Q(init_wait_count_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__2[4]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__2[5]),
        .Q(init_wait_count_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__2[6]),
        .Q(init_wait_count_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__2[7]),
        .Q(init_wait_count_reg__0[7]));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .CLR(AR),
        .D(\init_wait_count_reg[4]_0 ),
        .Q(init_wait_done_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[2]),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .I3(mmcm_lock_count_reg__0[2]),
        .O(p_0_in__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[4]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[2]),
        .O(p_0_in__3[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \mmcm_lock_count[5]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[2]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__3[5]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[6]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .I2(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__3[6]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[7]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .I3(mmcm_lock_count_reg__0[6]),
        .O(p_0_in__3[7]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \mmcm_lock_count[7]_i_2__0 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[1]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[3]),
        .O(\mmcm_lock_count[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAAA)) 
    \mmcm_lock_count[8]_i_1__0 
       (.I0(\mmcm_lock_count_reg[9]_1 [0]),
        .I1(mmcm_lock_count_reg__0[7]),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[4]),
        .I5(\mmcm_lock_count[8]_i_2__0_n_0 ),
        .O(p_0_in__3[8]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \mmcm_lock_count[8]_i_2__0 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .I3(mmcm_lock_count_reg__0[2]),
        .O(\mmcm_lock_count[8]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \mmcm_lock_count[9]_i_2__0 
       (.I0(\mmcm_lock_count_reg[9]_1 [0]),
        .I1(\mmcm_lock_count_reg[9]_2 ),
        .I2(\mmcm_lock_count_reg[9]_1 [1]),
        .O(\mmcm_lock_count[9]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[9]_i_3__0 
       (.I0(\mmcm_lock_count_reg[9]_1 [1]),
        .I1(\mmcm_lock_count_reg[9]_2 ),
        .I2(\mmcm_lock_count_reg[9]_1 [0]),
        .O(p_0_in__3[9]));
  LUT5 #(
    .INIT(32'h40000000)) 
    \mmcm_lock_count[9]_i_4__0 
       (.I0(\mmcm_lock_count[8]_i_2__0_n_0 ),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(mmcm_lock_count_reg__0[5]),
        .I3(mmcm_lock_count_reg__0[6]),
        .I4(mmcm_lock_count_reg__0[7]),
        .O(\mmcm_lock_count_reg[9]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__3[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__3[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__3[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__3[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__3[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__3[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__3[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__3[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__3[8]),
        .Q(\mmcm_lock_count_reg[9]_1 [0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__3[9]),
        .Q(\mmcm_lock_count_reg[9]_1 [1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_lock_reclocked_reg_0),
        .Q(mmcm_lock_reclocked_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h707F7070707F7F7F)) 
    reset_time_out_i_2__0
       (.I0(rxresetdone_s3),
        .I1(out[2]),
        .I2(out[1]),
        .I3(mmcm_lock_reclocked_0),
        .I4(out[0]),
        .I5(gt0_rx_cdrlocked_reg),
        .O(reset_time_out_reg_2));
  LUT5 #(
    .INIT(32'h030FCCEC)) 
    reset_time_out_i_4
       (.I0(gt0_rx_cdrlocked_reg),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .I4(out[3]),
        .O(reset_time_out_reg_1));
  FDSE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(\FSM_sequential_rx_state_reg[3]_1 ),
        .Q(time_out_1us_reg_0),
        .S(AR));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(\FSM_sequential_rx_state_reg[0]_0 ),
        .Q(data_sync_reg1),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(\wait_bypass_count_reg[0]_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    rx_fsm_reset_done_int_i_2
       (.I0(time_out_1us_reg_1),
        .I1(time_out_1us_reg_0),
        .O(rx_fsm_reset_done_int_reg_0));
  LUT2 #(
    .INIT(4'hE)) 
    rx_fsm_reset_done_int_i_3
       (.I0(out[2]),
        .I1(out[0]),
        .O(rx_fsm_reset_done_int_reg_2));
  LUT3 #(
    .INIT(8'h02)) 
    rx_fsm_reset_done_int_i_6
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[0]),
        .O(rx_fsm_reset_done_int_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync_reg6),
        .Q(gt0_rxresetdone_out_i),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_s3_reg
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int_s2),
        .Q(rx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxresetdone_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(rxresetdone_s2),
        .Q(rxresetdone_s3),
        .R(1'b0));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_28 sync_RXRESETDONE
       (.data_in(data_in),
        .data_out(rxresetdone_s2),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_29 sync_cplllock
       (.E(sync_cplllock_n_0),
        .\FSM_sequential_rx_state_reg[0] (sync_data_valid_n_6),
        .\FSM_sequential_rx_state_reg[1] (\FSM_sequential_rx_state[3]_i_4_n_0 ),
        .\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95]_0 ),
        .data_out(cplllock_sync),
        .independent_clock_bufg(independent_clock_bufg),
        .init_wait_done_reg(\FSM_sequential_rx_state[3]_i_3_n_0 ),
        .out(out),
        .rxresetdone_s3_reg(\FSM_sequential_rx_state[3]_i_10_n_0 ),
        .time_out_2ms_reg(\FSM_sequential_rx_state_reg[3]_0 ));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_30 sync_data_valid
       (.D({sync_data_valid_n_2,sync_data_valid_n_3,sync_data_valid_n_4}),
        .\FSM_sequential_rx_state_reg[0] (sync_data_valid_n_6),
        .\FSM_sequential_rx_state_reg[0]_0 (\FSM_sequential_rx_state[0]_i_2_n_0 ),
        .\FSM_sequential_rx_state_reg[3] (\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .\FSM_sequential_rx_state_reg[3]_0 (rx_fsm_reset_done_int_i_6_n_0),
        .cplllock_sync(cplllock_sync),
        .data_out(data_out),
        .data_sync_reg6_0(data_sync_reg6_0),
        .independent_clock_bufg(independent_clock_bufg),
        .out(out),
        .reset_time_out_reg(reset_time_out_reg_0),
        .reset_time_out_reg_0(time_out_1us_reg_0),
        .rx_fsm_reset_done_int_reg(rx_fsm_reset_done_int_reg_1),
        .rx_fsm_reset_done_int_reg_0(rx_fsm_reset_done_int_reg_3),
        .rx_state17_out(rx_state17_out),
        .time_out_100us_reg(time_out_100us_reg_0),
        .time_out_100us_reg_0(\FSM_sequential_rx_state[3]_i_11_n_0 ),
        .time_out_1us_reg(time_out_1us_reg_1),
        .time_out_2ms_reg(\FSM_sequential_rx_state_reg[3]_0 ),
        .time_out_wait_bypass_s3(time_out_wait_bypass_s3));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_31 sync_mmcm_lock_reclocked
       (.MMCM_RESET_reg(MMCM_RESET_reg),
        .SR(sync_mmcm_lock_reclocked_n_0),
        .independent_clock_bufg(independent_clock_bufg),
        .\mmcm_lock_count_reg[9] (\mmcm_lock_count_reg[9]_0 ));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_32 sync_run_phase_alignment_int
       (.\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95] ),
        .data_out(run_phase_alignment_int_s2),
        .run_phase_alignment_int_reg(data_sync_reg1));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_33 sync_rx_fsm_reset_done_int
       (.\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95] ),
        .data_out(rx_fsm_reset_done_int_s2),
        .gt0_rxresetdone_out_i(gt0_rxresetdone_out_i));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_34 sync_time_out_wait_bypass
       (.data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg),
        .time_out_wait_bypass_reg(data_sync_reg1_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_100us_i_2
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[1]),
        .O(time_out_100us_reg_4));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    time_out_100us_i_3
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[19]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[18]),
        .I4(time_out_counter_reg[16]),
        .O(time_out_100us_reg_1));
  LUT4 #(
    .INIT(16'h0002)) 
    time_out_100us_i_4
       (.I0(time_tlock_max_reg_2),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[8]),
        .O(time_out_100us_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    time_out_100us_i_5
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[13]),
        .O(time_out_100us_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    time_out_100us_i_6
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[14]),
        .O(time_out_100us_reg_3));
  FDRE #(
    .INIT(1'b0)) 
    time_out_100us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_100us_reg_6),
        .Q(time_out_100us_reg_0),
        .R(time_out_1us_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF7FFFF)) 
    time_out_1us_i_2
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_counter_reg[18]),
        .I3(time_out_counter_reg[1]),
        .I4(time_out_counter_reg[3]),
        .I5(time_out_counter_reg[10]),
        .O(time_out_1us_reg_4));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    time_out_1us_i_3
       (.I0(time_out_counter_reg[0]),
        .I1(time_tlock_max_reg_2),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[12]),
        .I5(time_out_counter_reg[2]),
        .O(time_out_1us_reg_3));
  LUT4 #(
    .INIT(16'h0001)) 
    time_out_1us_i_4
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[8]),
        .O(time_out_1us_reg_5));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_1us_i_5
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[19]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[14]),
        .O(time_out_1us_reg_2));
  FDRE #(
    .INIT(1'b0)) 
    time_out_1us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_1us_reg_6),
        .Q(time_out_1us_reg_1),
        .R(time_out_1us_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_2ms_reg_0),
        .Q(\FSM_sequential_rx_state_reg[3]_0 ),
        .R(time_out_1us_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_1 
       (.I0(time_out_2ms),
        .O(time_out_counter));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \time_out_counter[0]_i_10 
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_counter_reg[6]),
        .I4(time_out_counter_reg[7]),
        .I5(time_out_counter_reg[18]),
        .O(\time_out_counter[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \time_out_counter[0]_i_11 
       (.I0(time_out_counter_reg[0]),
        .I1(time_tlock_max_reg_2),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[8]),
        .I4(time_out_counter_reg[13]),
        .I5(time_out_counter_reg[19]),
        .O(\time_out_counter[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[9]),
        .I2(\time_out_counter[0]_i_8__0_n_0 ),
        .I3(\time_out_counter[0]_i_9__0_n_0 ),
        .I4(\time_out_counter[0]_i_10_n_0 ),
        .I5(\time_out_counter[0]_i_11_n_0 ),
        .O(time_out_2ms));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[0]_i_4__0 
       (.I0(time_out_counter_reg[3]),
        .O(\time_out_counter[0]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[0]_i_5__0 
       (.I0(time_out_counter_reg[2]),
        .O(\time_out_counter[0]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[0]_i_6__0 
       (.I0(time_out_counter_reg[1]),
        .O(\time_out_counter[0]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_7__0 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \time_out_counter[0]_i_8__0 
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[11]),
        .O(\time_out_counter[0]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \time_out_counter[0]_i_9__0 
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[2]),
        .O(\time_out_counter[0]_i_9__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[12]_i_2__0 
       (.I0(time_out_counter_reg[15]),
        .O(\time_out_counter[12]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[12]_i_3__0 
       (.I0(time_out_counter_reg[14]),
        .O(\time_out_counter[12]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[12]_i_4__0 
       (.I0(time_out_counter_reg[13]),
        .O(\time_out_counter[12]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[12]_i_5__0 
       (.I0(time_out_counter_reg[12]),
        .O(\time_out_counter[12]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[16]_i_2__0 
       (.I0(time_out_counter_reg[19]),
        .O(\time_out_counter[16]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[16]_i_3__0 
       (.I0(time_out_counter_reg[18]),
        .O(\time_out_counter[16]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[16]_i_4__0 
       (.I0(time_out_counter_reg[17]),
        .O(\time_out_counter[16]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[16]_i_5 
       (.I0(time_out_counter_reg[16]),
        .O(\time_out_counter[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[4]_i_2__0 
       (.I0(time_out_counter_reg[7]),
        .O(\time_out_counter[4]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[4]_i_3__0 
       (.I0(time_out_counter_reg[6]),
        .O(\time_out_counter[4]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[4]_i_4__0 
       (.I0(time_tlock_max_reg_2),
        .O(\time_out_counter[4]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[4]_i_5__0 
       (.I0(time_out_counter_reg[4]),
        .O(\time_out_counter[4]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[8]_i_2__0 
       (.I0(time_out_counter_reg[11]),
        .O(\time_out_counter[8]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[8]_i_3__0 
       (.I0(time_out_counter_reg[10]),
        .O(\time_out_counter[8]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[8]_i_4__0 
       (.I0(time_out_counter_reg[9]),
        .O(\time_out_counter[8]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[8]_i_5__0 
       (.I0(time_out_counter_reg[8]),
        .O(\time_out_counter[8]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(time_out_1us_reg_0));
  CARRY4 \time_out_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__0_n_0 ,\time_out_counter_reg[0]_i_2__0_n_1 ,\time_out_counter_reg[0]_i_2__0_n_2 ,\time_out_counter_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__0_n_4 ,\time_out_counter_reg[0]_i_2__0_n_5 ,\time_out_counter_reg[0]_i_2__0_n_6 ,\time_out_counter_reg[0]_i_2__0_n_7 }),
        .S({\time_out_counter[0]_i_4__0_n_0 ,\time_out_counter[0]_i_5__0_n_0 ,\time_out_counter[0]_i_6__0_n_0 ,\time_out_counter[0]_i_7__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(time_out_1us_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(time_out_1us_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(time_out_1us_reg_0));
  CARRY4 \time_out_counter_reg[12]_i_1__0 
       (.CI(\time_out_counter_reg[8]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__0_n_0 ,\time_out_counter_reg[12]_i_1__0_n_1 ,\time_out_counter_reg[12]_i_1__0_n_2 ,\time_out_counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__0_n_4 ,\time_out_counter_reg[12]_i_1__0_n_5 ,\time_out_counter_reg[12]_i_1__0_n_6 ,\time_out_counter_reg[12]_i_1__0_n_7 }),
        .S({\time_out_counter[12]_i_2__0_n_0 ,\time_out_counter[12]_i_3__0_n_0 ,\time_out_counter[12]_i_4__0_n_0 ,\time_out_counter[12]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(time_out_1us_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(time_out_1us_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(time_out_1us_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(time_out_1us_reg_0));
  CARRY4 \time_out_counter_reg[16]_i_1__0 
       (.CI(\time_out_counter_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED [3],\time_out_counter_reg[16]_i_1__0_n_1 ,\time_out_counter_reg[16]_i_1__0_n_2 ,\time_out_counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[16]_i_1__0_n_4 ,\time_out_counter_reg[16]_i_1__0_n_5 ,\time_out_counter_reg[16]_i_1__0_n_6 ,\time_out_counter_reg[16]_i_1__0_n_7 }),
        .S({\time_out_counter[16]_i_2__0_n_0 ,\time_out_counter[16]_i_3__0_n_0 ,\time_out_counter[16]_i_4__0_n_0 ,\time_out_counter[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(time_out_1us_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[18]),
        .R(time_out_1us_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[19] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[19]),
        .R(time_out_1us_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(time_out_1us_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(time_out_1us_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(time_out_1us_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(time_out_1us_reg_0));
  CARRY4 \time_out_counter_reg[4]_i_1__0 
       (.CI(\time_out_counter_reg[0]_i_2__0_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__0_n_0 ,\time_out_counter_reg[4]_i_1__0_n_1 ,\time_out_counter_reg[4]_i_1__0_n_2 ,\time_out_counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__0_n_4 ,\time_out_counter_reg[4]_i_1__0_n_5 ,\time_out_counter_reg[4]_i_1__0_n_6 ,\time_out_counter_reg[4]_i_1__0_n_7 }),
        .S({\time_out_counter[4]_i_2__0_n_0 ,\time_out_counter[4]_i_3__0_n_0 ,\time_out_counter[4]_i_4__0_n_0 ,\time_out_counter[4]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_6 ),
        .Q(time_tlock_max_reg_2),
        .R(time_out_1us_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(time_out_1us_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(time_out_1us_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(time_out_1us_reg_0));
  CARRY4 \time_out_counter_reg[8]_i_1__0 
       (.CI(\time_out_counter_reg[4]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__0_n_0 ,\time_out_counter_reg[8]_i_1__0_n_1 ,\time_out_counter_reg[8]_i_1__0_n_2 ,\time_out_counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__0_n_4 ,\time_out_counter_reg[8]_i_1__0_n_5 ,\time_out_counter_reg[8]_i_1__0_n_6 ,\time_out_counter_reg[8]_i_1__0_n_7 }),
        .S({\time_out_counter[8]_i_2__0_n_0 ,\time_out_counter[8]_i_3__0_n_0 ,\time_out_counter[8]_i_4__0_n_0 ,\time_out_counter[8]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(time_out_1us_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(time_out_wait_bypass_reg_0),
        .Q(data_sync_reg1_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    time_tlock_max_i_2
       (.I0(time_out_100us_reg_1),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[8]),
        .I5(time_out_counter_reg[13]),
        .O(time_tlock_max_reg_3));
  LUT5 #(
    .INIT(32'hFFFFE0FF)) 
    time_tlock_max_i_3
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_100us_reg_3),
        .I4(time_out_100us_reg_1),
        .O(time_tlock_max_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    time_tlock_max_i_4
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[4]),
        .I4(time_out_counter_reg[0]),
        .O(time_tlock_max_reg_5));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(check_tlock_max_reg_0),
        .Q(time_tlock_max_reg_1),
        .R(time_out_1us_reg_0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \wait_bypass_count[0]_i_10__0 
       (.I0(wait_bypass_count_reg[11]),
        .I1(wait_bypass_count_reg[10]),
        .I2(wait_bypass_count_reg[5]),
        .I3(wait_bypass_count_reg[0]),
        .I4(wait_bypass_count_reg[7]),
        .I5(wait_bypass_count_reg[2]),
        .O(\wait_bypass_count[0]_i_10__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1__0 
       (.I0(\wait_bypass_count_reg[0]_0 ),
        .O(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2__0 
       (.I0(\wait_bypass_count_reg[0]_1 ),
        .I1(rx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    \wait_bypass_count[0]_i_4__0 
       (.I0(\wait_bypass_count[0]_i_9__0_n_0 ),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[4]),
        .I3(wait_bypass_count_reg[9]),
        .I4(\wait_bypass_count[0]_i_10__0_n_0 ),
        .O(\wait_bypass_count_reg[0]_1 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[0]_i_5__0 
       (.I0(wait_bypass_count_reg[3]),
        .O(\wait_bypass_count[0]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[0]_i_6__0 
       (.I0(wait_bypass_count_reg[2]),
        .O(\wait_bypass_count[0]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[0]_i_7__0 
       (.I0(wait_bypass_count_reg[1]),
        .O(\wait_bypass_count[0]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_8__0 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \wait_bypass_count[0]_i_9__0 
       (.I0(wait_bypass_count_reg[12]),
        .I1(wait_bypass_count_reg[6]),
        .I2(wait_bypass_count_reg[8]),
        .I3(wait_bypass_count_reg[3]),
        .O(\wait_bypass_count[0]_i_9__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[12]_i_2__0 
       (.I0(wait_bypass_count_reg[12]),
        .O(\wait_bypass_count[12]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[4]_i_2__0 
       (.I0(wait_bypass_count_reg[7]),
        .O(\wait_bypass_count[4]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[4]_i_3__0 
       (.I0(wait_bypass_count_reg[6]),
        .O(\wait_bypass_count[4]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[4]_i_4__0 
       (.I0(wait_bypass_count_reg[5]),
        .O(\wait_bypass_count[4]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[4]_i_5__0 
       (.I0(wait_bypass_count_reg[4]),
        .O(\wait_bypass_count[4]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[8]_i_2__0 
       (.I0(wait_bypass_count_reg[11]),
        .O(\wait_bypass_count[8]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[8]_i_3__0 
       (.I0(wait_bypass_count_reg[10]),
        .O(\wait_bypass_count[8]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[8]_i_4__0 
       (.I0(wait_bypass_count_reg[9]),
        .O(\wait_bypass_count[8]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[8]_i_5__0 
       (.I0(wait_bypass_count_reg[8]),
        .O(\wait_bypass_count[8]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3__0_n_0 ,\wait_bypass_count_reg[0]_i_3__0_n_1 ,\wait_bypass_count_reg[0]_i_3__0_n_2 ,\wait_bypass_count_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3__0_n_4 ,\wait_bypass_count_reg[0]_i_3__0_n_5 ,\wait_bypass_count_reg[0]_i_3__0_n_6 ,\wait_bypass_count_reg[0]_i_3__0_n_7 }),
        .S({\wait_bypass_count[0]_i_5__0_n_0 ,\wait_bypass_count[0]_i_6__0_n_0 ,\wait_bypass_count[0]_i_7__0_n_0 ,\wait_bypass_count[0]_i_8__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[12]_i_1__0 
       (.CI(\wait_bypass_count_reg[8]_i_1__0_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED [3:1],\wait_bypass_count_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,\wait_bypass_count[12]_i_2__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[4]_i_1__0 
       (.CI(\wait_bypass_count_reg[0]_i_3__0_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1__0_n_0 ,\wait_bypass_count_reg[4]_i_1__0_n_1 ,\wait_bypass_count_reg[4]_i_1__0_n_2 ,\wait_bypass_count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1__0_n_4 ,\wait_bypass_count_reg[4]_i_1__0_n_5 ,\wait_bypass_count_reg[4]_i_1__0_n_6 ,\wait_bypass_count_reg[4]_i_1__0_n_7 }),
        .S({\wait_bypass_count[4]_i_2__0_n_0 ,\wait_bypass_count[4]_i_3__0_n_0 ,\wait_bypass_count[4]_i_4__0_n_0 ,\wait_bypass_count[4]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[8]_i_1__0 
       (.CI(\wait_bypass_count_reg[4]_i_1__0_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1__0_n_0 ,\wait_bypass_count_reg[8]_i_1__0_n_1 ,\wait_bypass_count_reg[8]_i_1__0_n_2 ,\wait_bypass_count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1__0_n_4 ,\wait_bypass_count_reg[8]_i_1__0_n_5 ,\wait_bypass_count_reg[8]_i_1__0_n_6 ,\wait_bypass_count_reg[8]_i_1__0_n_7 }),
        .S({\wait_bypass_count[8]_i_2__0_n_0 ,\wait_bypass_count[8]_i_3__0_n_0 ,\wait_bypass_count[8]_i_4__0_n_0 ,\wait_bypass_count[8]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_10 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_11 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \wait_time_cnt[0]_i_1__0 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[3]),
        .O(wait_time_cnt0));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \wait_time_cnt[0]_i_2__0 
       (.I0(\wait_time_cnt[0]_i_4__0_n_0 ),
        .I1(\wait_time_cnt[0]_i_5__0_n_0 ),
        .I2(\wait_time_cnt[0]_i_6__0_n_0 ),
        .I3(\wait_time_cnt[0]_i_7__0_n_0 ),
        .O(\wait_time_cnt[0]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_4__0 
       (.I0(wait_time_cnt_reg[12]),
        .I1(wait_time_cnt_reg[13]),
        .I2(wait_time_cnt_reg[15]),
        .I3(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[0]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \wait_time_cnt[0]_i_5__0 
       (.I0(wait_time_cnt_reg[8]),
        .I1(wait_time_cnt_reg[11]),
        .I2(wait_time_cnt_reg[9]),
        .I3(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[0]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_6__0 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[7]),
        .I2(wait_time_cnt_reg[4]),
        .I3(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[0]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_7__0 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_9 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2__0 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3__0 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4__0 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5__0 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2__0 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3__0 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4__0 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5__0 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2__0 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3__0 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4__0 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5__0 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5__0_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(wait_time_cnt0));
  CARRY4 \wait_time_cnt_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3__0_n_0 ,\wait_time_cnt_reg[0]_i_3__0_n_1 ,\wait_time_cnt_reg[0]_i_3__0_n_2 ,\wait_time_cnt_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3__0_n_4 ,\wait_time_cnt_reg[0]_i_3__0_n_5 ,\wait_time_cnt_reg[0]_i_3__0_n_6 ,\wait_time_cnt_reg[0]_i_3__0_n_7 }),
        .S({\wait_time_cnt[0]_i_8_n_0 ,\wait_time_cnt[0]_i_9_n_0 ,\wait_time_cnt[0]_i_10_n_0 ,\wait_time_cnt[0]_i_11_n_0 }));
  FDSE \wait_time_cnt_reg[10] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .S(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[11] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[12] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(wait_time_cnt0));
  CARRY4 \wait_time_cnt_reg[12]_i_1__0 
       (.CI(\wait_time_cnt_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1__0_n_1 ,\wait_time_cnt_reg[12]_i_1__0_n_2 ,\wait_time_cnt_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1__0_n_4 ,\wait_time_cnt_reg[12]_i_1__0_n_5 ,\wait_time_cnt_reg[12]_i_1__0_n_6 ,\wait_time_cnt_reg[12]_i_1__0_n_7 }),
        .S({\wait_time_cnt[12]_i_2__0_n_0 ,\wait_time_cnt[12]_i_3__0_n_0 ,\wait_time_cnt[12]_i_4__0_n_0 ,\wait_time_cnt[12]_i_5__0_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[14] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[15] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .R(wait_time_cnt0));
  FDSE \wait_time_cnt_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .S(wait_time_cnt0));
  CARRY4 \wait_time_cnt_reg[4]_i_1__0 
       (.CI(\wait_time_cnt_reg[0]_i_3__0_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1__0_n_0 ,\wait_time_cnt_reg[4]_i_1__0_n_1 ,\wait_time_cnt_reg[4]_i_1__0_n_2 ,\wait_time_cnt_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1__0_n_4 ,\wait_time_cnt_reg[4]_i_1__0_n_5 ,\wait_time_cnt_reg[4]_i_1__0_n_6 ,\wait_time_cnt_reg[4]_i_1__0_n_7 }),
        .S({\wait_time_cnt[4]_i_2__0_n_0 ,\wait_time_cnt[4]_i_3__0_n_0 ,\wait_time_cnt[4]_i_4__0_n_0 ,\wait_time_cnt[4]_i_5__0_n_0 }));
  FDRE \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .R(wait_time_cnt0));
  FDSE \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(wait_time_cnt0));
  FDSE \wait_time_cnt_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(wait_time_cnt0));
  FDSE \wait_time_cnt_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .S(wait_time_cnt0));
  CARRY4 \wait_time_cnt_reg[8]_i_1__0 
       (.CI(\wait_time_cnt_reg[4]_i_1__0_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1__0_n_0 ,\wait_time_cnt_reg[8]_i_1__0_n_1 ,\wait_time_cnt_reg[8]_i_1__0_n_2 ,\wait_time_cnt_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1__0_n_4 ,\wait_time_cnt_reg[8]_i_1__0_n_5 ,\wait_time_cnt_reg[8]_i_1__0_n_6 ,\wait_time_cnt_reg[8]_i_1__0_n_7 }),
        .S({\wait_time_cnt[8]_i_2__0_n_0 ,\wait_time_cnt[8]_i_3__0_n_0 ,\wait_time_cnt[8]_i_4__0_n_0 ,\wait_time_cnt[8]_i_5__0_n_0 }));
  FDSE \wait_time_cnt_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .S(wait_time_cnt0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_TX_STARTUP_FSM" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_TX_STARTUP_FSM
   (run_phase_alignment_int_s3,
    tx_fsm_reset_done_int_s3,
    \FSM_sequential_tx_state_reg[0]_0 ,
    pll_reset_asserted_reg_0,
    \time_out_counter_reg[18]_0 ,
    \FSM_sequential_tx_state_reg[2]_0 ,
    mmcm_lock_reclocked_reg_0,
    time_tlock_max_reg_0,
    time_out_500us_reg_0,
    gt0_gttxreset_t,
    mmcm_reset,
    reset_sync1,
    gt0_txresetdone_out_i,
    gt0_txuserrdy_i,
    data_in,
    data_sync_reg1,
    out,
    Q,
    \mmcm_lock_count_reg[9]_0 ,
    \mmcm_lock_count_reg[9]_1 ,
    \mmcm_lock_count_reg[9]_2 ,
    \init_wait_count_reg[0]_0 ,
    time_out_2ms_2,
    time_tlock_max_reg_1,
    time_out_500us_reg_1,
    time_tlock_max_reg_2,
    time_tlock_max_reg_3,
    time_out_500us_reg_2,
    time_tlock_max_reg_4,
    CPLL_RESET0,
    reset_time_out_1,
    \wait_bypass_count_reg[0]_0 ,
    independent_clock_bufg,
    MMCM_RESET_reg_0,
    \init_wait_count_reg[7]_0 ,
    AR,
    \FSM_sequential_tx_state_reg[2]_1 ,
    \FSM_sequential_tx_state_reg[3]_0 ,
    time_out_2ms_reg_0,
    mmcm_lock_reclocked_reg_1,
    time_tlock_max_reg_5,
    time_out_500us_reg_3,
    \FSM_sequential_tx_state_reg[2]_2 ,
    \FSM_sequential_tx_state_reg[2]_3 ,
    \FSM_sequential_tx_state_reg[2]_4 ,
    \FSM_sequential_tx_state_reg[0]_1 ,
    \FSM_sequential_tx_state_reg[3]_1 ,
    \FSM_sequential_tx_state_reg[3]_2 ,
    time_out_wait_bypass_reg_0,
    \cpllpd_wait_reg[95] ,
    MMCM_RESET_reg_1,
    \cpllpd_wait_reg[95]_0 ,
    gt0_cpllrefclklost_i);
  output run_phase_alignment_int_s3;
  output tx_fsm_reset_done_int_s3;
  output \FSM_sequential_tx_state_reg[0]_0 ;
  output pll_reset_asserted_reg_0;
  output \time_out_counter_reg[18]_0 ;
  output \FSM_sequential_tx_state_reg[2]_0 ;
  output mmcm_lock_reclocked_reg_0;
  output time_tlock_max_reg_0;
  output time_out_500us_reg_0;
  output gt0_gttxreset_t;
  output mmcm_reset;
  output reset_sync1;
  output gt0_txresetdone_out_i;
  output gt0_txuserrdy_i;
  output data_in;
  output data_sync_reg1;
  output [3:0]out;
  output [3:0]Q;
  output \mmcm_lock_count_reg[9]_0 ;
  output [1:0]\mmcm_lock_count_reg[9]_1 ;
  output \mmcm_lock_count_reg[9]_2 ;
  output \init_wait_count_reg[0]_0 ;
  output time_out_2ms_2;
  output time_tlock_max_reg_1;
  output time_out_500us_reg_1;
  output time_tlock_max_reg_2;
  output time_tlock_max_reg_3;
  output time_out_500us_reg_2;
  output time_tlock_max_reg_4;
  output CPLL_RESET0;
  output reset_time_out_1;
  output \wait_bypass_count_reg[0]_0 ;
  input independent_clock_bufg;
  input MMCM_RESET_reg_0;
  input \init_wait_count_reg[7]_0 ;
  input [0:0]AR;
  input \FSM_sequential_tx_state_reg[2]_1 ;
  input \FSM_sequential_tx_state_reg[3]_0 ;
  input time_out_2ms_reg_0;
  input mmcm_lock_reclocked_reg_1;
  input time_tlock_max_reg_5;
  input time_out_500us_reg_3;
  input \FSM_sequential_tx_state_reg[2]_2 ;
  input \FSM_sequential_tx_state_reg[2]_3 ;
  input \FSM_sequential_tx_state_reg[2]_4 ;
  input \FSM_sequential_tx_state_reg[0]_1 ;
  input \FSM_sequential_tx_state_reg[3]_1 ;
  input \FSM_sequential_tx_state_reg[3]_2 ;
  input time_out_wait_bypass_reg_0;
  input \cpllpd_wait_reg[95] ;
  input MMCM_RESET_reg_1;
  input \cpllpd_wait_reg[95]_0 ;
  input gt0_cpllrefclklost_i;

  wire [0:0]AR;
  wire CPLL_RESET0;
  wire \FSM_sequential_tx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_11_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_12_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_13_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_tx_state_reg[0]_0 ;
  wire \FSM_sequential_tx_state_reg[0]_1 ;
  wire \FSM_sequential_tx_state_reg[2]_0 ;
  wire \FSM_sequential_tx_state_reg[2]_1 ;
  wire \FSM_sequential_tx_state_reg[2]_2 ;
  wire \FSM_sequential_tx_state_reg[2]_3 ;
  wire \FSM_sequential_tx_state_reg[2]_4 ;
  wire \FSM_sequential_tx_state_reg[3]_0 ;
  wire \FSM_sequential_tx_state_reg[3]_1 ;
  wire \FSM_sequential_tx_state_reg[3]_2 ;
  wire MMCM_RESET_reg_0;
  wire MMCM_RESET_reg_1;
  wire [3:0]Q;
  wire clear;
  wire \cpllpd_wait_reg[95] ;
  wire \cpllpd_wait_reg[95]_0 ;
  wire data_in;
  wire data_sync_reg1;
  wire gt0_cpllrefclklost_i;
  wire gt0_gttxreset_t;
  wire gt0_txresetdone_out_i;
  wire gt0_txuserrdy_i;
  wire independent_clock_bufg;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1_n_0 ;
  wire \init_wait_count[7]_i_4_n_0 ;
  wire \init_wait_count_reg[0]_0 ;
  wire \init_wait_count_reg[7]_0 ;
  wire [6:0]init_wait_count_reg__0;
  wire \mmcm_lock_count[7]_i_2_n_0 ;
  wire \mmcm_lock_count[8]_i_2_n_0 ;
  wire \mmcm_lock_count[9]_i_2_n_0 ;
  wire \mmcm_lock_count_reg[9]_0 ;
  wire [1:0]\mmcm_lock_count_reg[9]_1 ;
  wire \mmcm_lock_count_reg[9]_2 ;
  wire [7:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked_reg_0;
  wire mmcm_lock_reclocked_reg_1;
  wire mmcm_reset;
  (* RTL_KEEP = "yes" *) wire [3:0]out;
  wire [7:1]p_0_in__0;
  wire [9:0]p_0_in__1;
  wire pll_reset_asserted_reg_0;
  wire refclk_stable;
  wire refclk_stable_count;
  wire \refclk_stable_count[0]_i_10_n_0 ;
  wire \refclk_stable_count[0]_i_3_n_0 ;
  wire \refclk_stable_count[0]_i_4_n_0 ;
  wire \refclk_stable_count[0]_i_5_n_0 ;
  wire \refclk_stable_count[0]_i_6_n_0 ;
  wire \refclk_stable_count[0]_i_7_n_0 ;
  wire \refclk_stable_count[0]_i_8_n_0 ;
  wire \refclk_stable_count[0]_i_9_n_0 ;
  wire \refclk_stable_count[12]_i_2_n_0 ;
  wire \refclk_stable_count[12]_i_3_n_0 ;
  wire \refclk_stable_count[12]_i_4_n_0 ;
  wire \refclk_stable_count[12]_i_5_n_0 ;
  wire \refclk_stable_count[16]_i_2_n_0 ;
  wire \refclk_stable_count[16]_i_3_n_0 ;
  wire \refclk_stable_count[16]_i_4_n_0 ;
  wire \refclk_stable_count[16]_i_5_n_0 ;
  wire \refclk_stable_count[4]_i_2_n_0 ;
  wire \refclk_stable_count[4]_i_3_n_0 ;
  wire \refclk_stable_count[4]_i_4_n_0 ;
  wire \refclk_stable_count[4]_i_5_n_0 ;
  wire \refclk_stable_count[8]_i_2_n_0 ;
  wire \refclk_stable_count[8]_i_3_n_0 ;
  wire \refclk_stable_count[8]_i_4_n_0 ;
  wire \refclk_stable_count[8]_i_5_n_0 ;
  wire [19:0]refclk_stable_count_reg;
  wire \refclk_stable_count_reg[0]_i_2_n_0 ;
  wire \refclk_stable_count_reg[0]_i_2_n_1 ;
  wire \refclk_stable_count_reg[0]_i_2_n_2 ;
  wire \refclk_stable_count_reg[0]_i_2_n_3 ;
  wire \refclk_stable_count_reg[0]_i_2_n_4 ;
  wire \refclk_stable_count_reg[0]_i_2_n_5 ;
  wire \refclk_stable_count_reg[0]_i_2_n_6 ;
  wire \refclk_stable_count_reg[0]_i_2_n_7 ;
  wire \refclk_stable_count_reg[12]_i_1_n_0 ;
  wire \refclk_stable_count_reg[12]_i_1_n_1 ;
  wire \refclk_stable_count_reg[12]_i_1_n_2 ;
  wire \refclk_stable_count_reg[12]_i_1_n_3 ;
  wire \refclk_stable_count_reg[12]_i_1_n_4 ;
  wire \refclk_stable_count_reg[12]_i_1_n_5 ;
  wire \refclk_stable_count_reg[12]_i_1_n_6 ;
  wire \refclk_stable_count_reg[12]_i_1_n_7 ;
  wire \refclk_stable_count_reg[16]_i_1_n_1 ;
  wire \refclk_stable_count_reg[16]_i_1_n_2 ;
  wire \refclk_stable_count_reg[16]_i_1_n_3 ;
  wire \refclk_stable_count_reg[16]_i_1_n_4 ;
  wire \refclk_stable_count_reg[16]_i_1_n_5 ;
  wire \refclk_stable_count_reg[16]_i_1_n_6 ;
  wire \refclk_stable_count_reg[16]_i_1_n_7 ;
  wire \refclk_stable_count_reg[4]_i_1_n_0 ;
  wire \refclk_stable_count_reg[4]_i_1_n_1 ;
  wire \refclk_stable_count_reg[4]_i_1_n_2 ;
  wire \refclk_stable_count_reg[4]_i_1_n_3 ;
  wire \refclk_stable_count_reg[4]_i_1_n_4 ;
  wire \refclk_stable_count_reg[4]_i_1_n_5 ;
  wire \refclk_stable_count_reg[4]_i_1_n_6 ;
  wire \refclk_stable_count_reg[4]_i_1_n_7 ;
  wire \refclk_stable_count_reg[8]_i_1_n_0 ;
  wire \refclk_stable_count_reg[8]_i_1_n_1 ;
  wire \refclk_stable_count_reg[8]_i_1_n_2 ;
  wire \refclk_stable_count_reg[8]_i_1_n_3 ;
  wire \refclk_stable_count_reg[8]_i_1_n_4 ;
  wire \refclk_stable_count_reg[8]_i_1_n_5 ;
  wire \refclk_stable_count_reg[8]_i_1_n_6 ;
  wire \refclk_stable_count_reg[8]_i_1_n_7 ;
  wire refclk_stable_reg_n_0;
  wire reset_sync1;
  wire reset_time_out_1;
  wire run_phase_alignment_int_s2;
  wire run_phase_alignment_int_s3;
  wire sel;
  wire sync_cplllock_n_1;
  wire sync_mmcm_lock_reclocked_n_0;
  wire time_out_2ms_2;
  wire time_out_2ms_reg_0;
  wire time_out_500us_i_4_n_0;
  wire time_out_500us_reg_0;
  wire time_out_500us_reg_1;
  wire time_out_500us_reg_2;
  wire time_out_500us_reg_3;
  wire time_out_counter;
  wire \time_out_counter[0]_i_4_n_0 ;
  wire \time_out_counter[0]_i_5_n_0 ;
  wire \time_out_counter[0]_i_6_n_0 ;
  wire \time_out_counter[0]_i_7_n_0 ;
  wire \time_out_counter[0]_i_8_n_0 ;
  wire \time_out_counter[0]_i_9_n_0 ;
  wire \time_out_counter[12]_i_2_n_0 ;
  wire \time_out_counter[12]_i_3_n_0 ;
  wire \time_out_counter[12]_i_4_n_0 ;
  wire \time_out_counter[12]_i_5_n_0 ;
  wire \time_out_counter[16]_i_2_n_0 ;
  wire \time_out_counter[16]_i_3_n_0 ;
  wire \time_out_counter[16]_i_4_n_0 ;
  wire \time_out_counter[4]_i_2_n_0 ;
  wire \time_out_counter[4]_i_3_n_0 ;
  wire \time_out_counter[4]_i_4_n_0 ;
  wire \time_out_counter[4]_i_5_n_0 ;
  wire \time_out_counter[8]_i_2_n_0 ;
  wire \time_out_counter[8]_i_3_n_0 ;
  wire \time_out_counter[8]_i_4_n_0 ;
  wire \time_out_counter[8]_i_5_n_0 ;
  wire [18:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2_n_0 ;
  wire \time_out_counter_reg[0]_i_2_n_1 ;
  wire \time_out_counter_reg[0]_i_2_n_2 ;
  wire \time_out_counter_reg[0]_i_2_n_3 ;
  wire \time_out_counter_reg[0]_i_2_n_4 ;
  wire \time_out_counter_reg[0]_i_2_n_5 ;
  wire \time_out_counter_reg[0]_i_2_n_6 ;
  wire \time_out_counter_reg[0]_i_2_n_7 ;
  wire \time_out_counter_reg[12]_i_1_n_0 ;
  wire \time_out_counter_reg[12]_i_1_n_1 ;
  wire \time_out_counter_reg[12]_i_1_n_2 ;
  wire \time_out_counter_reg[12]_i_1_n_3 ;
  wire \time_out_counter_reg[12]_i_1_n_4 ;
  wire \time_out_counter_reg[12]_i_1_n_5 ;
  wire \time_out_counter_reg[12]_i_1_n_6 ;
  wire \time_out_counter_reg[12]_i_1_n_7 ;
  wire \time_out_counter_reg[16]_i_1_n_2 ;
  wire \time_out_counter_reg[16]_i_1_n_3 ;
  wire \time_out_counter_reg[16]_i_1_n_5 ;
  wire \time_out_counter_reg[16]_i_1_n_6 ;
  wire \time_out_counter_reg[16]_i_1_n_7 ;
  wire \time_out_counter_reg[18]_0 ;
  wire \time_out_counter_reg[4]_i_1_n_0 ;
  wire \time_out_counter_reg[4]_i_1_n_1 ;
  wire \time_out_counter_reg[4]_i_1_n_2 ;
  wire \time_out_counter_reg[4]_i_1_n_3 ;
  wire \time_out_counter_reg[4]_i_1_n_4 ;
  wire \time_out_counter_reg[4]_i_1_n_5 ;
  wire \time_out_counter_reg[4]_i_1_n_6 ;
  wire \time_out_counter_reg[4]_i_1_n_7 ;
  wire \time_out_counter_reg[8]_i_1_n_0 ;
  wire \time_out_counter_reg[8]_i_1_n_1 ;
  wire \time_out_counter_reg[8]_i_1_n_2 ;
  wire \time_out_counter_reg[8]_i_1_n_3 ;
  wire \time_out_counter_reg[8]_i_1_n_4 ;
  wire \time_out_counter_reg[8]_i_1_n_5 ;
  wire \time_out_counter_reg[8]_i_1_n_6 ;
  wire \time_out_counter_reg[8]_i_1_n_7 ;
  wire time_out_wait_bypass_reg_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max_reg_0;
  wire time_tlock_max_reg_1;
  wire time_tlock_max_reg_2;
  wire time_tlock_max_reg_3;
  wire time_tlock_max_reg_4;
  wire time_tlock_max_reg_5;
  wire tx_fsm_reset_done_int_s2;
  wire tx_fsm_reset_done_int_s3;
  wire tx_state1;
  wire tx_state14_out;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire \wait_bypass_count[0]_i_10_n_0 ;
  wire \wait_bypass_count[0]_i_11_n_0 ;
  wire \wait_bypass_count[0]_i_12_n_0 ;
  wire \wait_bypass_count[0]_i_2_n_0 ;
  wire \wait_bypass_count[0]_i_5_n_0 ;
  wire \wait_bypass_count[0]_i_6_n_0 ;
  wire \wait_bypass_count[0]_i_7_n_0 ;
  wire \wait_bypass_count[0]_i_8_n_0 ;
  wire \wait_bypass_count[0]_i_9_n_0 ;
  wire \wait_bypass_count[12]_i_2_n_0 ;
  wire \wait_bypass_count[12]_i_3_n_0 ;
  wire \wait_bypass_count[12]_i_4_n_0 ;
  wire \wait_bypass_count[12]_i_5_n_0 ;
  wire \wait_bypass_count[16]_i_2_n_0 ;
  wire \wait_bypass_count[4]_i_2_n_0 ;
  wire \wait_bypass_count[4]_i_3_n_0 ;
  wire \wait_bypass_count[4]_i_4_n_0 ;
  wire \wait_bypass_count[4]_i_5_n_0 ;
  wire \wait_bypass_count[8]_i_2_n_0 ;
  wire \wait_bypass_count[8]_i_3_n_0 ;
  wire \wait_bypass_count[8]_i_4_n_0 ;
  wire \wait_bypass_count[8]_i_5_n_0 ;
  wire [16:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_0 ;
  wire \wait_bypass_count_reg[0]_i_3_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1_n_0 ;
  wire \wait_bypass_count_reg[12]_i_1_n_1 ;
  wire \wait_bypass_count_reg[12]_i_1_n_2 ;
  wire \wait_bypass_count_reg[12]_i_1_n_3 ;
  wire \wait_bypass_count_reg[12]_i_1_n_4 ;
  wire \wait_bypass_count_reg[12]_i_1_n_5 ;
  wire \wait_bypass_count_reg[12]_i_1_n_6 ;
  wire \wait_bypass_count_reg[12]_i_1_n_7 ;
  wire \wait_bypass_count_reg[16]_i_1_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1_n_7 ;
  wire wait_time_cnt0;
  wire \wait_time_cnt[0]_i_4_n_0 ;
  wire \wait_time_cnt[0]_i_5_n_0 ;
  wire \wait_time_cnt[0]_i_6_n_0 ;
  wire \wait_time_cnt[0]_i_7_n_0 ;
  wire \wait_time_cnt[12]_i_2_n_0 ;
  wire \wait_time_cnt[12]_i_3_n_0 ;
  wire \wait_time_cnt[12]_i_4_n_0 ;
  wire \wait_time_cnt[12]_i_5_n_0 ;
  wire \wait_time_cnt[4]_i_2_n_0 ;
  wire \wait_time_cnt[4]_i_3_n_0 ;
  wire \wait_time_cnt[4]_i_4_n_0 ;
  wire \wait_time_cnt[4]_i_5_n_0 ;
  wire \wait_time_cnt[8]_i_2_n_0 ;
  wire \wait_time_cnt[8]_i_3_n_0 ;
  wire \wait_time_cnt[8]_i_4_n_0 ;
  wire \wait_time_cnt[8]_i_5_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1_n_7 ;
  wire wait_time_done;
  wire [3:3]\NLW_refclk_stable_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    CPLL_RESET_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(\FSM_sequential_tx_state_reg[2]_4 ),
        .Q(reset_sync1),
        .R(AR));
  LUT6 #(
    .INIT(64'h5747000057575757)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(\FSM_sequential_tx_state_reg[2]_0 ),
        .I4(\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .I5(out[0]),
        .O(\FSM_sequential_tx_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C0C0C8CBC8C8C)) 
    \FSM_sequential_tx_state[0]_i_2 
       (.I0(time_out_500us_reg_0),
        .I1(out[1]),
        .I2(out[2]),
        .I3(mmcm_lock_reclocked_reg_0),
        .I4(time_tlock_max_reg_0),
        .I5(\time_out_counter_reg[18]_0 ),
        .O(\FSM_sequential_tx_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h10141414)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(out[3]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(tx_state14_out),
        .I4(out[2]),
        .O(\FSM_sequential_tx_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_tx_state[1]_i_2 
       (.I0(\time_out_counter_reg[18]_0 ),
        .I1(time_tlock_max_reg_0),
        .I2(mmcm_lock_reclocked_reg_0),
        .O(tx_state14_out));
  LUT6 #(
    .INIT(64'h2020232030303030)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I1(out[3]),
        .I2(out[2]),
        .I3(out[1]),
        .I4(\FSM_sequential_tx_state_reg[2]_0 ),
        .I5(out[0]),
        .O(\FSM_sequential_tx_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5545)) 
    \FSM_sequential_tx_state[2]_i_2 
       (.I0(out[1]),
        .I1(mmcm_lock_reclocked_reg_0),
        .I2(time_tlock_max_reg_0),
        .I3(\time_out_counter_reg[18]_0 ),
        .O(\FSM_sequential_tx_state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_tx_state[3]_i_10 
       (.I0(wait_time_cnt_reg[8]),
        .I1(wait_time_cnt_reg[5]),
        .I2(wait_time_cnt_reg[13]),
        .I3(wait_time_cnt_reg[2]),
        .O(\FSM_sequential_tx_state[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_tx_state[3]_i_11 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[14]),
        .I2(wait_time_cnt_reg[15]),
        .I3(wait_time_cnt_reg[12]),
        .O(\FSM_sequential_tx_state[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_tx_state[3]_i_12 
       (.I0(wait_time_cnt_reg[11]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[10]),
        .I3(wait_time_cnt_reg[4]),
        .O(\FSM_sequential_tx_state[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_tx_state[3]_i_13 
       (.I0(wait_time_cnt_reg[9]),
        .I1(wait_time_cnt_reg[7]),
        .I2(wait_time_cnt_reg[6]),
        .I3(wait_time_cnt_reg[3]),
        .O(\FSM_sequential_tx_state[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000005D0C000000)) 
    \FSM_sequential_tx_state[3]_i_2 
       (.I0(time_out_wait_bypass_s3),
        .I1(out[0]),
        .I2(tx_state1),
        .I3(out[2]),
        .I4(out[1]),
        .I5(out[3]),
        .O(\FSM_sequential_tx_state[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_tx_state[3]_i_4 
       (.I0(\FSM_sequential_tx_state[3]_i_10_n_0 ),
        .I1(\FSM_sequential_tx_state[3]_i_11_n_0 ),
        .I2(\FSM_sequential_tx_state[3]_i_12_n_0 ),
        .I3(\FSM_sequential_tx_state[3]_i_13_n_0 ),
        .O(wait_time_done));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_tx_state[3]_i_5 
       (.I0(out[1]),
        .I1(out[2]),
        .O(\FSM_sequential_tx_state[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_tx_state[3]_i_6 
       (.I0(time_out_500us_reg_0),
        .I1(\time_out_counter_reg[18]_0 ),
        .O(tx_state1));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_tx_state[3]_i_8 
       (.I0(time_tlock_max_reg_0),
        .I1(\time_out_counter_reg[18]_0 ),
        .O(\FSM_sequential_tx_state[3]_i_8_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_tx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sync_cplllock_n_1),
        .D(\FSM_sequential_tx_state[0]_i_1_n_0 ),
        .Q(out[0]),
        .R(AR));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_tx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sync_cplllock_n_1),
        .D(\FSM_sequential_tx_state[1]_i_1_n_0 ),
        .Q(out[1]),
        .R(AR));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_tx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sync_cplllock_n_1),
        .D(\FSM_sequential_tx_state[2]_i_1_n_0 ),
        .Q(out[2]),
        .R(AR));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_tx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sync_cplllock_n_1),
        .D(\FSM_sequential_tx_state[3]_i_2_n_0 ),
        .Q(out[3]),
        .R(AR));
  FDRE #(
    .INIT(1'b1)) 
    MMCM_RESET_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(\FSM_sequential_tx_state_reg[2]_3 ),
        .Q(mmcm_reset),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    TXUSERRDY_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(\FSM_sequential_tx_state_reg[3]_1 ),
        .Q(gt0_txuserrdy_i),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    gttxreset_i_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(\FSM_sequential_tx_state_reg[2]_2 ),
        .Q(gt0_gttxreset_t),
        .R(AR));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .O(\init_wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[3]_i_1 
       (.I0(Q[0]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1 
       (.I0(Q[1]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .I4(Q[0]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[2]),
        .I5(Q[1]),
        .O(p_0_in__0[5]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[6]_i_1 
       (.I0(init_wait_count_reg__0[6]),
        .I1(Q[1]),
        .I2(\init_wait_count[7]_i_4_n_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(p_0_in__0[6]));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \init_wait_count[7]_i_1 
       (.I0(\init_wait_count_reg[0]_0 ),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(init_wait_count));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[7]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\init_wait_count[7]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(init_wait_count_reg__0[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \init_wait_count[7]_i_3 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[6]),
        .I3(init_wait_count_reg__0[0]),
        .O(\init_wait_count_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \init_wait_count[7]_i_4 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .O(\init_wait_count[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(AR),
        .D(\init_wait_count[0]_i_1_n_0 ),
        .Q(init_wait_count_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__0[1]),
        .Q(init_wait_count_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__0[2]),
        .Q(init_wait_count_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__0[3]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__0[4]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__0[5]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__0[6]),
        .Q(init_wait_count_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__0[7]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .CLR(AR),
        .D(\init_wait_count_reg[7]_0 ),
        .Q(\FSM_sequential_tx_state_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .I3(mmcm_lock_count_reg__0[2]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[2]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[2]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[6]_i_1 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(\mmcm_lock_count[7]_i_2_n_0 ),
        .I2(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[7]_i_1 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(\mmcm_lock_count[7]_i_2_n_0 ),
        .I3(mmcm_lock_count_reg__0[6]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \mmcm_lock_count[7]_i_2 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[1]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[3]),
        .O(\mmcm_lock_count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAAA)) 
    \mmcm_lock_count[8]_i_1 
       (.I0(\mmcm_lock_count_reg[9]_1 [0]),
        .I1(mmcm_lock_count_reg__0[7]),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[4]),
        .I5(\mmcm_lock_count[8]_i_2_n_0 ),
        .O(p_0_in__1[8]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \mmcm_lock_count[8]_i_2 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .I3(mmcm_lock_count_reg__0[2]),
        .O(\mmcm_lock_count[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \mmcm_lock_count[9]_i_2 
       (.I0(\mmcm_lock_count_reg[9]_1 [0]),
        .I1(\mmcm_lock_count_reg[9]_2 ),
        .I2(\mmcm_lock_count_reg[9]_1 [1]),
        .O(\mmcm_lock_count[9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[9]_i_3 
       (.I0(\mmcm_lock_count_reg[9]_1 [1]),
        .I1(\mmcm_lock_count_reg[9]_2 ),
        .I2(\mmcm_lock_count_reg[9]_1 [0]),
        .O(p_0_in__1[9]));
  LUT5 #(
    .INIT(32'h40000000)) 
    \mmcm_lock_count[9]_i_4 
       (.I0(\mmcm_lock_count[8]_i_2_n_0 ),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(mmcm_lock_count_reg__0[5]),
        .I3(mmcm_lock_count_reg__0[6]),
        .I4(mmcm_lock_count_reg__0[7]),
        .O(\mmcm_lock_count_reg[9]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__1[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__1[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__1[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__1[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__1[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__1[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__1[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__1[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__1[8]),
        .Q(\mmcm_lock_count_reg[9]_1 [0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__1[9]),
        .Q(\mmcm_lock_count_reg[9]_1 [1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_lock_reclocked_reg_1),
        .Q(mmcm_lock_reclocked_reg_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h57)) 
    pll_reset_asserted_i_2
       (.I0(refclk_stable_reg_n_0),
        .I1(gt0_cpllrefclklost_i),
        .I2(pll_reset_asserted_reg_0),
        .O(CPLL_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(\FSM_sequential_tx_state_reg[2]_1 ),
        .Q(pll_reset_asserted_reg_0),
        .R(AR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \refclk_stable_count[0]_i_1 
       (.I0(\refclk_stable_count[0]_i_3_n_0 ),
        .I1(refclk_stable_count_reg[4]),
        .I2(refclk_stable_count_reg[8]),
        .I3(refclk_stable_count_reg[16]),
        .I4(refclk_stable_count_reg[14]),
        .I5(\refclk_stable_count[0]_i_4_n_0 ),
        .O(refclk_stable_count));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \refclk_stable_count[0]_i_10 
       (.I0(refclk_stable_count_reg[5]),
        .I1(refclk_stable_count_reg[0]),
        .I2(refclk_stable_count_reg[13]),
        .I3(refclk_stable_count_reg[18]),
        .O(\refclk_stable_count[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \refclk_stable_count[0]_i_3 
       (.I0(refclk_stable_count_reg[3]),
        .I1(refclk_stable_count_reg[7]),
        .I2(refclk_stable_count_reg[9]),
        .I3(refclk_stable_count_reg[10]),
        .I4(\refclk_stable_count[0]_i_9_n_0 ),
        .I5(\refclk_stable_count[0]_i_10_n_0 ),
        .O(\refclk_stable_count[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \refclk_stable_count[0]_i_4 
       (.I0(refclk_stable_count_reg[1]),
        .I1(refclk_stable_count_reg[15]),
        .I2(refclk_stable_count_reg[2]),
        .I3(refclk_stable_count_reg[12]),
        .O(\refclk_stable_count[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \refclk_stable_count[0]_i_5 
       (.I0(refclk_stable_count_reg[3]),
        .O(\refclk_stable_count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \refclk_stable_count[0]_i_6 
       (.I0(refclk_stable_count_reg[2]),
        .O(\refclk_stable_count[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \refclk_stable_count[0]_i_7 
       (.I0(refclk_stable_count_reg[1]),
        .O(\refclk_stable_count[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \refclk_stable_count[0]_i_8 
       (.I0(refclk_stable_count_reg[0]),
        .O(\refclk_stable_count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \refclk_stable_count[0]_i_9 
       (.I0(refclk_stable_count_reg[6]),
        .I1(refclk_stable_count_reg[11]),
        .I2(refclk_stable_count_reg[19]),
        .I3(refclk_stable_count_reg[17]),
        .O(\refclk_stable_count[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \refclk_stable_count[12]_i_2 
       (.I0(refclk_stable_count_reg[15]),
        .O(\refclk_stable_count[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \refclk_stable_count[12]_i_3 
       (.I0(refclk_stable_count_reg[14]),
        .O(\refclk_stable_count[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \refclk_stable_count[12]_i_4 
       (.I0(refclk_stable_count_reg[13]),
        .O(\refclk_stable_count[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \refclk_stable_count[12]_i_5 
       (.I0(refclk_stable_count_reg[12]),
        .O(\refclk_stable_count[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \refclk_stable_count[16]_i_2 
       (.I0(refclk_stable_count_reg[19]),
        .O(\refclk_stable_count[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \refclk_stable_count[16]_i_3 
       (.I0(refclk_stable_count_reg[18]),
        .O(\refclk_stable_count[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \refclk_stable_count[16]_i_4 
       (.I0(refclk_stable_count_reg[17]),
        .O(\refclk_stable_count[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \refclk_stable_count[16]_i_5 
       (.I0(refclk_stable_count_reg[16]),
        .O(\refclk_stable_count[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \refclk_stable_count[4]_i_2 
       (.I0(refclk_stable_count_reg[7]),
        .O(\refclk_stable_count[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \refclk_stable_count[4]_i_3 
       (.I0(refclk_stable_count_reg[6]),
        .O(\refclk_stable_count[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \refclk_stable_count[4]_i_4 
       (.I0(refclk_stable_count_reg[5]),
        .O(\refclk_stable_count[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \refclk_stable_count[4]_i_5 
       (.I0(refclk_stable_count_reg[4]),
        .O(\refclk_stable_count[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \refclk_stable_count[8]_i_2 
       (.I0(refclk_stable_count_reg[11]),
        .O(\refclk_stable_count[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \refclk_stable_count[8]_i_3 
       (.I0(refclk_stable_count_reg[10]),
        .O(\refclk_stable_count[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \refclk_stable_count[8]_i_4 
       (.I0(refclk_stable_count_reg[9]),
        .O(\refclk_stable_count[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \refclk_stable_count[8]_i_5 
       (.I0(refclk_stable_count_reg[8]),
        .O(\refclk_stable_count[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_7 ),
        .Q(refclk_stable_count_reg[0]),
        .R(1'b0));
  CARRY4 \refclk_stable_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\refclk_stable_count_reg[0]_i_2_n_0 ,\refclk_stable_count_reg[0]_i_2_n_1 ,\refclk_stable_count_reg[0]_i_2_n_2 ,\refclk_stable_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\refclk_stable_count_reg[0]_i_2_n_4 ,\refclk_stable_count_reg[0]_i_2_n_5 ,\refclk_stable_count_reg[0]_i_2_n_6 ,\refclk_stable_count_reg[0]_i_2_n_7 }),
        .S({\refclk_stable_count[0]_i_5_n_0 ,\refclk_stable_count[0]_i_6_n_0 ,\refclk_stable_count[0]_i_7_n_0 ,\refclk_stable_count[0]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[10] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[11] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[12] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[12]),
        .R(1'b0));
  CARRY4 \refclk_stable_count_reg[12]_i_1 
       (.CI(\refclk_stable_count_reg[8]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[12]_i_1_n_0 ,\refclk_stable_count_reg[12]_i_1_n_1 ,\refclk_stable_count_reg[12]_i_1_n_2 ,\refclk_stable_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[12]_i_1_n_4 ,\refclk_stable_count_reg[12]_i_1_n_5 ,\refclk_stable_count_reg[12]_i_1_n_6 ,\refclk_stable_count_reg[12]_i_1_n_7 }),
        .S({\refclk_stable_count[12]_i_2_n_0 ,\refclk_stable_count[12]_i_3_n_0 ,\refclk_stable_count[12]_i_4_n_0 ,\refclk_stable_count[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[13] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[14] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[15] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[16] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[16]),
        .R(1'b0));
  CARRY4 \refclk_stable_count_reg[16]_i_1 
       (.CI(\refclk_stable_count_reg[12]_i_1_n_0 ),
        .CO({\NLW_refclk_stable_count_reg[16]_i_1_CO_UNCONNECTED [3],\refclk_stable_count_reg[16]_i_1_n_1 ,\refclk_stable_count_reg[16]_i_1_n_2 ,\refclk_stable_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[16]_i_1_n_4 ,\refclk_stable_count_reg[16]_i_1_n_5 ,\refclk_stable_count_reg[16]_i_1_n_6 ,\refclk_stable_count_reg[16]_i_1_n_7 }),
        .S({\refclk_stable_count[16]_i_2_n_0 ,\refclk_stable_count[16]_i_3_n_0 ,\refclk_stable_count[16]_i_4_n_0 ,\refclk_stable_count[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[17] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[18] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[19] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_6 ),
        .Q(refclk_stable_count_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_5 ),
        .Q(refclk_stable_count_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_4 ),
        .Q(refclk_stable_count_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[4]),
        .R(1'b0));
  CARRY4 \refclk_stable_count_reg[4]_i_1 
       (.CI(\refclk_stable_count_reg[0]_i_2_n_0 ),
        .CO({\refclk_stable_count_reg[4]_i_1_n_0 ,\refclk_stable_count_reg[4]_i_1_n_1 ,\refclk_stable_count_reg[4]_i_1_n_2 ,\refclk_stable_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[4]_i_1_n_4 ,\refclk_stable_count_reg[4]_i_1_n_5 ,\refclk_stable_count_reg[4]_i_1_n_6 ,\refclk_stable_count_reg[4]_i_1_n_7 }),
        .S({\refclk_stable_count[4]_i_2_n_0 ,\refclk_stable_count[4]_i_3_n_0 ,\refclk_stable_count[4]_i_4_n_0 ,\refclk_stable_count[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[8] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[8]),
        .R(1'b0));
  CARRY4 \refclk_stable_count_reg[8]_i_1 
       (.CI(\refclk_stable_count_reg[4]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[8]_i_1_n_0 ,\refclk_stable_count_reg[8]_i_1_n_1 ,\refclk_stable_count_reg[8]_i_1_n_2 ,\refclk_stable_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[8]_i_1_n_4 ,\refclk_stable_count_reg[8]_i_1_n_5 ,\refclk_stable_count_reg[8]_i_1_n_6 ,\refclk_stable_count_reg[8]_i_1_n_7 }),
        .S({\refclk_stable_count[8]_i_2_n_0 ,\refclk_stable_count[8]_i_3_n_0 ,\refclk_stable_count[8]_i_4_n_0 ,\refclk_stable_count[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[9] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    refclk_stable_i_1
       (.I0(\refclk_stable_count[0]_i_4_n_0 ),
        .I1(refclk_stable_count_reg[14]),
        .I2(refclk_stable_count_reg[16]),
        .I3(refclk_stable_count_reg[8]),
        .I4(refclk_stable_count_reg[4]),
        .I5(\refclk_stable_count[0]_i_3_n_0 ),
        .O(refclk_stable));
  FDRE #(
    .INIT(1'b0)) 
    refclk_stable_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(refclk_stable),
        .Q(refclk_stable_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(\FSM_sequential_tx_state_reg[3]_0 ),
        .Q(\time_out_counter_reg[18]_0 ),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(\FSM_sequential_tx_state_reg[3]_2 ),
        .Q(data_in),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(MMCM_RESET_reg_0),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(run_phase_alignment_int_s3),
        .R(1'b0));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_22 sync_TXRESETDONE
       (.\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95] ),
        .data_out(txresetdone_s2),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_23 sync_cplllock
       (.E(sync_cplllock_n_1),
        .\FSM_sequential_tx_state_reg[1] (\FSM_sequential_tx_state[3]_i_5_n_0 ),
        .\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95]_0 ),
        .independent_clock_bufg(independent_clock_bufg),
        .init_wait_done_reg(\FSM_sequential_tx_state_reg[0]_0 ),
        .mmcm_lock_reclocked_reg(mmcm_lock_reclocked_reg_0),
        .out(out),
        .pll_reset_asserted_reg(pll_reset_asserted_reg_0),
        .refclk_stable_reg(refclk_stable_reg_n_0),
        .reset_time_out_1(reset_time_out_1),
        .reset_time_out_reg(\time_out_counter_reg[18]_0 ),
        .time_out_2ms_reg(\FSM_sequential_tx_state_reg[2]_0 ),
        .time_out_500us_reg(time_out_500us_reg_0),
        .time_tlock_max_reg(\FSM_sequential_tx_state[3]_i_8_n_0 ),
        .txresetdone_s3(txresetdone_s3),
        .wait_time_done(wait_time_done));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_24 sync_mmcm_lock_reclocked
       (.MMCM_RESET_reg(MMCM_RESET_reg_1),
        .SR(sync_mmcm_lock_reclocked_n_0),
        .independent_clock_bufg(independent_clock_bufg),
        .\mmcm_lock_count_reg[9] (\mmcm_lock_count_reg[9]_0 ));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_25 sync_run_phase_alignment_int
       (.MMCM_RESET_reg(MMCM_RESET_reg_0),
        .data_in(data_in),
        .data_out(run_phase_alignment_int_s2));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_26 sync_time_out_wait_bypass
       (.data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg),
        .time_out_wait_bypass_reg(data_sync_reg1));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_27 sync_tx_fsm_reset_done_int
       (.MMCM_RESET_reg(MMCM_RESET_reg_0),
        .data_out(tx_fsm_reset_done_int_s2),
        .gt0_txresetdone_out_i(gt0_txresetdone_out_i));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_2ms_reg_0),
        .Q(\FSM_sequential_tx_state_reg[2]_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000040)) 
    time_out_500us_i_2
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_500us_i_4_n_0),
        .O(time_out_500us_reg_2));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    time_out_500us_i_3
       (.I0(time_tlock_max_reg_2),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[9]),
        .I4(\time_out_counter[0]_i_8_n_0 ),
        .O(time_out_500us_reg_1));
  LUT4 #(
    .INIT(16'hFFEF)) 
    time_out_500us_i_4
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[12]),
        .O(time_out_500us_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_500us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_500us_reg_3),
        .Q(time_out_500us_reg_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_1__0 
       (.I0(time_out_2ms_2),
        .O(time_out_counter));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \time_out_counter[0]_i_3__0 
       (.I0(time_tlock_max_reg_1),
        .I1(\time_out_counter[0]_i_8_n_0 ),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_counter_reg[12]),
        .I5(\time_out_counter[0]_i_9_n_0 ),
        .O(time_out_2ms_2));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[3]),
        .O(\time_out_counter[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[0]_i_5 
       (.I0(time_out_counter_reg[2]),
        .O(\time_out_counter[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[0]_i_6 
       (.I0(time_out_counter_reg[1]),
        .O(\time_out_counter[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_7 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \time_out_counter[0]_i_8 
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \time_out_counter[0]_i_9 
       (.I0(time_out_counter_reg[18]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[4]),
        .I5(time_out_counter_reg[17]),
        .O(\time_out_counter[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[12]_i_2 
       (.I0(time_out_counter_reg[15]),
        .O(\time_out_counter[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[12]_i_3 
       (.I0(time_out_counter_reg[14]),
        .O(\time_out_counter[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[12]_i_4 
       (.I0(time_out_counter_reg[13]),
        .O(\time_out_counter[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[12]_i_5 
       (.I0(time_out_counter_reg[12]),
        .O(\time_out_counter[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[16]_i_2 
       (.I0(time_out_counter_reg[18]),
        .O(\time_out_counter[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[16]_i_3 
       (.I0(time_out_counter_reg[17]),
        .O(\time_out_counter[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[16]_i_4 
       (.I0(time_out_counter_reg[16]),
        .O(\time_out_counter[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[4]_i_2 
       (.I0(time_out_counter_reg[7]),
        .O(\time_out_counter[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[4]_i_3 
       (.I0(time_out_counter_reg[6]),
        .O(\time_out_counter[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[4]_i_4 
       (.I0(time_out_counter_reg[5]),
        .O(\time_out_counter[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[4]_i_5 
       (.I0(time_out_counter_reg[4]),
        .O(\time_out_counter[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[8]_i_2 
       (.I0(time_out_counter_reg[11]),
        .O(\time_out_counter[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[8]_i_3 
       (.I0(time_out_counter_reg[10]),
        .O(\time_out_counter[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[8]_i_4 
       (.I0(time_out_counter_reg[9]),
        .O(\time_out_counter[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \time_out_counter[8]_i_5 
       (.I0(time_out_counter_reg[8]),
        .O(\time_out_counter[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(\time_out_counter_reg[18]_0 ));
  CARRY4 \time_out_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2_n_0 ,\time_out_counter_reg[0]_i_2_n_1 ,\time_out_counter_reg[0]_i_2_n_2 ,\time_out_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2_n_4 ,\time_out_counter_reg[0]_i_2_n_5 ,\time_out_counter_reg[0]_i_2_n_6 ,\time_out_counter_reg[0]_i_2_n_7 }),
        .S({\time_out_counter[0]_i_4_n_0 ,\time_out_counter[0]_i_5_n_0 ,\time_out_counter[0]_i_6_n_0 ,\time_out_counter[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(\time_out_counter_reg[18]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(\time_out_counter_reg[18]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(\time_out_counter_reg[18]_0 ));
  CARRY4 \time_out_counter_reg[12]_i_1 
       (.CI(\time_out_counter_reg[8]_i_1_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1_n_0 ,\time_out_counter_reg[12]_i_1_n_1 ,\time_out_counter_reg[12]_i_1_n_2 ,\time_out_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1_n_4 ,\time_out_counter_reg[12]_i_1_n_5 ,\time_out_counter_reg[12]_i_1_n_6 ,\time_out_counter_reg[12]_i_1_n_7 }),
        .S({\time_out_counter[12]_i_2_n_0 ,\time_out_counter[12]_i_3_n_0 ,\time_out_counter[12]_i_4_n_0 ,\time_out_counter[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(\time_out_counter_reg[18]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(\time_out_counter_reg[18]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(\time_out_counter_reg[18]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(\time_out_counter_reg[18]_0 ));
  CARRY4 \time_out_counter_reg[16]_i_1 
       (.CI(\time_out_counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1_n_2 ,\time_out_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3],\time_out_counter_reg[16]_i_1_n_5 ,\time_out_counter_reg[16]_i_1_n_6 ,\time_out_counter_reg[16]_i_1_n_7 }),
        .S({1'b0,\time_out_counter[16]_i_2_n_0 ,\time_out_counter[16]_i_3_n_0 ,\time_out_counter[16]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(\time_out_counter_reg[18]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_5 ),
        .Q(time_out_counter_reg[18]),
        .R(\time_out_counter_reg[18]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(\time_out_counter_reg[18]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(\time_out_counter_reg[18]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(\time_out_counter_reg[18]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(\time_out_counter_reg[18]_0 ));
  CARRY4 \time_out_counter_reg[4]_i_1 
       (.CI(\time_out_counter_reg[0]_i_2_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1_n_0 ,\time_out_counter_reg[4]_i_1_n_1 ,\time_out_counter_reg[4]_i_1_n_2 ,\time_out_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1_n_4 ,\time_out_counter_reg[4]_i_1_n_5 ,\time_out_counter_reg[4]_i_1_n_6 ,\time_out_counter_reg[4]_i_1_n_7 }),
        .S({\time_out_counter[4]_i_2_n_0 ,\time_out_counter[4]_i_3_n_0 ,\time_out_counter[4]_i_4_n_0 ,\time_out_counter[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(\time_out_counter_reg[18]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(\time_out_counter_reg[18]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(\time_out_counter_reg[18]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(\time_out_counter_reg[18]_0 ));
  CARRY4 \time_out_counter_reg[8]_i_1 
       (.CI(\time_out_counter_reg[4]_i_1_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1_n_0 ,\time_out_counter_reg[8]_i_1_n_1 ,\time_out_counter_reg[8]_i_1_n_2 ,\time_out_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1_n_4 ,\time_out_counter_reg[8]_i_1_n_5 ,\time_out_counter_reg[8]_i_1_n_6 ,\time_out_counter_reg[8]_i_1_n_7 }),
        .S({\time_out_counter[8]_i_2_n_0 ,\time_out_counter[8]_i_3_n_0 ,\time_out_counter[8]_i_4_n_0 ,\time_out_counter[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(\time_out_counter_reg[18]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(MMCM_RESET_reg_0),
        .CE(1'b1),
        .D(time_out_wait_bypass_reg_0),
        .Q(data_sync_reg1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    time_tlock_max_i_2__0
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[16]),
        .I4(time_out_counter_reg[9]),
        .I5(time_out_counter_reg[11]),
        .O(time_tlock_max_reg_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_tlock_max_i_3__0
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[18]),
        .I3(time_out_counter_reg[4]),
        .O(time_tlock_max_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    time_tlock_max_i_4__0
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[0]),
        .O(time_tlock_max_reg_4));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    time_tlock_max_i_5
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_counter_reg[12]),
        .I5(time_out_counter_reg[10]),
        .O(time_tlock_max_reg_3));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_tlock_max_reg_5),
        .Q(time_tlock_max_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(\FSM_sequential_tx_state_reg[0]_1 ),
        .Q(gt0_txresetdone_out_i),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_s3_reg
       (.C(MMCM_RESET_reg_0),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_s2),
        .Q(tx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txresetdone_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1 
       (.I0(run_phase_alignment_int_s3),
        .O(clear));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \wait_bypass_count[0]_i_10 
       (.I0(wait_bypass_count_reg[0]),
        .I1(wait_bypass_count_reg[15]),
        .I2(wait_bypass_count_reg[16]),
        .I3(wait_bypass_count_reg[2]),
        .I4(wait_bypass_count_reg[1]),
        .O(\wait_bypass_count[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \wait_bypass_count[0]_i_11 
       (.I0(wait_bypass_count_reg[12]),
        .I1(wait_bypass_count_reg[11]),
        .I2(wait_bypass_count_reg[14]),
        .I3(wait_bypass_count_reg[13]),
        .O(\wait_bypass_count[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \wait_bypass_count[0]_i_12 
       (.I0(wait_bypass_count_reg[7]),
        .I1(wait_bypass_count_reg[8]),
        .I2(wait_bypass_count_reg[9]),
        .I3(wait_bypass_count_reg[10]),
        .O(\wait_bypass_count[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2 
       (.I0(\wait_bypass_count_reg[0]_0 ),
        .I1(tx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_bypass_count[0]_i_4 
       (.I0(\wait_bypass_count[0]_i_9_n_0 ),
        .I1(\wait_bypass_count[0]_i_10_n_0 ),
        .I2(\wait_bypass_count[0]_i_11_n_0 ),
        .I3(\wait_bypass_count[0]_i_12_n_0 ),
        .O(\wait_bypass_count_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[0]_i_5 
       (.I0(wait_bypass_count_reg[3]),
        .O(\wait_bypass_count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[0]_i_6 
       (.I0(wait_bypass_count_reg[2]),
        .O(\wait_bypass_count[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[0]_i_7 
       (.I0(wait_bypass_count_reg[1]),
        .O(\wait_bypass_count[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_8 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \wait_bypass_count[0]_i_9 
       (.I0(wait_bypass_count_reg[4]),
        .I1(wait_bypass_count_reg[3]),
        .I2(wait_bypass_count_reg[6]),
        .I3(wait_bypass_count_reg[5]),
        .O(\wait_bypass_count[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[12]_i_2 
       (.I0(wait_bypass_count_reg[15]),
        .O(\wait_bypass_count[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[12]_i_3 
       (.I0(wait_bypass_count_reg[14]),
        .O(\wait_bypass_count[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[12]_i_4 
       (.I0(wait_bypass_count_reg[13]),
        .O(\wait_bypass_count[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[12]_i_5 
       (.I0(wait_bypass_count_reg[12]),
        .O(\wait_bypass_count[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[16]_i_2 
       (.I0(wait_bypass_count_reg[16]),
        .O(\wait_bypass_count[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[4]_i_2 
       (.I0(wait_bypass_count_reg[7]),
        .O(\wait_bypass_count[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[4]_i_3 
       (.I0(wait_bypass_count_reg[6]),
        .O(\wait_bypass_count[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[4]_i_4 
       (.I0(wait_bypass_count_reg[5]),
        .O(\wait_bypass_count[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[4]_i_5 
       (.I0(wait_bypass_count_reg[4]),
        .O(\wait_bypass_count[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[8]_i_2 
       (.I0(wait_bypass_count_reg[11]),
        .O(\wait_bypass_count[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[8]_i_3 
       (.I0(wait_bypass_count_reg[10]),
        .O(\wait_bypass_count[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[8]_i_4 
       (.I0(wait_bypass_count_reg[9]),
        .O(\wait_bypass_count[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \wait_bypass_count[8]_i_5 
       (.I0(wait_bypass_count_reg[8]),
        .O(\wait_bypass_count[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(MMCM_RESET_reg_0),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3_n_0 ,\wait_bypass_count_reg[0]_i_3_n_1 ,\wait_bypass_count_reg[0]_i_3_n_2 ,\wait_bypass_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3_n_4 ,\wait_bypass_count_reg[0]_i_3_n_5 ,\wait_bypass_count_reg[0]_i_3_n_6 ,\wait_bypass_count_reg[0]_i_3_n_7 }),
        .S({\wait_bypass_count[0]_i_5_n_0 ,\wait_bypass_count[0]_i_6_n_0 ,\wait_bypass_count[0]_i_7_n_0 ,\wait_bypass_count[0]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(MMCM_RESET_reg_0),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(MMCM_RESET_reg_0),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(MMCM_RESET_reg_0),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\wait_bypass_count_reg[8]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[12]_i_1_n_0 ,\wait_bypass_count_reg[12]_i_1_n_1 ,\wait_bypass_count_reg[12]_i_1_n_2 ,\wait_bypass_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[12]_i_1_n_4 ,\wait_bypass_count_reg[12]_i_1_n_5 ,\wait_bypass_count_reg[12]_i_1_n_6 ,\wait_bypass_count_reg[12]_i_1_n_7 }),
        .S({\wait_bypass_count[12]_i_2_n_0 ,\wait_bypass_count[12]_i_3_n_0 ,\wait_bypass_count[12]_i_4_n_0 ,\wait_bypass_count[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[13] 
       (.C(MMCM_RESET_reg_0),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[14] 
       (.C(MMCM_RESET_reg_0),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[15] 
       (.C(MMCM_RESET_reg_0),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[16] 
       (.C(MMCM_RESET_reg_0),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[16]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[16]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[16]_i_1 
       (.CI(\wait_bypass_count_reg[12]_i_1_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED [3:1],\wait_bypass_count_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\wait_bypass_count[16]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(MMCM_RESET_reg_0),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(MMCM_RESET_reg_0),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(MMCM_RESET_reg_0),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(MMCM_RESET_reg_0),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\wait_bypass_count_reg[0]_i_3_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1_n_0 ,\wait_bypass_count_reg[4]_i_1_n_1 ,\wait_bypass_count_reg[4]_i_1_n_2 ,\wait_bypass_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1_n_4 ,\wait_bypass_count_reg[4]_i_1_n_5 ,\wait_bypass_count_reg[4]_i_1_n_6 ,\wait_bypass_count_reg[4]_i_1_n_7 }),
        .S({\wait_bypass_count[4]_i_2_n_0 ,\wait_bypass_count[4]_i_3_n_0 ,\wait_bypass_count[4]_i_4_n_0 ,\wait_bypass_count[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(MMCM_RESET_reg_0),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(MMCM_RESET_reg_0),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(MMCM_RESET_reg_0),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(MMCM_RESET_reg_0),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\wait_bypass_count_reg[4]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1_n_0 ,\wait_bypass_count_reg[8]_i_1_n_1 ,\wait_bypass_count_reg[8]_i_1_n_2 ,\wait_bypass_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1_n_4 ,\wait_bypass_count_reg[8]_i_1_n_5 ,\wait_bypass_count_reg[8]_i_1_n_6 ,\wait_bypass_count_reg[8]_i_1_n_7 }),
        .S({\wait_bypass_count[8]_i_2_n_0 ,\wait_bypass_count[8]_i_3_n_0 ,\wait_bypass_count[8]_i_4_n_0 ,\wait_bypass_count[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(MMCM_RESET_reg_0),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(clear));
  LUT4 #(
    .INIT(16'h004C)) 
    \wait_time_cnt[0]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[3]),
        .O(wait_time_cnt0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_2 
       (.I0(wait_time_done),
        .O(sel));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_4 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_5 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_6 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_7 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(wait_time_cnt0));
  CARRY4 \wait_time_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3_n_0 ,\wait_time_cnt_reg[0]_i_3_n_1 ,\wait_time_cnt_reg[0]_i_3_n_2 ,\wait_time_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3_n_4 ,\wait_time_cnt_reg[0]_i_3_n_5 ,\wait_time_cnt_reg[0]_i_3_n_6 ,\wait_time_cnt_reg[0]_i_3_n_7 }),
        .S({\wait_time_cnt[0]_i_4_n_0 ,\wait_time_cnt[0]_i_5_n_0 ,\wait_time_cnt[0]_i_6_n_0 ,\wait_time_cnt[0]_i_7_n_0 }));
  FDSE \wait_time_cnt_reg[10] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .S(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[11] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[12] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(wait_time_cnt0));
  CARRY4 \wait_time_cnt_reg[12]_i_1 
       (.CI(\wait_time_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1_n_1 ,\wait_time_cnt_reg[12]_i_1_n_2 ,\wait_time_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1_n_4 ,\wait_time_cnt_reg[12]_i_1_n_5 ,\wait_time_cnt_reg[12]_i_1_n_6 ,\wait_time_cnt_reg[12]_i_1_n_7 }),
        .S({\wait_time_cnt[12]_i_2_n_0 ,\wait_time_cnt[12]_i_3_n_0 ,\wait_time_cnt[12]_i_4_n_0 ,\wait_time_cnt[12]_i_5_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[14] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[15] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .R(wait_time_cnt0));
  FDRE \wait_time_cnt_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .R(wait_time_cnt0));
  FDSE \wait_time_cnt_reg[4] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .S(wait_time_cnt0));
  CARRY4 \wait_time_cnt_reg[4]_i_1 
       (.CI(\wait_time_cnt_reg[0]_i_3_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1_n_0 ,\wait_time_cnt_reg[4]_i_1_n_1 ,\wait_time_cnt_reg[4]_i_1_n_2 ,\wait_time_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1_n_4 ,\wait_time_cnt_reg[4]_i_1_n_5 ,\wait_time_cnt_reg[4]_i_1_n_6 ,\wait_time_cnt_reg[4]_i_1_n_7 }),
        .S({\wait_time_cnt[4]_i_2_n_0 ,\wait_time_cnt[4]_i_3_n_0 ,\wait_time_cnt[4]_i_4_n_0 ,\wait_time_cnt[4]_i_5_n_0 }));
  FDRE \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .R(wait_time_cnt0));
  FDSE \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(wait_time_cnt0));
  FDSE \wait_time_cnt_reg[7] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(wait_time_cnt0));
  FDSE \wait_time_cnt_reg[8] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .S(wait_time_cnt0));
  CARRY4 \wait_time_cnt_reg[8]_i_1 
       (.CI(\wait_time_cnt_reg[4]_i_1_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1_n_0 ,\wait_time_cnt_reg[8]_i_1_n_1 ,\wait_time_cnt_reg[8]_i_1_n_2 ,\wait_time_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1_n_4 ,\wait_time_cnt_reg[8]_i_1_n_5 ,\wait_time_cnt_reg[8]_i_1_n_6 ,\wait_time_cnt_reg[8]_i_1_n_7 }),
        .S({\wait_time_cnt[8]_i_2_n_0 ,\wait_time_cnt[8]_i_3_n_0 ,\wait_time_cnt[8]_i_4_n_0 ,\wait_time_cnt[8]_i_5_n_0 }));
  FDSE \wait_time_cnt_reg[9] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .S(wait_time_cnt0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_block
   (gmii_isolate,
    status_vector,
    resetdone,
    sgmii_clk_r,
    sgmii_clk_en,
    gmii_rx_dv,
    gmii_rx_er,
    sgmii_clk_f,
    gmii_rxd,
    txn,
    txp,
    rxoutclk,
    txoutclk,
    mmcm_reset,
    CLK,
    MMCM_RESET_reg,
    AR,
    signal_detect,
    data_in,
    configuration_vector,
    gmii_tx_en,
    gmii_tx_er,
    speed_is_10_100,
    speed_is_100,
    gmii_txd,
    independent_clock_bufg,
    \cpllpd_wait_reg[95] ,
    MMCM_RESET_reg_0,
    rxn,
    rxp,
    gtrefclk_out,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out);
  output gmii_isolate;
  output [15:0]status_vector;
  output resetdone;
  output sgmii_clk_r;
  output sgmii_clk_en;
  output gmii_rx_dv;
  output gmii_rx_er;
  output sgmii_clk_f;
  output [7:0]gmii_rxd;
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output mmcm_reset;
  input CLK;
  input MMCM_RESET_reg;
  input [0:0]AR;
  input signal_detect;
  input data_in;
  input [4:0]configuration_vector;
  input gmii_tx_en;
  input gmii_tx_er;
  input speed_is_10_100;
  input speed_is_100;
  input [7:0]gmii_txd;
  input independent_clock_bufg;
  input \cpllpd_wait_reg[95] ;
  input MMCM_RESET_reg_0;
  input rxn;
  input rxp;
  input gtrefclk_out;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;

  wire [0:0]AR;
  wire CLK;
  wire CPLL_RESET_i_1_n_0;
  wire DRP_OP_DONE_i_1_n_0;
  wire MMCM_RESET_i_1_n_0;
  wire MMCM_RESET_reg;
  wire MMCM_RESET_reg_0;
  wire RXUSERRDY_i_1_n_0;
  wire TXUSERRDY_i_1_n_0;
  wire check_tlock_max_i_1_n_0;
  wire [4:0]configuration_vector;
  wire \cpllpd_wait_reg[95] ;
  wire data_in;
  wire enablealign;
  wire flag_i_1__0_n_0;
  wire flag_i_1_n_0;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_dv_int;
  wire gmii_rx_er;
  wire gmii_rx_er_int;
  wire [7:0]gmii_rxd;
  wire [7:0]gmii_rxd_int;
  wire gmii_tx_en;
  wire gmii_tx_en_int;
  wire gmii_tx_er;
  wire gmii_tx_er_int;
  wire [7:0]gmii_txd;
  wire [7:0]gmii_txd_int;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gt0_rxresetdone_out_i;
  wire gt0_txresetdone_out_i;
  wire gtrefclk_out;
  wire gtrxreset_i_i_1_n_0;
  wire gttxreset_i_i_1_n_0;
  wire \gtwizard_inst/inst/gt0_cpllreset_i ;
  wire \gtwizard_inst/inst/gt0_gtrxreset_gt ;
  wire \gtwizard_inst/inst/gt0_gtrxreset_t ;
  wire \gtwizard_inst/inst/gt0_gttxreset_gt ;
  wire \gtwizard_inst/inst/gt0_gttxreset_t ;
  wire \gtwizard_inst/inst/gt0_rxresetfsm_i/data_valid_sync ;
  wire [4:0]\gtwizard_inst/inst/gt0_rxresetfsm_i/init_wait_count_reg ;
  wire [9:8]\gtwizard_inst/inst/gt0_rxresetfsm_i/mmcm_lock_count_reg ;
  wire \gtwizard_inst/inst/gt0_rxresetfsm_i/mmcm_lock_i ;
  wire \gtwizard_inst/inst/gt0_rxresetfsm_i/mmcm_lock_reclocked ;
  wire \gtwizard_inst/inst/gt0_rxresetfsm_i/time_out_2ms ;
  wire [5:5]\gtwizard_inst/inst/gt0_rxresetfsm_i/time_out_counter_reg ;
  wire \gtwizard_inst/inst/gt0_rxresetfsm_i/time_tlock_max ;
  wire \gtwizard_inst/inst/gt0_rxuserrdy_i ;
  wire \gtwizard_inst/inst/gt0_txresetfsm_i/CPLL_RESET0 ;
  wire [7:3]\gtwizard_inst/inst/gt0_txresetfsm_i/init_wait_count_reg ;
  wire [9:8]\gtwizard_inst/inst/gt0_txresetfsm_i/mmcm_lock_count_reg ;
  wire \gtwizard_inst/inst/gt0_txresetfsm_i/mmcm_lock_i ;
  wire \gtwizard_inst/inst/gt0_txresetfsm_i/mmcm_lock_reclocked ;
  wire \gtwizard_inst/inst/gt0_txresetfsm_i/reset_time_out ;
  wire \gtwizard_inst/inst/gt0_txresetfsm_i/time_out_2ms ;
  wire \gtwizard_inst/inst/gt0_txuserrdy_i ;
  wire \gtwizard_inst/inst/gtwizard_i/cpll_reset0_i ;
  wire \gtwizard_inst/inst/gtwizard_i/gt0_GTWIZARD_i/drp_op_done ;
  wire \gtwizard_inst/inst/gtwizard_i/gt0_cpllreset_i ;
  wire \gtwizard_inst/reset_time_out ;
  wire \gtwizard_inst/run_phase_alignment_int_s3 ;
  wire \gtwizard_inst/rx_fsm_reset_done_int_s3 ;
  wire \gtwizard_inst/tx_fsm_reset_done_int_s3 ;
  wire independent_clock_bufg;
  wire init_wait_done_i_1__0_n_0;
  wire init_wait_done_i_1_n_0;
  wire initialize_ram_complete_i_1_n_0;
  wire initialize_ram_i_1_n_0;
  wire insert_idle_i_1_n_0;
  wire mgt_rx_reset;
  wire mgt_tx_reset;
  wire mmcm_lock_reclocked_i_1__0_n_0;
  wire mmcm_lock_reclocked_i_1_n_0;
  wire mmcm_reset;
  wire pll_reset_asserted_i_1_n_0;
  wire powerdown;
  wire rd_enable_i_1_n_0;
  wire remove_idle_i_1_n_0;
  wire reset_modified_i_1_n_0;
  wire reset_time_out_i_1__0_n_0;
  wire reset_time_out_i_1_n_0;
  wire resetdone;
  wire run_phase_alignment_int_i_1__0_n_0;
  wire run_phase_alignment_int_i_1_n_0;
  wire \rx_elastic_buffer_inst/even ;
  wire [4:0]\rx_elastic_buffer_inst/initialize_counter_reg ;
  wire \rx_elastic_buffer_inst/initialize_ram ;
  wire \rx_elastic_buffer_inst/initialize_ram_complete ;
  wire \rx_elastic_buffer_inst/initialize_ram_complete_sync_ris_edg ;
  wire \rx_elastic_buffer_inst/remove_idle ;
  wire \rx_elastic_buffer_inst/reset_modified ;
  wire \rx_elastic_buffer_inst/rxbuferr0 ;
  wire \rx_elastic_buffer_inst/wr_enable1 ;
  wire rx_fsm_reset_done_int_i_1_n_0;
  wire rxbuferr_i_1_n_0;
  wire [1:1]rxbufstatus;
  wire rxchariscomma;
  wire rxcharisk;
  wire [2:0]rxclkcorcnt;
  wire [7:0]rxdata;
  wire rxdisperr;
  wire rxn;
  wire rxnotintable;
  wire rxoutclk;
  wire rxp;
  wire rxreset_int;
  wire rxrundisp;
  wire sgmii_clk_en;
  wire sgmii_clk_f;
  wire sgmii_clk_r;
  wire signal_detect;
  wire speed_is_100;
  wire speed_is_10_100;
  wire [15:0]status_vector;
  wire time_out_100us_i_1_n_0;
  wire time_out_1us_i_1_n_0;
  wire time_out_2ms_i_1__0_n_0;
  wire time_out_2ms_i_1_n_0;
  wire time_out_500us_i_1_n_0;
  wire time_out_wait_bypass_i_1__0_n_0;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_tlock_max_i_1__0_n_0;
  wire time_tlock_max_i_1_n_0;
  wire transceiver_inst_n_1;
  wire transceiver_inst_n_10;
  wire transceiver_inst_n_104;
  wire transceiver_inst_n_105;
  wire transceiver_inst_n_106;
  wire transceiver_inst_n_107;
  wire transceiver_inst_n_108;
  wire transceiver_inst_n_109;
  wire transceiver_inst_n_110;
  wire transceiver_inst_n_111;
  wire transceiver_inst_n_112;
  wire transceiver_inst_n_114;
  wire transceiver_inst_n_115;
  wire transceiver_inst_n_116;
  wire transceiver_inst_n_117;
  wire transceiver_inst_n_118;
  wire transceiver_inst_n_120;
  wire transceiver_inst_n_121;
  wire transceiver_inst_n_122;
  wire transceiver_inst_n_123;
  wire transceiver_inst_n_124;
  wire transceiver_inst_n_125;
  wire transceiver_inst_n_126;
  wire transceiver_inst_n_127;
  wire transceiver_inst_n_128;
  wire transceiver_inst_n_134;
  wire transceiver_inst_n_136;
  wire transceiver_inst_n_138;
  wire transceiver_inst_n_21;
  wire transceiver_inst_n_23;
  wire transceiver_inst_n_24;
  wire transceiver_inst_n_25;
  wire transceiver_inst_n_27;
  wire transceiver_inst_n_29;
  wire transceiver_inst_n_30;
  wire transceiver_inst_n_35;
  wire transceiver_inst_n_36;
  wire transceiver_inst_n_37;
  wire transceiver_inst_n_38;
  wire transceiver_inst_n_39;
  wire transceiver_inst_n_40;
  wire transceiver_inst_n_43;
  wire transceiver_inst_n_44;
  wire transceiver_inst_n_47;
  wire transceiver_inst_n_48;
  wire transceiver_inst_n_52;
  wire transceiver_inst_n_53;
  wire transceiver_inst_n_54;
  wire transceiver_inst_n_55;
  wire transceiver_inst_n_56;
  wire transceiver_inst_n_57;
  wire transceiver_inst_n_58;
  wire transceiver_inst_n_59;
  wire transceiver_inst_n_76;
  wire transceiver_inst_n_77;
  wire transceiver_inst_n_78;
  wire transceiver_inst_n_79;
  wire transceiver_inst_n_80;
  wire transceiver_inst_n_81;
  wire transceiver_inst_n_82;
  wire transceiver_inst_n_85;
  wire transceiver_inst_n_86;
  wire transceiver_inst_n_87;
  wire transceiver_inst_n_88;
  wire transceiver_inst_n_89;
  wire transceiver_inst_n_90;
  wire tx_fsm_reset_done_int_i_1_n_0;
  wire tx_reset_done_i;
  wire txbuferr;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire [7:0]txdata;
  wire txn;
  wire txoutclk;
  wire txp;
  wire txreset_int;
  wire NLW_gig_ethernet_pcs_pma_1_core_an_enable_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_an_interrupt_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_drp_den_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_drp_dwe_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_drp_req_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_en_cdet_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_ewrap_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_loc_ref_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_mdio_out_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_mdio_tri_UNCONNECTED;
  wire [8:0]NLW_gig_ethernet_pcs_pma_1_core_drp_daddr_UNCONNECTED;
  wire [15:0]NLW_gig_ethernet_pcs_pma_1_core_drp_di_UNCONNECTED;
  wire [63:0]NLW_gig_ethernet_pcs_pma_1_core_rxphy_correction_timer_UNCONNECTED;
  wire [31:0]NLW_gig_ethernet_pcs_pma_1_core_rxphy_ns_field_UNCONNECTED;
  wire [47:0]NLW_gig_ethernet_pcs_pma_1_core_rxphy_s_field_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_1_core_speed_selection_UNCONNECTED;
  wire [9:0]NLW_gig_ethernet_pcs_pma_1_core_tx_code_group_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    CPLL_RESET_i_1
       (.I0(\gtwizard_inst/inst/gt0_txresetfsm_i/CPLL_RESET0 ),
        .I1(transceiver_inst_n_53),
        .I2(transceiver_inst_n_55),
        .I3(transceiver_inst_n_52),
        .I4(transceiver_inst_n_54),
        .I5(\gtwizard_inst/inst/gt0_cpllreset_i ),
        .O(CPLL_RESET_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    DRP_OP_DONE_i_1
       (.I0(transceiver_inst_n_1),
        .I1(transceiver_inst_n_78),
        .I2(transceiver_inst_n_76),
        .I3(transceiver_inst_n_77),
        .I4(\gtwizard_inst/inst/gtwizard_i/gt0_GTWIZARD_i/drp_op_done ),
        .O(DRP_OP_DONE_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFDF0010)) 
    MMCM_RESET_i_1
       (.I0(transceiver_inst_n_53),
        .I1(transceiver_inst_n_52),
        .I2(transceiver_inst_n_55),
        .I3(transceiver_inst_n_54),
        .I4(mmcm_reset),
        .O(MMCM_RESET_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    RXUSERRDY_i_1
       (.I0(transceiver_inst_n_56),
        .I1(transceiver_inst_n_59),
        .I2(transceiver_inst_n_57),
        .I3(transceiver_inst_n_58),
        .I4(\gtwizard_inst/inst/gt0_rxuserrdy_i ),
        .O(RXUSERRDY_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    TXUSERRDY_i_1
       (.I0(transceiver_inst_n_52),
        .I1(transceiver_inst_n_55),
        .I2(transceiver_inst_n_54),
        .I3(transceiver_inst_n_53),
        .I4(\gtwizard_inst/inst/gt0_txuserrdy_i ),
        .O(TXUSERRDY_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    check_tlock_max_i_1
       (.I0(transceiver_inst_n_57),
        .I1(transceiver_inst_n_58),
        .I2(transceiver_inst_n_59),
        .I3(transceiver_inst_n_56),
        .I4(transceiver_inst_n_40),
        .O(check_tlock_max_i_1_n_0));
  LUT4 #(
    .INIT(16'h3EFA)) 
    flag_i_1
       (.I0(transceiver_inst_n_21),
        .I1(transceiver_inst_n_77),
        .I2(transceiver_inst_n_76),
        .I3(transceiver_inst_n_78),
        .O(flag_i_1_n_0));
  LUT5 #(
    .INIT(32'hA3AEAFAA)) 
    flag_i_1__0
       (.I0(transceiver_inst_n_23),
        .I1(transceiver_inst_n_81),
        .I2(transceiver_inst_n_79),
        .I3(transceiver_inst_n_80),
        .I4(transceiver_inst_n_82),
        .O(flag_i_1__0_n_0));
  (* B_SHIFTER_ADDR = "8'b01010000" *) 
  (* C_1588 = "0" *) 
  (* C_COMPONENT_NAME = "gig_ethernet_pcs_pma_1" *) 
  (* C_DYNAMIC_SWITCHING = "FALSE" *) 
  (* C_ELABORATION_TRANSIENT_DIR = "BlankString" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_HAS_AN = "FALSE" *) 
  (* C_HAS_MDIO = "FALSE" *) 
  (* C_HAS_TEMAC = "TRUE" *) 
  (* C_IS_SGMII = "TRUE" *) 
  (* C_SGMII_FABRIC_BUFFER = "TRUE" *) 
  (* C_SGMII_PHY_MODE = "FALSE" *) 
  (* C_USE_LVDS = "FALSE" *) 
  (* C_USE_TBI = "FALSE" *) 
  (* C_USE_TRANSCEIVER = "TRUE" *) 
  (* DONT_TOUCH *) 
  (* GT_RX_BYTE_WIDTH = "1" *) 
  (* RX_GT_NOMINAL_LATENCY = "16'b0000000011001000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_v15_1_1 gig_ethernet_pcs_pma_1_core
       (.an_adv_config_val(1'b0),
        .an_adv_config_vector({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .an_enable(NLW_gig_ethernet_pcs_pma_1_core_an_enable_UNCONNECTED),
        .an_interrupt(NLW_gig_ethernet_pcs_pma_1_core_an_interrupt_UNCONNECTED),
        .an_restart_config(1'b0),
        .basex_or_sgmii(1'b0),
        .configuration_valid(1'b0),
        .configuration_vector(configuration_vector),
        .correction_timer({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dcm_locked(data_in),
        .drp_daddr(NLW_gig_ethernet_pcs_pma_1_core_drp_daddr_UNCONNECTED[8:0]),
        .drp_dclk(1'b0),
        .drp_den(NLW_gig_ethernet_pcs_pma_1_core_drp_den_UNCONNECTED),
        .drp_di(NLW_gig_ethernet_pcs_pma_1_core_drp_di_UNCONNECTED[15:0]),
        .drp_do({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_drdy(1'b0),
        .drp_dwe(NLW_gig_ethernet_pcs_pma_1_core_drp_dwe_UNCONNECTED),
        .drp_gnt(1'b0),
        .drp_req(NLW_gig_ethernet_pcs_pma_1_core_drp_req_UNCONNECTED),
        .en_cdet(NLW_gig_ethernet_pcs_pma_1_core_en_cdet_UNCONNECTED),
        .enablealign(enablealign),
        .ewrap(NLW_gig_ethernet_pcs_pma_1_core_ewrap_UNCONNECTED),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv_int),
        .gmii_rx_er(gmii_rx_er_int),
        .gmii_rxd(gmii_rxd_int),
        .gmii_tx_en(gmii_tx_en_int),
        .gmii_tx_er(gmii_tx_er_int),
        .gmii_txd(gmii_txd_int),
        .gtx_clk(1'b0),
        .link_timer_basex({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_sgmii({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_value({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .loc_ref(NLW_gig_ethernet_pcs_pma_1_core_loc_ref_UNCONNECTED),
        .mdc(1'b0),
        .mdio_in(1'b0),
        .mdio_out(NLW_gig_ethernet_pcs_pma_1_core_mdio_out_UNCONNECTED),
        .mdio_tri(NLW_gig_ethernet_pcs_pma_1_core_mdio_tri_UNCONNECTED),
        .mgt_rx_reset(mgt_rx_reset),
        .mgt_tx_reset(mgt_tx_reset),
        .phyad({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pma_rx_clk0(1'b0),
        .pma_rx_clk1(1'b0),
        .powerdown(powerdown),
        .reset(AR),
        .reset_done(resetdone),
        .rx_code_group0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_code_group1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rxbufstatus({rxbufstatus,1'b0}),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxclkcorcnt({rxclkcorcnt[2],rxclkcorcnt[2],rxclkcorcnt[0]}),
        .rxdata(rxdata),
        .rxdisperr(rxdisperr),
        .rxnotintable(rxnotintable),
        .rxphy_correction_timer(NLW_gig_ethernet_pcs_pma_1_core_rxphy_correction_timer_UNCONNECTED[63:0]),
        .rxphy_ns_field(NLW_gig_ethernet_pcs_pma_1_core_rxphy_ns_field_UNCONNECTED[31:0]),
        .rxphy_s_field(NLW_gig_ethernet_pcs_pma_1_core_rxphy_s_field_UNCONNECTED[47:0]),
        .rxrecclk(1'b0),
        .rxrundisp(rxrundisp),
        .signal_detect(signal_detect),
        .speed_selection(NLW_gig_ethernet_pcs_pma_1_core_speed_selection_UNCONNECTED[1:0]),
        .status_vector(status_vector),
        .systemtimer_ns_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .systemtimer_s_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_code_group(NLW_gig_ethernet_pcs_pma_1_core_tx_code_group_UNCONNECTED[9:0]),
        .txbuferr(txbuferr),
        .txchardispmode(txchardispmode),
        .txchardispval(txchardispval),
        .txcharisk(txcharisk),
        .txdata(txdata),
        .userclk(MMCM_RESET_reg),
        .userclk2(MMCM_RESET_reg));
  LUT3 #(
    .INIT(8'hEA)) 
    gt0_gtrxreset_gt_d1_i_1
       (.I0(\gtwizard_inst/inst/gt0_gtrxreset_t ),
        .I1(gt0_rxresetdone_out_i),
        .I2(rxreset_int),
        .O(\gtwizard_inst/inst/gt0_gtrxreset_gt ));
  LUT2 #(
    .INIT(4'hE)) 
    gthe2_i_i_1
       (.I0(\gtwizard_inst/inst/gtwizard_i/cpll_reset0_i ),
        .I1(\gtwizard_inst/inst/gt0_cpllreset_i ),
        .O(\gtwizard_inst/inst/gtwizard_i/gt0_cpllreset_i ));
  LUT3 #(
    .INIT(8'hEA)) 
    gthe2_i_i_4
       (.I0(\gtwizard_inst/inst/gt0_gttxreset_t ),
        .I1(gt0_txresetdone_out_i),
        .I2(txreset_int),
        .O(\gtwizard_inst/inst/gt0_gttxreset_gt ));
  LUT5 #(
    .INIT(32'hFEFF0004)) 
    gtrxreset_i_i_1
       (.I0(transceiver_inst_n_56),
        .I1(transceiver_inst_n_59),
        .I2(transceiver_inst_n_58),
        .I3(transceiver_inst_n_57),
        .I4(\gtwizard_inst/inst/gt0_gtrxreset_t ),
        .O(gtrxreset_i_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFD0004)) 
    gttxreset_i_i_1
       (.I0(transceiver_inst_n_53),
        .I1(transceiver_inst_n_55),
        .I2(transceiver_inst_n_52),
        .I3(transceiver_inst_n_54),
        .I4(\gtwizard_inst/inst/gt0_gttxreset_t ),
        .O(gttxreset_i_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    init_wait_done_i_1
       (.I0(transceiver_inst_n_118),
        .I1(\gtwizard_inst/inst/gt0_txresetfsm_i/init_wait_count_reg [7]),
        .I2(\gtwizard_inst/inst/gt0_txresetfsm_i/init_wait_count_reg [4]),
        .I3(\gtwizard_inst/inst/gt0_txresetfsm_i/init_wait_count_reg [5]),
        .I4(\gtwizard_inst/inst/gt0_txresetfsm_i/init_wait_count_reg [3]),
        .I5(transceiver_inst_n_24),
        .O(init_wait_done_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    init_wait_done_i_1__0
       (.I0(transceiver_inst_n_126),
        .I1(\gtwizard_inst/inst/gt0_rxresetfsm_i/init_wait_count_reg [4]),
        .I2(\gtwizard_inst/inst/gt0_rxresetfsm_i/init_wait_count_reg [0]),
        .I3(\gtwizard_inst/inst/gt0_rxresetfsm_i/init_wait_count_reg [2]),
        .I4(\gtwizard_inst/inst/gt0_rxresetfsm_i/init_wait_count_reg [1]),
        .I5(transceiver_inst_n_37),
        .O(init_wait_done_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    initialize_ram_complete_i_1
       (.I0(\rx_elastic_buffer_inst/initialize_counter_reg [3]),
        .I1(\rx_elastic_buffer_inst/initialize_counter_reg [0]),
        .I2(\rx_elastic_buffer_inst/initialize_counter_reg [1]),
        .I3(\rx_elastic_buffer_inst/initialize_counter_reg [2]),
        .I4(\rx_elastic_buffer_inst/initialize_counter_reg [4]),
        .I5(\rx_elastic_buffer_inst/initialize_ram_complete ),
        .O(initialize_ram_complete_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h4)) 
    initialize_ram_i_1
       (.I0(\rx_elastic_buffer_inst/initialize_ram_complete ),
        .I1(\rx_elastic_buffer_inst/initialize_ram ),
        .O(initialize_ram_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h02)) 
    insert_idle_i_1
       (.I0(\rx_elastic_buffer_inst/even ),
        .I1(transceiver_inst_n_136),
        .I2(\rx_elastic_buffer_inst/reset_modified ),
        .O(insert_idle_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    mmcm_lock_reclocked_i_1
       (.I0(\gtwizard_inst/inst/gt0_txresetfsm_i/mmcm_lock_reclocked ),
        .I1(\gtwizard_inst/inst/gt0_txresetfsm_i/mmcm_lock_count_reg [9]),
        .I2(transceiver_inst_n_105),
        .I3(\gtwizard_inst/inst/gt0_txresetfsm_i/mmcm_lock_count_reg [8]),
        .I4(\gtwizard_inst/inst/gt0_txresetfsm_i/mmcm_lock_i ),
        .O(mmcm_lock_reclocked_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    mmcm_lock_reclocked_i_1__0
       (.I0(\gtwizard_inst/inst/gt0_rxresetfsm_i/mmcm_lock_reclocked ),
        .I1(\gtwizard_inst/inst/gt0_rxresetfsm_i/mmcm_lock_count_reg [9]),
        .I2(transceiver_inst_n_106),
        .I3(\gtwizard_inst/inst/gt0_rxresetfsm_i/mmcm_lock_count_reg [8]),
        .I4(\gtwizard_inst/inst/gt0_rxresetfsm_i/mmcm_lock_i ),
        .O(mmcm_lock_reclocked_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hEFFFEFFF00100000)) 
    pll_reset_asserted_i_1
       (.I0(transceiver_inst_n_53),
        .I1(transceiver_inst_n_52),
        .I2(transceiver_inst_n_55),
        .I3(transceiver_inst_n_54),
        .I4(\gtwizard_inst/inst/gt0_txresetfsm_i/CPLL_RESET0 ),
        .I5(transceiver_inst_n_25),
        .O(pll_reset_asserted_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h08)) 
    rd_enable_i_1
       (.I0(\rx_elastic_buffer_inst/even ),
        .I1(transceiver_inst_n_136),
        .I2(\rx_elastic_buffer_inst/reset_modified ),
        .O(rd_enable_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    remove_idle_i_1
       (.I0(\rx_elastic_buffer_inst/wr_enable1 ),
        .I1(\rx_elastic_buffer_inst/initialize_ram_complete ),
        .I2(\rx_elastic_buffer_inst/remove_idle ),
        .O(remove_idle_i_1_n_0));
  LUT3 #(
    .INIT(8'h74)) 
    reset_modified_i_1
       (.I0(\rx_elastic_buffer_inst/initialize_ram_complete_sync_ris_edg ),
        .I1(\rx_elastic_buffer_inst/reset_modified ),
        .I2(mgt_rx_reset),
        .O(reset_modified_i_1_n_0));
  LUT6 #(
    .INIT(64'hEFEFEFAA202020AA)) 
    reset_time_out_i_1
       (.I0(\gtwizard_inst/inst/gt0_txresetfsm_i/reset_time_out ),
        .I1(transceiver_inst_n_52),
        .I2(transceiver_inst_n_55),
        .I3(transceiver_inst_n_53),
        .I4(transceiver_inst_n_54),
        .I5(\gtwizard_inst/reset_time_out ),
        .O(reset_time_out_i_1_n_0));
  LUT5 #(
    .INIT(32'hF1FFF100)) 
    reset_time_out_i_1__0
       (.I0(transceiver_inst_n_90),
        .I1(transceiver_inst_n_56),
        .I2(transceiver_inst_n_85),
        .I3(transceiver_inst_n_86),
        .I4(transceiver_inst_n_38),
        .O(reset_time_out_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    run_phase_alignment_int_i_1
       (.I0(transceiver_inst_n_52),
        .I1(transceiver_inst_n_55),
        .I2(transceiver_inst_n_53),
        .I3(transceiver_inst_n_54),
        .I4(transceiver_inst_n_35),
        .O(run_phase_alignment_int_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFD0010)) 
    run_phase_alignment_int_i_1__0
       (.I0(transceiver_inst_n_59),
        .I1(transceiver_inst_n_57),
        .I2(transceiver_inst_n_56),
        .I3(transceiver_inst_n_58),
        .I4(transceiver_inst_n_47),
        .O(run_phase_alignment_int_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h080808FF08080800)) 
    rx_fsm_reset_done_int_i_1
       (.I0(\gtwizard_inst/inst/gt0_rxresetfsm_i/data_valid_sync ),
        .I1(transceiver_inst_n_104),
        .I2(transceiver_inst_n_88),
        .I3(transceiver_inst_n_89),
        .I4(transceiver_inst_n_87),
        .I5(gt0_rxresetdone_out_i),
        .O(rx_fsm_reset_done_int_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    rxbuferr_i_1
       (.I0(\rx_elastic_buffer_inst/rxbuferr0 ),
        .I1(rxbufstatus),
        .O(rxbuferr_i_1_n_0));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sgmii_adapt sgmii_logic
       (.D(gmii_rxd_int),
        .MMCM_RESET_reg(MMCM_RESET_reg),
        .Q(gmii_txd_int),
        .SR(mgt_tx_reset),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_dv_int(gmii_rx_dv_int),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rx_er_int(gmii_rx_er_int),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_en_int(gmii_tx_en_int),
        .gmii_tx_er(gmii_tx_er),
        .gmii_tx_er_int(gmii_tx_er_int),
        .gmii_txd(gmii_txd),
        .sgmii_clk_en(sgmii_clk_en),
        .sgmii_clk_f(sgmii_clk_f),
        .sgmii_clk_r(sgmii_clk_r),
        .speed_is_100(speed_is_100),
        .speed_is_10_100(speed_is_10_100));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block sync_block_rx_reset_done
       (.MMCM_RESET_reg(MMCM_RESET_reg),
        .data_in(gt0_rxresetdone_out_i),
        .data_out(tx_reset_done_i),
        .resetdone(resetdone));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_0 sync_block_tx_reset_done
       (.MMCM_RESET_reg(MMCM_RESET_reg),
        .data_in(gt0_txresetdone_out_i),
        .data_out(tx_reset_done_i));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000010)) 
    time_out_100us_i_1
       (.I0(transceiver_inst_n_115),
        .I1(transceiver_inst_n_108),
        .I2(transceiver_inst_n_109),
        .I3(transceiver_inst_n_117),
        .I4(transceiver_inst_n_111),
        .I5(transceiver_inst_n_43),
        .O(time_out_100us_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    time_out_1us_i_1
       (.I0(transceiver_inst_n_127),
        .I1(transceiver_inst_n_116),
        .I2(transceiver_inst_n_128),
        .I3(transceiver_inst_n_112),
        .I4(transceiver_inst_n_44),
        .O(time_out_1us_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_out_2ms_i_1
       (.I0(\gtwizard_inst/inst/gt0_rxresetfsm_i/time_out_2ms ),
        .I1(transceiver_inst_n_39),
        .O(time_out_2ms_i_1_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    time_out_2ms_i_1__0
       (.I0(transceiver_inst_n_27),
        .I1(\gtwizard_inst/inst/gt0_txresetfsm_i/time_out_2ms ),
        .I2(\gtwizard_inst/reset_time_out ),
        .O(time_out_2ms_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h00AE)) 
    time_out_500us_i_1
       (.I0(transceiver_inst_n_30),
        .I1(transceiver_inst_n_124),
        .I2(transceiver_inst_n_121),
        .I3(\gtwizard_inst/reset_time_out ),
        .O(time_out_500us_i_1_n_0));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(transceiver_inst_n_36),
        .I1(transceiver_inst_n_138),
        .I2(\gtwizard_inst/tx_fsm_reset_done_int_s3 ),
        .I3(\gtwizard_inst/run_phase_alignment_int_s3 ),
        .O(time_out_wait_bypass_i_1_n_0));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1__0
       (.I0(transceiver_inst_n_48),
        .I1(\gtwizard_inst/rx_fsm_reset_done_int_s3 ),
        .I2(transceiver_inst_n_134),
        .I3(transceiver_inst_n_10),
        .O(time_out_wait_bypass_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF8800A800)) 
    time_tlock_max_i_1
       (.I0(transceiver_inst_n_40),
        .I1(transceiver_inst_n_107),
        .I2(\gtwizard_inst/inst/gt0_rxresetfsm_i/time_out_counter_reg ),
        .I3(transceiver_inst_n_110),
        .I4(transceiver_inst_n_114),
        .I5(\gtwizard_inst/inst/gt0_rxresetfsm_i/time_tlock_max ),
        .O(time_tlock_max_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAE)) 
    time_tlock_max_i_1__0
       (.I0(transceiver_inst_n_29),
        .I1(transceiver_inst_n_120),
        .I2(transceiver_inst_n_122),
        .I3(transceiver_inst_n_125),
        .I4(transceiver_inst_n_123),
        .I5(\gtwizard_inst/reset_time_out ),
        .O(time_tlock_max_i_1__0_n_0));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_transceiver transceiver_inst
       (.AR(AR),
        .CLK(CLK),
        .CPLL_RESET0(\gtwizard_inst/inst/gt0_txresetfsm_i/CPLL_RESET0 ),
        .D(\rx_elastic_buffer_inst/remove_idle ),
        .\FSM_sequential_rx_state_reg[0] ({transceiver_inst_n_56,transceiver_inst_n_57,transceiver_inst_n_58,transceiver_inst_n_59}),
        .\FSM_sequential_rx_state_reg[0]_0 (run_phase_alignment_int_i_1__0_n_0),
        .\FSM_sequential_rx_state_reg[2] (check_tlock_max_i_1_n_0),
        .\FSM_sequential_rx_state_reg[3] (transceiver_inst_n_39),
        .\FSM_sequential_rx_state_reg[3]_0 (reset_time_out_i_1__0_n_0),
        .\FSM_sequential_rx_state_reg[3]_1 (gtrxreset_i_i_1_n_0),
        .\FSM_sequential_rx_state_reg[3]_2 (RXUSERRDY_i_1_n_0),
        .\FSM_sequential_state_reg[0] (DRP_OP_DONE_i_1_n_0),
        .\FSM_sequential_tx_state_reg[0] (transceiver_inst_n_24),
        .\FSM_sequential_tx_state_reg[0]_0 (tx_fsm_reset_done_int_i_1_n_0),
        .\FSM_sequential_tx_state_reg[2] (transceiver_inst_n_27),
        .\FSM_sequential_tx_state_reg[2]_0 (pll_reset_asserted_i_1_n_0),
        .\FSM_sequential_tx_state_reg[2]_1 (gttxreset_i_i_1_n_0),
        .\FSM_sequential_tx_state_reg[2]_2 (MMCM_RESET_i_1_n_0),
        .\FSM_sequential_tx_state_reg[2]_3 (CPLL_RESET_i_1_n_0),
        .\FSM_sequential_tx_state_reg[3] (reset_time_out_i_1_n_0),
        .\FSM_sequential_tx_state_reg[3]_0 (TXUSERRDY_i_1_n_0),
        .\FSM_sequential_tx_state_reg[3]_1 (run_phase_alignment_int_i_1_n_0),
        .MMCM_RESET_reg(MMCM_RESET_reg_0),
        .MMCM_RESET_reg_0(MMCM_RESET_reg),
        .MMCM_RESET_reg_1(data_in),
        .Q(rxdata),
        .SR(mgt_tx_reset),
        .\USE_ROCKET_IO.TXCHARDISPMODE_reg (txchardispmode),
        .\USE_ROCKET_IO.TXCHARDISPVAL_reg (txchardispval),
        .\USE_ROCKET_IO.TXCHARISK_reg (txcharisk),
        .\USE_ROCKET_IO.TXDATA_reg[7] (txdata),
        .check_tlock_max_reg(time_tlock_max_i_1_n_0),
        .cpll_reset0_i(\gtwizard_inst/inst/gtwizard_i/cpll_reset0_i ),
        .\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95] ),
        .data_in(transceiver_inst_n_35),
        .data_out(\gtwizard_inst/inst/gt0_txresetfsm_i/mmcm_lock_i ),
        .data_sync_reg1(transceiver_inst_n_36),
        .data_sync_reg1_0(transceiver_inst_n_47),
        .data_sync_reg1_1(transceiver_inst_n_48),
        .data_sync_reg6(rx_fsm_reset_done_int_i_1_n_0),
        .drp_op_done(\gtwizard_inst/inst/gtwizard_i/gt0_GTWIZARD_i/drp_op_done ),
        .enablealign(enablealign),
        .even(\rx_elastic_buffer_inst/even ),
        .even_reg(rd_enable_i_1_n_0),
        .even_reg_0(insert_idle_i_1_n_0),
        .flag_reg(flag_i_1_n_0),
        .flag_reg_0(flag_i_1__0_n_0),
        .gt0_cpllreset_i(\gtwizard_inst/inst/gt0_cpllreset_i ),
        .gt0_cpllreset_i_3(\gtwizard_inst/inst/gtwizard_i/gt0_cpllreset_i ),
        .gt0_gtrxreset_gt(\gtwizard_inst/inst/gt0_gtrxreset_gt ),
        .gt0_gtrxreset_gt_d1_reg(rxreset_int),
        .gt0_gtrxreset_t(\gtwizard_inst/inst/gt0_gtrxreset_t ),
        .gt0_gttxreset_gt(\gtwizard_inst/inst/gt0_gttxreset_gt ),
        .gt0_gttxreset_t(\gtwizard_inst/inst/gt0_gttxreset_t ),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gt0_rxresetdone_out_i(gt0_rxresetdone_out_i),
        .gt0_rxuserrdy_i(\gtwizard_inst/inst/gt0_rxuserrdy_i ),
        .gt0_txresetdone_out_i(gt0_txresetdone_out_i),
        .gt0_txuserrdy_i(\gtwizard_inst/inst/gt0_txuserrdy_i ),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .\init_wait_count_reg[0] ({\gtwizard_inst/inst/gt0_txresetfsm_i/init_wait_count_reg [7],\gtwizard_inst/inst/gt0_txresetfsm_i/init_wait_count_reg [5:3]}),
        .\init_wait_count_reg[0]_0 ({\gtwizard_inst/inst/gt0_rxresetfsm_i/init_wait_count_reg [4],\gtwizard_inst/inst/gt0_rxresetfsm_i/init_wait_count_reg [2:0]}),
        .\init_wait_count_reg[0]_1 (transceiver_inst_n_118),
        .\init_wait_count_reg[0]_2 (transceiver_inst_n_126),
        .\init_wait_count_reg[4] (init_wait_done_i_1__0_n_0),
        .\init_wait_count_reg[7] (init_wait_done_i_1_n_0),
        .init_wait_done_reg(transceiver_inst_n_37),
        .\initialize_counter_reg[3] (initialize_ram_complete_i_1_n_0),
        .\initialize_counter_reg[4] (\rx_elastic_buffer_inst/initialize_counter_reg ),
        .initialize_ram(\rx_elastic_buffer_inst/initialize_ram ),
        .initialize_ram_complete(\rx_elastic_buffer_inst/initialize_ram_complete ),
        .initialize_ram_complete_reg(initialize_ram_i_1_n_0),
        .initialize_ram_complete_reg_0(remove_idle_i_1_n_0),
        .initialize_ram_complete_sync_ris_edg(\rx_elastic_buffer_inst/initialize_ram_complete_sync_ris_edg ),
        .initialize_ram_complete_sync_ris_edg_reg(reset_modified_i_1_n_0),
        .insert_idle_reg(transceiver_inst_n_136),
        .\mmcm_lock_count_reg[9] (\gtwizard_inst/inst/gt0_rxresetfsm_i/mmcm_lock_i ),
        .\mmcm_lock_count_reg[9]_0 (\gtwizard_inst/inst/gt0_txresetfsm_i/mmcm_lock_count_reg ),
        .\mmcm_lock_count_reg[9]_1 (\gtwizard_inst/inst/gt0_rxresetfsm_i/mmcm_lock_count_reg ),
        .\mmcm_lock_count_reg[9]_2 (transceiver_inst_n_105),
        .\mmcm_lock_count_reg[9]_3 (transceiver_inst_n_106),
        .mmcm_lock_reclocked(\gtwizard_inst/inst/gt0_txresetfsm_i/mmcm_lock_reclocked ),
        .mmcm_lock_reclocked_0(\gtwizard_inst/inst/gt0_rxresetfsm_i/mmcm_lock_reclocked ),
        .mmcm_lock_reclocked_reg(mmcm_lock_reclocked_i_1_n_0),
        .mmcm_lock_reclocked_reg_0(mmcm_lock_reclocked_i_1__0_n_0),
        .mmcm_reset(mmcm_reset),
        .out({transceiver_inst_n_52,transceiver_inst_n_53,transceiver_inst_n_54,transceiver_inst_n_55}),
        .pll_reset_asserted_reg(transceiver_inst_n_25),
        .powerdown(powerdown),
        .\rd_data_reg[0] (transceiver_inst_n_1),
        .\rd_data_reg[0]_0 ({transceiver_inst_n_76,transceiver_inst_n_77,transceiver_inst_n_78}),
        .\rd_data_reg[0]_1 ({transceiver_inst_n_79,transceiver_inst_n_80,transceiver_inst_n_81,transceiver_inst_n_82}),
        .\rd_data_reg[15] (transceiver_inst_n_21),
        .\rd_data_reg[15]_0 (transceiver_inst_n_23),
        .reset_modified(\rx_elastic_buffer_inst/reset_modified ),
        .reset_out(txreset_int),
        .reset_time_out(\gtwizard_inst/reset_time_out ),
        .reset_time_out_1(\gtwizard_inst/inst/gt0_txresetfsm_i/reset_time_out ),
        .reset_time_out_reg(transceiver_inst_n_85),
        .reset_time_out_reg_0(transceiver_inst_n_86),
        .reset_time_out_reg_1(transceiver_inst_n_90),
        .run_phase_alignment_int_s3(\gtwizard_inst/run_phase_alignment_int_s3 ),
        .rx_fsm_reset_done_int_reg(\gtwizard_inst/inst/gt0_rxresetfsm_i/data_valid_sync ),
        .rx_fsm_reset_done_int_reg_0(transceiver_inst_n_87),
        .rx_fsm_reset_done_int_reg_1(transceiver_inst_n_88),
        .rx_fsm_reset_done_int_reg_2(transceiver_inst_n_89),
        .rx_fsm_reset_done_int_reg_3(transceiver_inst_n_104),
        .rx_fsm_reset_done_int_s3(\gtwizard_inst/rx_fsm_reset_done_int_s3 ),
        .rxbuferr0(\rx_elastic_buffer_inst/rxbuferr0 ),
        .rxbuferr_reg(rxbuferr_i_1_n_0),
        .rxbufstatus(rxbufstatus),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxclkcorcnt({rxclkcorcnt[2],rxclkcorcnt[0]}),
        .rxdisperr(rxdisperr),
        .rxn(rxn),
        .rxnotintable(rxnotintable),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .rxreset(mgt_rx_reset),
        .rxrundisp(rxrundisp),
        .status_vector(status_vector[1]),
        .time_out_100us_reg(transceiver_inst_n_43),
        .time_out_100us_reg_0(transceiver_inst_n_108),
        .time_out_100us_reg_1(transceiver_inst_n_109),
        .time_out_100us_reg_2(transceiver_inst_n_111),
        .time_out_100us_reg_3(transceiver_inst_n_115),
        .time_out_100us_reg_4(transceiver_inst_n_117),
        .time_out_100us_reg_5(time_out_100us_i_1_n_0),
        .time_out_1us_reg(transceiver_inst_n_38),
        .time_out_1us_reg_0(transceiver_inst_n_44),
        .time_out_1us_reg_1(transceiver_inst_n_112),
        .time_out_1us_reg_2(transceiver_inst_n_116),
        .time_out_1us_reg_3(transceiver_inst_n_127),
        .time_out_1us_reg_4(transceiver_inst_n_128),
        .time_out_1us_reg_5(time_out_1us_i_1_n_0),
        .time_out_2ms(\gtwizard_inst/inst/gt0_rxresetfsm_i/time_out_2ms ),
        .time_out_2ms_2(\gtwizard_inst/inst/gt0_txresetfsm_i/time_out_2ms ),
        .time_out_2ms_reg(time_out_2ms_i_1__0_n_0),
        .time_out_2ms_reg_0(time_out_2ms_i_1_n_0),
        .time_out_500us_reg(transceiver_inst_n_30),
        .time_out_500us_reg_0(transceiver_inst_n_121),
        .time_out_500us_reg_1(transceiver_inst_n_124),
        .time_out_500us_reg_2(time_out_500us_i_1_n_0),
        .time_out_wait_bypass_reg(time_out_wait_bypass_i_1_n_0),
        .time_out_wait_bypass_reg_0(time_out_wait_bypass_i_1__0_n_0),
        .time_tlock_max(\gtwizard_inst/inst/gt0_rxresetfsm_i/time_tlock_max ),
        .time_tlock_max_reg(transceiver_inst_n_29),
        .time_tlock_max_reg_0(transceiver_inst_n_40),
        .time_tlock_max_reg_1(\gtwizard_inst/inst/gt0_rxresetfsm_i/time_out_counter_reg ),
        .time_tlock_max_reg_2(transceiver_inst_n_107),
        .time_tlock_max_reg_3(transceiver_inst_n_110),
        .time_tlock_max_reg_4(transceiver_inst_n_114),
        .time_tlock_max_reg_5(transceiver_inst_n_120),
        .time_tlock_max_reg_6(transceiver_inst_n_122),
        .time_tlock_max_reg_7(transceiver_inst_n_123),
        .time_tlock_max_reg_8(transceiver_inst_n_125),
        .time_tlock_max_reg_9(time_tlock_max_i_1__0_n_0),
        .tx_fsm_reset_done_int_s3(\gtwizard_inst/tx_fsm_reset_done_int_s3 ),
        .txbuferr(txbuferr),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .\wait_bypass_count_reg[0] (transceiver_inst_n_10),
        .\wait_bypass_count_reg[0]_0 (transceiver_inst_n_134),
        .\wait_bypass_count_reg[0]_1 (transceiver_inst_n_138),
        .wr_enable1(\rx_elastic_buffer_inst/wr_enable1 ));
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    tx_fsm_reset_done_int_i_1
       (.I0(transceiver_inst_n_55),
        .I1(transceiver_inst_n_52),
        .I2(transceiver_inst_n_53),
        .I3(transceiver_inst_n_54),
        .I4(gt0_txresetdone_out_i),
        .O(tx_fsm_reset_done_int_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_clk_gen" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_clk_gen
   (sgmii_clk_r,
    sgmii_clk_en,
    sgmii_clk_f,
    data_out,
    MMCM_RESET_reg,
    data_sync_reg6,
    reset_out);
  output sgmii_clk_r;
  output sgmii_clk_en;
  output sgmii_clk_f;
  input data_out;
  input MMCM_RESET_reg;
  input data_sync_reg6;
  input reset_out;

  wire MMCM_RESET_reg;
  wire clk12_5;
  wire clk12_5_reg;
  wire clk1_25;
  wire clk1_25_reg;
  wire clk_div1_n_1;
  wire clk_div1_n_2;
  wire clk_div1_n_3;
  wire clk_div2_n_1;
  wire clk_en_12_5_fall;
  wire clk_en_12_5_rise;
  wire clk_en_1_25_fall;
  wire data_out;
  wire data_sync_reg6;
  wire reset_fall;
  wire reset_out;
  wire sgmii_clk_en;
  wire sgmii_clk_en_i_1_n_0;
  wire sgmii_clk_f;
  wire sgmii_clk_r;
  wire sgmii_clk_r0_out;
  wire speed_is_100_fall;
  wire speed_is_10_100_fall;

  FDRE clk12_5_reg_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(clk12_5),
        .Q(clk12_5_reg),
        .R(reset_out));
  FDRE clk1_25_reg_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(clk1_25),
        .Q(clk1_25_reg),
        .R(reset_out));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_johnson_cntr clk_div1
       (.MMCM_RESET_reg(MMCM_RESET_reg),
        .clk12_5(clk12_5),
        .clk12_5_reg(clk12_5_reg),
        .clk1_25(clk1_25),
        .clk_en_12_5_fall_reg(clk_div1_n_1),
        .clk_en_12_5_rise_reg(clk_div1_n_2),
        .reset_fall(reset_fall),
        .reset_out(reset_out),
        .sgmii_clk_f_reg(clk_div1_n_3),
        .speed_is_100_fall(speed_is_100_fall),
        .speed_is_10_100_fall(speed_is_10_100_fall));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_johnson_cntr_38 clk_div2
       (.MMCM_RESET_reg(MMCM_RESET_reg),
        .clk12_5(clk12_5),
        .clk1_25(clk1_25),
        .clk1_25_reg(clk1_25_reg),
        .clk_en_12_5_rise(clk_en_12_5_rise),
        .clk_en_1_25_fall_reg(clk_div2_n_1),
        .data_out(data_out),
        .data_sync_reg6(data_sync_reg6),
        .reset_out(reset_out),
        .sgmii_clk_r0_out(sgmii_clk_r0_out));
  FDRE clk_en_12_5_fall_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(clk_div1_n_1),
        .Q(clk_en_12_5_fall),
        .R(reset_out));
  FDRE clk_en_12_5_rise_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(clk_div1_n_2),
        .Q(clk_en_12_5_rise),
        .R(reset_out));
  FDRE clk_en_1_25_fall_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(clk_div2_n_1),
        .Q(clk_en_1_25_fall),
        .R(reset_out));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    reset_fall_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(reset_out),
        .Q(reset_fall),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hE2FF)) 
    sgmii_clk_en_i_1
       (.I0(clk_en_1_25_fall),
        .I1(data_out),
        .I2(clk_en_12_5_fall),
        .I3(data_sync_reg6),
        .O(sgmii_clk_en_i_1_n_0));
  FDRE sgmii_clk_en_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(sgmii_clk_en_i_1_n_0),
        .Q(sgmii_clk_en),
        .R(reset_out));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    sgmii_clk_f_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(clk_div1_n_3),
        .Q(sgmii_clk_f),
        .R(1'b0));
  FDRE sgmii_clk_r_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(sgmii_clk_r0_out),
        .Q(sgmii_clk_r),
        .R(reset_out));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    speed_is_100_fall_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_out),
        .Q(speed_is_100_fall),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    speed_is_10_100_fall_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync_reg6),
        .Q(speed_is_10_100_fall),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_clocking" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_clocking
   (gtrefclk,
    gtrefclk_bufg,
    mmcm_locked,
    userclk,
    userclk2,
    rxuserclk,
    gtrefclk_p,
    gtrefclk_n,
    txoutclk,
    mmcm_reset,
    rxoutclk);
  output gtrefclk;
  output gtrefclk_bufg;
  output mmcm_locked;
  output userclk;
  output userclk2;
  output rxuserclk;
  input gtrefclk_p;
  input gtrefclk_n;
  input txoutclk;
  input mmcm_reset;
  input rxoutclk;

  wire clkfbout;
  wire clkout0;
  wire clkout1;
  wire gtrefclk;
  wire gtrefclk_bufg;
  wire gtrefclk_n;
  wire gtrefclk_p;
  wire mmcm_locked;
  wire mmcm_reset;
  wire rxoutclk;
  wire rxuserclk;
  wire txoutclk;
  wire txoutclk_bufg;
  wire userclk;
  wire userclk2;
  wire NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG bufg_gtrefclk
       (.I(gtrefclk),
        .O(gtrefclk_bufg));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG bufg_txoutclk
       (.I(txoutclk),
        .O(txoutclk_bufg));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG bufg_userclk
       (.I(clkout1),
        .O(userclk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG bufg_userclk2
       (.I(clkout0),
        .O(userclk2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_GTE2 #(
    .CLKCM_CFG("TRUE"),
    .CLKRCV_TRST("TRUE"),
    .CLKSWING_CFG(2'b11)) 
    ibufds_gtrefclk
       (.CEB(1'b0),
        .I(gtrefclk_p),
        .IB(gtrefclk_n),
        .O(gtrefclk),
        .ODIV2(NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(16.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(16.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(8.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(16),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout),
        .CLKFBOUT(clkfbout),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(txoutclk_bufg),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clkout0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clkout1),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(mmcm_locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(mmcm_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG rxrecclkbufg
       (.I(rxoutclk),
        .O(rxuserclk));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_cpll_railing" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_cpll_railing
   (cpll_reset0_i,
    gt0_cpllpd_i,
    CLK);
  output cpll_reset0_i;
  output gt0_cpllpd_i;
  input CLK;

  wire CLK;
  wire cpll_reset0_i;
  wire \cpllpd_wait_reg[31]_srl32_n_1 ;
  wire \cpllpd_wait_reg[63]_srl32_n_1 ;
  wire \cpllpd_wait_reg[94]_srl31_n_0 ;
  wire \cpllreset_wait_reg[126]_srl31_n_0 ;
  wire \cpllreset_wait_reg[31]_srl32_n_1 ;
  wire \cpllreset_wait_reg[63]_srl32_n_1 ;
  wire \cpllreset_wait_reg[95]_srl32_n_1 ;
  wire gt0_cpllpd_i;
  wire \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ;

  (* srl_bus_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg " *) 
  (* srl_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg[31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
    \cpllpd_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(CLK),
        .D(1'b0),
        .Q(\NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllpd_wait_reg[31]_srl32_n_1 ));
  (* srl_bus_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg " *) 
  (* srl_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg[63]_srl32 " *) 
  SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
    \cpllpd_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(CLK),
        .D(\cpllpd_wait_reg[31]_srl32_n_1 ),
        .Q(\NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllpd_wait_reg[63]_srl32_n_1 ));
  (* srl_bus_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg " *) 
  (* srl_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg[94]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h7FFFFFFF)) 
    \cpllpd_wait_reg[94]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(\cpllpd_wait_reg[63]_srl32_n_1 ),
        .Q(\cpllpd_wait_reg[94]_srl31_n_0 ),
        .Q31(\NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \cpllpd_wait_reg[95] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[94]_srl31_n_0 ),
        .Q(gt0_cpllpd_i),
        .R(1'b0));
  (* srl_bus_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg " *) 
  (* srl_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg[126]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[126]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(\cpllreset_wait_reg[95]_srl32_n_1 ),
        .Q(\cpllreset_wait_reg[126]_srl31_n_0 ),
        .Q31(\NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cpllreset_wait_reg[127] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cpllreset_wait_reg[126]_srl31_n_0 ),
        .Q(cpll_reset0_i),
        .R(1'b0));
  (* srl_bus_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg " *) 
  (* srl_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg[31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h000000FF)) 
    \cpllreset_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(CLK),
        .D(1'b0),
        .Q(\NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[31]_srl32_n_1 ));
  (* srl_bus_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg " *) 
  (* srl_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg[63]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(CLK),
        .D(\cpllreset_wait_reg[31]_srl32_n_1 ),
        .Q(\NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[63]_srl32_n_1 ));
  (* srl_bus_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg " *) 
  (* srl_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg[95]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[95]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(CLK),
        .D(\cpllreset_wait_reg[63]_srl32_n_1 ),
        .Q(\NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[95]_srl32_n_1 ));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_gt_common" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_gt_common
   (gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    gtrefclk_out,
    independent_clock_bufg,
    pma_reset_out);
  output gt0_qplloutclk_out;
  output gt0_qplloutrefclk_out;
  input gtrefclk_out;
  input independent_clock_bufg;
  input pma_reset_out;

  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gthe2_common_i_n_2;
  wire gthe2_common_i_n_5;
  wire gtrefclk_out;
  wire independent_clock_bufg;
  wire pma_reset_out;
  wire NLW_gthe2_common_i_DRPRDY_UNCONNECTED;
  wire NLW_gthe2_common_i_QPLLFBCLKLOST_UNCONNECTED;
  wire NLW_gthe2_common_i_REFCLKOUTMONITOR_UNCONNECTED;
  wire [15:0]NLW_gthe2_common_i_DRPDO_UNCONNECTED;
  wire [15:0]NLW_gthe2_common_i_PMARSVDOUT_UNCONNECTED;
  wire [7:0]NLW_gthe2_common_i_QPLLDMONITOR_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTHE2_COMMON #(
    .BIAS_CFG(64'h0000040000001050),
    .COMMON_CFG(32'h0000001C),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_QPLLLOCKDETCLK_INVERTED(1'b0),
    .QPLL_CFG(27'h04801C7),
    .QPLL_CLKOUT_CFG(4'b1111),
    .QPLL_COARSE_FREQ_OVRD(6'b010000),
    .QPLL_COARSE_FREQ_OVRD_EN(1'b0),
    .QPLL_CP(10'b0000011111),
    .QPLL_CP_MONITOR_EN(1'b0),
    .QPLL_DMONITOR_SEL(1'b0),
    .QPLL_FBDIV(10'b0000100000),
    .QPLL_FBDIV_MONITOR_EN(1'b0),
    .QPLL_FBDIV_RATIO(1'b1),
    .QPLL_INIT_CFG(24'h000006),
    .QPLL_LOCK_CFG(16'h05E8),
    .QPLL_LPF(4'b1111),
    .QPLL_REFCLK_DIV(1),
    .QPLL_RP_COMP(1'b0),
    .QPLL_VTRL_RESET(2'b00),
    .RCAL_CFG(2'b00),
    .RSVD_ATTR0(16'h0000),
    .RSVD_ATTR1(16'h0000),
    .SIM_QPLLREFCLK_SEL(3'b001),
    .SIM_RESET_SPEEDUP("FALSE"),
    .SIM_VERSION("2.0")) 
    gthe2_common_i
       (.BGBYPASSB(1'b1),
        .BGMONITORENB(1'b1),
        .BGPDB(1'b1),
        .BGRCALOVRD({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BGRCALOVRDENB(1'b1),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPCLK(1'b0),
        .DRPDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO(NLW_gthe2_common_i_DRPDO_UNCONNECTED[15:0]),
        .DRPEN(1'b0),
        .DRPRDY(NLW_gthe2_common_i_DRPRDY_UNCONNECTED),
        .DRPWE(1'b0),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(gtrefclk_out),
        .GTREFCLK1(1'b0),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .PMARSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDOUT(NLW_gthe2_common_i_PMARSVDOUT_UNCONNECTED[15:0]),
        .QPLLDMONITOR(NLW_gthe2_common_i_QPLLDMONITOR_UNCONNECTED[7:0]),
        .QPLLFBCLKLOST(NLW_gthe2_common_i_QPLLFBCLKLOST_UNCONNECTED),
        .QPLLLOCK(gthe2_common_i_n_2),
        .QPLLLOCKDETCLK(independent_clock_bufg),
        .QPLLLOCKEN(1'b1),
        .QPLLOUTCLK(gt0_qplloutclk_out),
        .QPLLOUTREFCLK(gt0_qplloutrefclk_out),
        .QPLLOUTRESET(1'b0),
        .QPLLPD(1'b1),
        .QPLLREFCLKLOST(gthe2_common_i_n_5),
        .QPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .QPLLRESET(pma_reset_out),
        .QPLLRSVD1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLRSVD2({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RCALENB(1'b1),
        .REFCLKOUTMONITOR(NLW_gthe2_common_i_REFCLKOUTMONITOR_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_gtwizard_gtrxreset_seq" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_gtwizard_gtrxreset_seq
   (gtrxreset_out,
    \rd_data_reg[15]_0 ,
    drp_busy_i1_reg,
    out,
    drp_busy_i1_reg_0,
    Q,
    CLK,
    flag_reg_0,
    \FSM_sequential_state_reg[0]_0 ,
    \cpllpd_wait_reg[95] ,
    SR,
    data_in,
    CPLL_RESET_reg,
    D);
  output gtrxreset_out;
  output \rd_data_reg[15]_0 ;
  output drp_busy_i1_reg;
  output [2:0]out;
  output drp_busy_i1_reg_0;
  output [15:0]Q;
  input CLK;
  input flag_reg_0;
  input \FSM_sequential_state_reg[0]_0 ;
  input \cpllpd_wait_reg[95] ;
  input [0:0]SR;
  input data_in;
  input CPLL_RESET_reg;
  input [15:0]D;

  wire CLK;
  wire CPLL_RESET_reg;
  wire [15:0]D;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [15:0]Q;
  wire [0:0]SR;
  wire \cpllpd_wait_reg[95] ;
  wire data_in;
  wire drp_busy_i1_reg;
  wire drp_busy_i1_reg_0;
  wire flag_reg_0;
  wire gtrxreset_i;
  wire gtrxreset_in_sync;
  wire gtrxreset_out;
  wire gtrxreset_s;
  wire gtrxreset_ss;
  wire next_rd_data;
  wire [15:0]original_rd_data;
  wire original_rd_data0;
  (* RTL_KEEP = "yes" *) wire [2:0]out;
  wire \rd_data[0]_i_1_n_0 ;
  wire \rd_data[10]_i_1_n_0 ;
  wire \rd_data[11]_i_1_n_0 ;
  wire \rd_data[12]_i_1_n_0 ;
  wire \rd_data[13]_i_1_n_0 ;
  wire \rd_data[14]_i_1_n_0 ;
  wire \rd_data[15]_i_2_n_0 ;
  wire \rd_data[1]_i_1_n_0 ;
  wire \rd_data[2]_i_1_n_0 ;
  wire \rd_data[3]_i_1_n_0 ;
  wire \rd_data[4]_i_1_n_0 ;
  wire \rd_data[5]_i_1_n_0 ;
  wire \rd_data[6]_i_1_n_0 ;
  wire \rd_data[7]_i_1_n_0 ;
  wire \rd_data[8]_i_1_n_0 ;
  wire \rd_data[9]_i_1_n_0 ;
  wire \rd_data_reg[15]_0 ;
  wire rst_sync;
  wire rxpmaresetdone_s;
  wire rxpmaresetdone_ss;
  wire rxpmaresetdone_sss;
  wire rxpmaresetdone_sync;

  FDCE DRP_OP_DONE_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(gtrxreset_ss),
        .D(\FSM_sequential_state_reg[0]_0 ),
        .Q(drp_busy_i1_reg));
  LUT6 #(
    .INIT(64'h4040EBE87070EBE8)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\cpllpd_wait_reg[95] ),
        .I1(out[1]),
        .I2(out[2]),
        .I3(gtrxreset_ss),
        .I4(out[0]),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(rxpmaresetdone_sss),
        .I1(rxpmaresetdone_ss),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FFF0F40F040F0)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(rxpmaresetdone_ss),
        .I1(rxpmaresetdone_sss),
        .I2(out[0]),
        .I3(out[2]),
        .I4(\cpllpd_wait_reg[95] ),
        .I5(out[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FC0)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\cpllpd_wait_reg[95] ),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(out[0]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(out[1]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(out[2]));
  LUT1 #(
    .INIT(2'h1)) 
    drp_busy_i1_i_1
       (.I0(drp_busy_i1_reg),
        .O(drp_busy_i1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    flag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(flag_reg_0),
        .Q(\rd_data_reg[15]_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7366)) 
    gtrxreset_o_i_1
       (.I0(out[1]),
        .I1(out[2]),
        .I2(gtrxreset_ss),
        .I3(out[0]),
        .O(gtrxreset_i));
  FDCE gtrxreset_o_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(gtrxreset_i),
        .Q(gtrxreset_out));
  FDCE gtrxreset_s_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(gtrxreset_in_sync),
        .Q(gtrxreset_s));
  FDCE gtrxreset_ss_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(gtrxreset_s),
        .Q(gtrxreset_ss));
  LUT5 #(
    .INIT(32'h00100000)) 
    \original_rd_data[15]_i_1 
       (.I0(\rd_data_reg[15]_0 ),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(\cpllpd_wait_reg[95] ),
        .O(original_rd_data0));
  FDRE \original_rd_data_reg[0] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[0]),
        .Q(original_rd_data[0]),
        .R(1'b0));
  FDRE \original_rd_data_reg[10] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[10]),
        .Q(original_rd_data[10]),
        .R(1'b0));
  FDRE \original_rd_data_reg[11] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[11]),
        .Q(original_rd_data[11]),
        .R(1'b0));
  FDRE \original_rd_data_reg[12] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[12]),
        .Q(original_rd_data[12]),
        .R(1'b0));
  FDRE \original_rd_data_reg[13] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[13]),
        .Q(original_rd_data[13]),
        .R(1'b0));
  FDRE \original_rd_data_reg[14] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[14]),
        .Q(original_rd_data[14]),
        .R(1'b0));
  FDRE \original_rd_data_reg[15] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[15]),
        .Q(original_rd_data[15]),
        .R(1'b0));
  FDRE \original_rd_data_reg[1] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[1]),
        .Q(original_rd_data[1]),
        .R(1'b0));
  FDRE \original_rd_data_reg[2] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[2]),
        .Q(original_rd_data[2]),
        .R(1'b0));
  FDRE \original_rd_data_reg[3] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[3]),
        .Q(original_rd_data[3]),
        .R(1'b0));
  FDRE \original_rd_data_reg[4] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[4]),
        .Q(original_rd_data[4]),
        .R(1'b0));
  FDRE \original_rd_data_reg[5] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[5]),
        .Q(original_rd_data[5]),
        .R(1'b0));
  FDRE \original_rd_data_reg[6] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[6]),
        .Q(original_rd_data[6]),
        .R(1'b0));
  FDRE \original_rd_data_reg[7] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[7]),
        .Q(original_rd_data[7]),
        .R(1'b0));
  FDRE \original_rd_data_reg[8] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[8]),
        .Q(original_rd_data[8]),
        .R(1'b0));
  FDRE \original_rd_data_reg[9] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[9]),
        .Q(original_rd_data[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[0]_i_1 
       (.I0(D[0]),
        .I1(original_rd_data[0]),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[10]_i_1 
       (.I0(D[10]),
        .I1(original_rd_data[10]),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[11]_i_1 
       (.I0(D[11]),
        .I1(original_rd_data[11]),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[12]_i_1 
       (.I0(D[12]),
        .I1(original_rd_data[12]),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[13]_i_1 
       (.I0(D[13]),
        .I1(original_rd_data[13]),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[14]_i_1 
       (.I0(D[14]),
        .I1(original_rd_data[14]),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \rd_data[15]_i_1 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(\cpllpd_wait_reg[95] ),
        .O(next_rd_data));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[15]_i_2 
       (.I0(D[15]),
        .I1(original_rd_data[15]),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[1]_i_1 
       (.I0(D[1]),
        .I1(original_rd_data[1]),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[2]_i_1 
       (.I0(D[2]),
        .I1(original_rd_data[2]),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[3]_i_1 
       (.I0(D[3]),
        .I1(original_rd_data[3]),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[4]_i_1 
       (.I0(D[4]),
        .I1(original_rd_data[4]),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[5]_i_1 
       (.I0(D[5]),
        .I1(original_rd_data[5]),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[6]_i_1 
       (.I0(D[6]),
        .I1(original_rd_data[6]),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[7]_i_1 
       (.I0(D[7]),
        .I1(original_rd_data[7]),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[8]_i_1 
       (.I0(D[8]),
        .I1(original_rd_data[8]),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[9]_i_1 
       (.I0(D[9]),
        .I1(original_rd_data[9]),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[9]_i_1_n_0 ));
  FDCE \rd_data_reg[0] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \rd_data_reg[10] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[10]_i_1_n_0 ),
        .Q(Q[10]));
  FDCE \rd_data_reg[11] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[11]_i_1_n_0 ),
        .Q(Q[11]));
  FDCE \rd_data_reg[12] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[12]_i_1_n_0 ),
        .Q(Q[12]));
  FDCE \rd_data_reg[13] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[13]_i_1_n_0 ),
        .Q(Q[13]));
  FDCE \rd_data_reg[14] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[14]_i_1_n_0 ),
        .Q(Q[14]));
  FDCE \rd_data_reg[15] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[15]_i_2_n_0 ),
        .Q(Q[15]));
  FDCE \rd_data_reg[1] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \rd_data_reg[2] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \rd_data_reg[3] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE \rd_data_reg[4] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE \rd_data_reg[5] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE \rd_data_reg[6] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[6]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE \rd_data_reg[7] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[7]_i_1_n_0 ),
        .Q(Q[7]));
  FDCE \rd_data_reg[8] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[8]_i_1_n_0 ),
        .Q(Q[8]));
  FDCE \rd_data_reg[9] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[9]_i_1_n_0 ),
        .Q(Q[9]));
  FDCE rxpmaresetdone_s_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(rxpmaresetdone_sync),
        .Q(rxpmaresetdone_s));
  FDCE rxpmaresetdone_ss_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(rxpmaresetdone_s),
        .Q(rxpmaresetdone_ss));
  FDCE rxpmaresetdone_sss_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(rxpmaresetdone_ss),
        .Q(rxpmaresetdone_sss));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_19 sync_gtrxreset_in
       (.CLK(CLK),
        .SR(SR),
        .reset_out(gtrxreset_in_sync));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_20 sync_rst
       (.CLK(CLK),
        .CPLL_RESET_reg(CPLL_RESET_reg),
        .reset_out(rst_sync));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_21 sync_rxpmaresetdone
       (.CLK(CLK),
        .data_in(data_in),
        .data_out(rxpmaresetdone_sync));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_gtwizard_rxpmarst_seq" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_gtwizard_rxpmarst_seq
   (rxpmareset_out,
    \rd_data_reg[15]_0 ,
    out,
    DRPADDR,
    Q,
    CLK,
    flag_reg_0,
    \cpllpd_wait_reg[95] ,
    drp_busy_i1,
    DRP_OP_DONE_reg,
    CPLL_RESET_reg,
    data_in,
    D);
  output rxpmareset_out;
  output \rd_data_reg[15]_0 ;
  output [3:0]out;
  output [0:0]DRPADDR;
  output [15:0]Q;
  input CLK;
  input flag_reg_0;
  input \cpllpd_wait_reg[95] ;
  input drp_busy_i1;
  input DRP_OP_DONE_reg;
  input CPLL_RESET_reg;
  input data_in;
  input [15:0]D;

  wire CLK;
  wire CPLL_RESET_reg;
  wire [15:0]D;
  wire [0:0]DRPADDR;
  wire DRP_OP_DONE_reg;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire [15:0]Q;
  wire \cpllpd_wait_reg[95] ;
  wire data_in;
  wire drp_busy_i1;
  wire flag_reg_0;
  wire next_rd_data;
  wire original_rd_data0;
  wire \original_rd_data_reg_n_0_[0] ;
  wire \original_rd_data_reg_n_0_[10] ;
  wire \original_rd_data_reg_n_0_[11] ;
  wire \original_rd_data_reg_n_0_[12] ;
  wire \original_rd_data_reg_n_0_[13] ;
  wire \original_rd_data_reg_n_0_[14] ;
  wire \original_rd_data_reg_n_0_[15] ;
  wire \original_rd_data_reg_n_0_[1] ;
  wire \original_rd_data_reg_n_0_[2] ;
  wire \original_rd_data_reg_n_0_[3] ;
  wire \original_rd_data_reg_n_0_[4] ;
  wire \original_rd_data_reg_n_0_[5] ;
  wire \original_rd_data_reg_n_0_[6] ;
  wire \original_rd_data_reg_n_0_[7] ;
  wire \original_rd_data_reg_n_0_[8] ;
  wire \original_rd_data_reg_n_0_[9] ;
  (* RTL_KEEP = "yes" *) wire [3:0]out;
  wire \rd_data[0]_i_1_n_0 ;
  wire \rd_data[10]_i_1_n_0 ;
  wire \rd_data[11]_i_1_n_0 ;
  wire \rd_data[12]_i_1_n_0 ;
  wire \rd_data[13]_i_1_n_0 ;
  wire \rd_data[14]_i_1_n_0 ;
  wire \rd_data[15]_i_2_n_0 ;
  wire \rd_data[1]_i_1_n_0 ;
  wire \rd_data[2]_i_1_n_0 ;
  wire \rd_data[3]_i_1_n_0 ;
  wire \rd_data[4]_i_1_n_0 ;
  wire \rd_data[5]_i_1_n_0 ;
  wire \rd_data[6]_i_1_n_0 ;
  wire \rd_data[7]_i_1_n_0 ;
  wire \rd_data[8]_i_1_n_0 ;
  wire \rd_data[9]_i_1_n_0 ;
  wire \rd_data_reg[15]_0 ;
  wire rst_sync;
  wire rxpmareset_i;
  wire rxpmareset_out;
  wire rxpmaresetdone_ss;

  LUT6 #(
    .INIT(64'h0555050045400000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(out[3]),
        .I1(rxpmaresetdone_ss),
        .I2(out[0]),
        .I3(\cpllpd_wait_reg[95] ),
        .I4(out[2]),
        .I5(out[1]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0414441414145414)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(out[3]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(\cpllpd_wait_reg[95] ),
        .I5(rxpmaresetdone_ss),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h14544444)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(\cpllpd_wait_reg[95] ),
        .I4(out[0]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\cpllpd_wait_reg[95] ),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[3]),
        .I4(out[1]),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(out[0]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(out[1]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(out[2]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_sequential_state[3]_i_1_n_0 ),
        .Q(out[3]));
  FDRE #(
    .INIT(1'b0)) 
    flag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(flag_reg_0),
        .Q(\rd_data_reg[15]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000FFAEFFFFFFFF)) 
    gthe2_i_i_21
       (.I0(out[2]),
        .I1(out[0]),
        .I2(drp_busy_i1),
        .I3(out[1]),
        .I4(out[3]),
        .I5(DRP_OP_DONE_reg),
        .O(DRPADDR));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \original_rd_data[15]_i_1__0 
       (.I0(\rd_data_reg[15]_0 ),
        .I1(out[2]),
        .I2(out[3]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\cpllpd_wait_reg[95] ),
        .O(original_rd_data0));
  FDRE \original_rd_data_reg[0] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[0]),
        .Q(\original_rd_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \original_rd_data_reg[10] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[10]),
        .Q(\original_rd_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \original_rd_data_reg[11] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[11]),
        .Q(\original_rd_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \original_rd_data_reg[12] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[12]),
        .Q(\original_rd_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \original_rd_data_reg[13] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[13]),
        .Q(\original_rd_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \original_rd_data_reg[14] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[14]),
        .Q(\original_rd_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \original_rd_data_reg[15] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[15]),
        .Q(\original_rd_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \original_rd_data_reg[1] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[1]),
        .Q(\original_rd_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \original_rd_data_reg[2] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[2]),
        .Q(\original_rd_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \original_rd_data_reg[3] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[3]),
        .Q(\original_rd_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \original_rd_data_reg[4] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[4]),
        .Q(\original_rd_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \original_rd_data_reg[5] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[5]),
        .Q(\original_rd_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \original_rd_data_reg[6] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[6]),
        .Q(\original_rd_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \original_rd_data_reg[7] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[7]),
        .Q(\original_rd_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \original_rd_data_reg[8] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[8]),
        .Q(\original_rd_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \original_rd_data_reg[9] 
       (.C(CLK),
        .CE(original_rd_data0),
        .D(D[9]),
        .Q(\original_rd_data_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[0]_i_1 
       (.I0(D[0]),
        .I1(\original_rd_data_reg_n_0_[0] ),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[10]_i_1 
       (.I0(D[10]),
        .I1(\original_rd_data_reg_n_0_[10] ),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[11]_i_1 
       (.I0(D[11]),
        .I1(\original_rd_data_reg_n_0_[11] ),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[12]_i_1 
       (.I0(D[12]),
        .I1(\original_rd_data_reg_n_0_[12] ),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[13]_i_1 
       (.I0(D[13]),
        .I1(\original_rd_data_reg_n_0_[13] ),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[14]_i_1 
       (.I0(D[14]),
        .I1(\original_rd_data_reg_n_0_[14] ),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \rd_data[15]_i_1__0 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(out[0]),
        .I4(out[3]),
        .O(next_rd_data));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[15]_i_2 
       (.I0(D[15]),
        .I1(\original_rd_data_reg_n_0_[15] ),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[1]_i_1 
       (.I0(D[1]),
        .I1(\original_rd_data_reg_n_0_[1] ),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[2]_i_1 
       (.I0(D[2]),
        .I1(\original_rd_data_reg_n_0_[2] ),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[3]_i_1 
       (.I0(D[3]),
        .I1(\original_rd_data_reg_n_0_[3] ),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[4]_i_1 
       (.I0(D[4]),
        .I1(\original_rd_data_reg_n_0_[4] ),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[5]_i_1 
       (.I0(D[5]),
        .I1(\original_rd_data_reg_n_0_[5] ),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[6]_i_1 
       (.I0(D[6]),
        .I1(\original_rd_data_reg_n_0_[6] ),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[7]_i_1 
       (.I0(D[7]),
        .I1(\original_rd_data_reg_n_0_[7] ),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[8]_i_1 
       (.I0(D[8]),
        .I1(\original_rd_data_reg_n_0_[8] ),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \rd_data[9]_i_1 
       (.I0(D[9]),
        .I1(\original_rd_data_reg_n_0_[9] ),
        .I2(\cpllpd_wait_reg[95] ),
        .I3(\rd_data_reg[15]_0 ),
        .O(\rd_data[9]_i_1_n_0 ));
  FDCE \rd_data_reg[0] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \rd_data_reg[10] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[10]_i_1_n_0 ),
        .Q(Q[10]));
  FDCE \rd_data_reg[11] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[11]_i_1_n_0 ),
        .Q(Q[11]));
  FDCE \rd_data_reg[12] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[12]_i_1_n_0 ),
        .Q(Q[12]));
  FDCE \rd_data_reg[13] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[13]_i_1_n_0 ),
        .Q(Q[13]));
  FDCE \rd_data_reg[14] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[14]_i_1_n_0 ),
        .Q(Q[14]));
  FDCE \rd_data_reg[15] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[15]_i_2_n_0 ),
        .Q(Q[15]));
  FDCE \rd_data_reg[1] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \rd_data_reg[2] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \rd_data_reg[3] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE \rd_data_reg[4] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE \rd_data_reg[5] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE \rd_data_reg[6] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[6]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE \rd_data_reg[7] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[7]_i_1_n_0 ),
        .Q(Q[7]));
  FDCE \rd_data_reg[8] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[8]_i_1_n_0 ),
        .Q(Q[8]));
  FDCE \rd_data_reg[9] 
       (.C(CLK),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[9]_i_1_n_0 ),
        .Q(Q[9]));
  LUT3 #(
    .INIT(8'h20)) 
    rxpmareset_o_i_1
       (.I0(out[0]),
        .I1(out[3]),
        .I2(out[2]),
        .O(rxpmareset_i));
  FDCE rxpmareset_o_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(rxpmareset_i),
        .Q(rxpmareset_out));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_18 sync_RXPMARESETDONE
       (.CLK(CLK),
        .data_in(data_in),
        .data_out(rxpmaresetdone_ss));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync__parameterized0 sync_rst
       (.CLK(CLK),
        .CPLL_RESET_reg(CPLL_RESET_reg),
        .reset_out(rst_sync));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_johnson_cntr" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_johnson_cntr
   (clk12_5,
    clk_en_12_5_fall_reg,
    clk_en_12_5_rise_reg,
    sgmii_clk_f_reg,
    MMCM_RESET_reg,
    clk12_5_reg,
    speed_is_10_100_fall,
    speed_is_100_fall,
    clk1_25,
    reset_fall,
    reset_out);
  output clk12_5;
  output clk_en_12_5_fall_reg;
  output clk_en_12_5_rise_reg;
  output sgmii_clk_f_reg;
  input MMCM_RESET_reg;
  input clk12_5_reg;
  input speed_is_10_100_fall;
  input speed_is_100_fall;
  input clk1_25;
  input reset_fall;
  input reset_out;

  wire MMCM_RESET_reg;
  wire clk12_5;
  wire clk12_5_reg;
  wire clk1_25;
  wire clk_en_12_5_fall_reg;
  wire clk_en_12_5_rise_reg;
  wire p_0_in__6;
  wire reg1;
  wire reg2;
  wire reg4;
  wire reg5;
  wire reg5_reg_n_0;
  wire reset_fall;
  wire reset_out;
  wire sgmii_clk_f_reg;
  wire speed_is_100_fall;
  wire speed_is_10_100_fall;

  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    clk_en_12_5_fall_i_1
       (.I0(clk12_5_reg),
        .I1(clk12_5),
        .O(clk_en_12_5_fall_reg));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    clk_en_12_5_rise_i_1
       (.I0(clk12_5),
        .I1(clk12_5_reg),
        .O(clk_en_12_5_rise_reg));
  LUT1 #(
    .INIT(2'h1)) 
    reg1_i_1__0
       (.I0(reg5_reg_n_0),
        .O(p_0_in__6));
  FDRE reg1_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(p_0_in__6),
        .Q(reg1),
        .R(reg5));
  FDRE reg2_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(reg1),
        .Q(reg2),
        .R(reg5));
  FDRE reg3_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(reg2),
        .Q(clk12_5),
        .R(reg5));
  FDRE reg4_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(clk12_5),
        .Q(reg4),
        .R(reg5));
  LUT3 #(
    .INIT(8'hF4)) 
    reg5_i_1
       (.I0(reg4),
        .I1(reg5_reg_n_0),
        .I2(reset_out),
        .O(reg5));
  FDRE reg5_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(reg4),
        .Q(reg5_reg_n_0),
        .R(reg5));
  LUT5 #(
    .INIT(32'hFFFFDFD5)) 
    sgmii_clk_f_i_1
       (.I0(speed_is_10_100_fall),
        .I1(clk12_5),
        .I2(speed_is_100_fall),
        .I3(clk1_25),
        .I4(reset_fall),
        .O(sgmii_clk_f_reg));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_johnson_cntr" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_johnson_cntr_38
   (clk1_25,
    clk_en_1_25_fall_reg,
    sgmii_clk_r0_out,
    clk_en_12_5_rise,
    MMCM_RESET_reg,
    clk1_25_reg,
    data_sync_reg6,
    data_out,
    clk12_5,
    reset_out);
  output clk1_25;
  output clk_en_1_25_fall_reg;
  output sgmii_clk_r0_out;
  input clk_en_12_5_rise;
  input MMCM_RESET_reg;
  input clk1_25_reg;
  input data_sync_reg6;
  input data_out;
  input clk12_5;
  input reset_out;

  wire MMCM_RESET_reg;
  wire clk12_5;
  wire clk1_25;
  wire clk1_25_reg;
  wire clk_en_12_5_rise;
  wire clk_en_1_25_fall_reg;
  wire data_out;
  wire data_sync_reg6;
  wire reg1_i_1_n_0;
  wire reg1_reg_n_0;
  wire reg2_reg_n_0;
  wire reg4;
  wire reg5;
  wire reg5_reg_n_0;
  wire reset_out;
  wire sgmii_clk_r0_out;

  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    clk_en_1_25_fall_i_1
       (.I0(clk1_25_reg),
        .I1(clk1_25),
        .O(clk_en_1_25_fall_reg));
  LUT1 #(
    .INIT(2'h1)) 
    reg1_i_1
       (.I0(reg5_reg_n_0),
        .O(reg1_i_1_n_0));
  FDRE reg1_reg
       (.C(MMCM_RESET_reg),
        .CE(clk_en_12_5_rise),
        .D(reg1_i_1_n_0),
        .Q(reg1_reg_n_0),
        .R(reg5));
  FDRE reg2_reg
       (.C(MMCM_RESET_reg),
        .CE(clk_en_12_5_rise),
        .D(reg1_reg_n_0),
        .Q(reg2_reg_n_0),
        .R(reg5));
  FDRE reg3_reg
       (.C(MMCM_RESET_reg),
        .CE(clk_en_12_5_rise),
        .D(reg2_reg_n_0),
        .Q(clk1_25),
        .R(reg5));
  FDRE reg4_reg
       (.C(MMCM_RESET_reg),
        .CE(clk_en_12_5_rise),
        .D(clk1_25),
        .Q(reg4),
        .R(reg5));
  LUT4 #(
    .INIT(16'hFF40)) 
    reg5_i_1__0
       (.I0(reg4),
        .I1(clk_en_12_5_rise),
        .I2(reg5_reg_n_0),
        .I3(reset_out),
        .O(reg5));
  FDRE reg5_reg
       (.C(MMCM_RESET_reg),
        .CE(clk_en_12_5_rise),
        .D(reg4),
        .Q(reg5_reg_n_0),
        .R(reg5));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    sgmii_clk_r_i_1
       (.I0(data_sync_reg6),
        .I1(clk1_25),
        .I2(data_out),
        .I3(clk12_5),
        .O(sgmii_clk_r0_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_reset_sync" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync
   (reset_out,
    \cpllpd_wait_reg[95] ,
    enablealign);
  output reset_out;
  input \cpllpd_wait_reg[95] ;
  input enablealign;

  wire \cpllpd_wait_reg[95] ;
  wire enablealign;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(1'b0),
        .PRE(enablealign),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(enablealign),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(enablealign),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(enablealign),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(enablealign),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_reset_sync" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_1
   (SR,
    reset_out,
    \wr_data_reg_reg[0] ,
    initialize_ram_complete_pulse,
    data_in,
    \cpllpd_wait_reg[95] ,
    rxreset);
  output [0:0]SR;
  output reset_out;
  output [0:0]\wr_data_reg_reg[0] ;
  input initialize_ram_complete_pulse;
  input data_in;
  input \cpllpd_wait_reg[95] ;
  input rxreset;

  wire [0:0]SR;
  wire \cpllpd_wait_reg[95] ;
  wire data_in;
  wire initialize_ram_complete_pulse;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;
  wire rxreset;
  wire [0:0]\wr_data_reg_reg[0] ;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rxreset),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(rxreset),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(rxreset),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(rxreset),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(rxreset),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \wr_addr[4]_i_1 
       (.I0(reset_out),
        .I1(initialize_ram_complete_pulse),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \wr_data_reg[28]_i_1 
       (.I0(reset_out),
        .I1(data_in),
        .O(\wr_data_reg_reg[0] ));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_reset_sync" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_19
   (reset_out,
    CLK,
    SR);
  output reset_out;
  input CLK;
  input [0:0]SR;

  wire CLK;
  wire [0:0]SR;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(SR),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(SR),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(SR),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(SR),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(SR),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_reset_sync" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_2
   (gt0_gtrxreset_gt_d1_reg,
    independent_clock_bufg,
    rxreset);
  output gt0_gtrxreset_gt_d1_reg;
  input independent_clock_bufg;
  input rxreset;

  wire gt0_gtrxreset_gt_d1_reg;
  wire independent_clock_bufg;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;
  wire rxreset;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rxreset),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(rxreset),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(rxreset),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(rxreset),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(rxreset),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(gt0_gtrxreset_gt_d1_reg));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_reset_sync" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_20
   (reset_out,
    CLK,
    CPLL_RESET_reg);
  output reset_out;
  input CLK;
  input CPLL_RESET_reg;

  wire CLK;
  wire CPLL_RESET_reg;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(CPLL_RESET_reg),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(CPLL_RESET_reg),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(CPLL_RESET_reg),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(CPLL_RESET_reg),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(CPLL_RESET_reg),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_reset_sync" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_3
   (reset_out,
    MMCM_RESET_reg,
    SR);
  output reset_out;
  input MMCM_RESET_reg;
  input [0:0]SR;

  wire MMCM_RESET_reg;
  wire [0:0]SR;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(SR),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(SR),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(SR),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(SR),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(SR),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_reset_sync" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_35
   (reset_out,
    MMCM_RESET_reg,
    SR);
  output reset_out;
  input MMCM_RESET_reg;
  input [0:0]SR;

  wire MMCM_RESET_reg;
  wire [0:0]SR;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(SR),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(SR),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(SR),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(SR),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(SR),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_reset_sync" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync__parameterized0
   (reset_out,
    CLK,
    CPLL_RESET_reg);
  output reset_out;
  input CLK;
  input CPLL_RESET_reg;

  wire CLK;
  wire CPLL_RESET_reg;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b0)) 
    reset_sync1
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(CPLL_RESET_reg),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b0)) 
    reset_sync2
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(CPLL_RESET_reg),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b0)) 
    reset_sync3
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(CPLL_RESET_reg),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b0)) 
    reset_sync4
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(CPLL_RESET_reg),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b0)) 
    reset_sync5
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(CPLL_RESET_reg),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b0)) 
    reset_sync6
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_reset_wtd_timer" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_wtd_timer
   (wtd_rxpcsreset_in,
    independent_clock_bufg,
    data_out);
  output wtd_rxpcsreset_in;
  input independent_clock_bufg;
  input data_out;

  wire \counter_stg1[5]_i_1_n_0 ;
  wire [5:5]counter_stg1_reg__0;
  wire [4:0]counter_stg1_reg__0__0;
  wire counter_stg1_roll;
  wire \counter_stg2[0]_i_3_n_0 ;
  wire \counter_stg2[0]_i_4_n_0 ;
  wire \counter_stg2[0]_i_5_n_0 ;
  wire \counter_stg2[0]_i_6_n_0 ;
  wire \counter_stg2[4]_i_2_n_0 ;
  wire \counter_stg2[4]_i_3_n_0 ;
  wire \counter_stg2[4]_i_4_n_0 ;
  wire \counter_stg2[4]_i_5_n_0 ;
  wire \counter_stg2[8]_i_2_n_0 ;
  wire \counter_stg2[8]_i_3_n_0 ;
  wire \counter_stg2[8]_i_4_n_0 ;
  wire \counter_stg2[8]_i_5_n_0 ;
  wire [11:0]counter_stg2_reg;
  wire \counter_stg2_reg[0]_i_2_n_0 ;
  wire \counter_stg2_reg[0]_i_2_n_1 ;
  wire \counter_stg2_reg[0]_i_2_n_2 ;
  wire \counter_stg2_reg[0]_i_2_n_3 ;
  wire \counter_stg2_reg[0]_i_2_n_4 ;
  wire \counter_stg2_reg[0]_i_2_n_5 ;
  wire \counter_stg2_reg[0]_i_2_n_6 ;
  wire \counter_stg2_reg[0]_i_2_n_7 ;
  wire \counter_stg2_reg[4]_i_1_n_0 ;
  wire \counter_stg2_reg[4]_i_1_n_1 ;
  wire \counter_stg2_reg[4]_i_1_n_2 ;
  wire \counter_stg2_reg[4]_i_1_n_3 ;
  wire \counter_stg2_reg[4]_i_1_n_4 ;
  wire \counter_stg2_reg[4]_i_1_n_5 ;
  wire \counter_stg2_reg[4]_i_1_n_6 ;
  wire \counter_stg2_reg[4]_i_1_n_7 ;
  wire \counter_stg2_reg[8]_i_1_n_1 ;
  wire \counter_stg2_reg[8]_i_1_n_2 ;
  wire \counter_stg2_reg[8]_i_1_n_3 ;
  wire \counter_stg2_reg[8]_i_1_n_4 ;
  wire \counter_stg2_reg[8]_i_1_n_5 ;
  wire \counter_stg2_reg[8]_i_1_n_6 ;
  wire \counter_stg2_reg[8]_i_1_n_7 ;
  wire counter_stg30;
  wire \counter_stg3[0]_i_3_n_0 ;
  wire \counter_stg3[0]_i_4_n_0 ;
  wire \counter_stg3[0]_i_5_n_0 ;
  wire \counter_stg3[0]_i_6_n_0 ;
  wire \counter_stg3[0]_i_7_n_0 ;
  wire \counter_stg3[0]_i_8_n_0 ;
  wire \counter_stg3[4]_i_2_n_0 ;
  wire \counter_stg3[4]_i_3_n_0 ;
  wire \counter_stg3[4]_i_4_n_0 ;
  wire \counter_stg3[4]_i_5_n_0 ;
  wire \counter_stg3[8]_i_2_n_0 ;
  wire \counter_stg3[8]_i_3_n_0 ;
  wire \counter_stg3[8]_i_4_n_0 ;
  wire \counter_stg3[8]_i_5_n_0 ;
  wire [11:0]counter_stg3_reg;
  wire \counter_stg3_reg[0]_i_2_n_0 ;
  wire \counter_stg3_reg[0]_i_2_n_1 ;
  wire \counter_stg3_reg[0]_i_2_n_2 ;
  wire \counter_stg3_reg[0]_i_2_n_3 ;
  wire \counter_stg3_reg[0]_i_2_n_4 ;
  wire \counter_stg3_reg[0]_i_2_n_5 ;
  wire \counter_stg3_reg[0]_i_2_n_6 ;
  wire \counter_stg3_reg[0]_i_2_n_7 ;
  wire \counter_stg3_reg[4]_i_1_n_0 ;
  wire \counter_stg3_reg[4]_i_1_n_1 ;
  wire \counter_stg3_reg[4]_i_1_n_2 ;
  wire \counter_stg3_reg[4]_i_1_n_3 ;
  wire \counter_stg3_reg[4]_i_1_n_4 ;
  wire \counter_stg3_reg[4]_i_1_n_5 ;
  wire \counter_stg3_reg[4]_i_1_n_6 ;
  wire \counter_stg3_reg[4]_i_1_n_7 ;
  wire \counter_stg3_reg[8]_i_1_n_1 ;
  wire \counter_stg3_reg[8]_i_1_n_2 ;
  wire \counter_stg3_reg[8]_i_1_n_3 ;
  wire \counter_stg3_reg[8]_i_1_n_4 ;
  wire \counter_stg3_reg[8]_i_1_n_5 ;
  wire \counter_stg3_reg[8]_i_1_n_6 ;
  wire \counter_stg3_reg[8]_i_1_n_7 ;
  wire data_out;
  wire independent_clock_bufg;
  wire [5:0]p_0_in;
  wire reset0;
  wire reset_i_2_n_0;
  wire reset_i_3_n_0;
  wire reset_i_4_n_0;
  wire reset_i_5_n_0;
  wire reset_i_6_n_0;
  wire reset_i_7_n_0;
  wire reset_i_8_n_0;
  wire wtd_rxpcsreset_in;
  wire [3:3]\NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg1[0]_i_1 
       (.I0(counter_stg1_reg__0__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_stg1[1]_i_1 
       (.I0(counter_stg1_reg__0__0[0]),
        .I1(counter_stg1_reg__0__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_stg1[2]_i_1 
       (.I0(counter_stg1_reg__0__0[0]),
        .I1(counter_stg1_reg__0__0[1]),
        .I2(counter_stg1_reg__0__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter_stg1[3]_i_1 
       (.I0(counter_stg1_reg__0__0[3]),
        .I1(counter_stg1_reg__0__0[0]),
        .I2(counter_stg1_reg__0__0[1]),
        .I3(counter_stg1_reg__0__0[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter_stg1[4]_i_1 
       (.I0(counter_stg1_reg__0__0[4]),
        .I1(counter_stg1_reg__0__0[2]),
        .I2(counter_stg1_reg__0__0[1]),
        .I3(counter_stg1_reg__0__0[0]),
        .I4(counter_stg1_reg__0__0[3]),
        .O(p_0_in[4]));
  LUT3 #(
    .INIT(8'hBA)) 
    \counter_stg1[5]_i_1 
       (.I0(data_out),
        .I1(reset_i_2_n_0),
        .I2(counter_stg1_roll),
        .O(\counter_stg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter_stg1[5]_i_2 
       (.I0(counter_stg1_reg__0),
        .I1(counter_stg1_reg__0__0[3]),
        .I2(counter_stg1_reg__0__0[0]),
        .I3(counter_stg1_reg__0__0[1]),
        .I4(counter_stg1_reg__0__0[2]),
        .I5(counter_stg1_reg__0__0[4]),
        .O(p_0_in[5]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(counter_stg1_reg__0__0[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(counter_stg1_reg__0__0[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(counter_stg1_reg__0__0[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(counter_stg1_reg__0__0[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[4] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(counter_stg1_reg__0__0[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[5] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(counter_stg1_reg__0),
        .R(\counter_stg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_stg2[0]_i_1 
       (.I0(counter_stg1_reg__0),
        .I1(counter_stg1_reg__0__0[3]),
        .I2(counter_stg1_reg__0__0[0]),
        .I3(counter_stg1_reg__0__0[1]),
        .I4(counter_stg1_reg__0__0[2]),
        .I5(counter_stg1_reg__0__0[4]),
        .O(counter_stg1_roll));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg2[0]_i_3 
       (.I0(counter_stg2_reg[3]),
        .O(\counter_stg2[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg2[0]_i_4 
       (.I0(counter_stg2_reg[2]),
        .O(\counter_stg2[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg2[0]_i_5 
       (.I0(counter_stg2_reg[1]),
        .O(\counter_stg2[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg2[0]_i_6 
       (.I0(counter_stg2_reg[0]),
        .O(\counter_stg2[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg2[4]_i_2 
       (.I0(counter_stg2_reg[7]),
        .O(\counter_stg2[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg2[4]_i_3 
       (.I0(counter_stg2_reg[6]),
        .O(\counter_stg2[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg2[4]_i_4 
       (.I0(counter_stg2_reg[5]),
        .O(\counter_stg2[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg2[4]_i_5 
       (.I0(counter_stg2_reg[4]),
        .O(\counter_stg2[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg2[8]_i_2 
       (.I0(counter_stg2_reg[11]),
        .O(\counter_stg2[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg2[8]_i_3 
       (.I0(counter_stg2_reg[10]),
        .O(\counter_stg2[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg2[8]_i_4 
       (.I0(counter_stg2_reg[9]),
        .O(\counter_stg2[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg2[8]_i_5 
       (.I0(counter_stg2_reg[8]),
        .O(\counter_stg2[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[0] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[0]_i_2_n_7 ),
        .Q(counter_stg2_reg[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  CARRY4 \counter_stg2_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_stg2_reg[0]_i_2_n_0 ,\counter_stg2_reg[0]_i_2_n_1 ,\counter_stg2_reg[0]_i_2_n_2 ,\counter_stg2_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_stg2_reg[0]_i_2_n_4 ,\counter_stg2_reg[0]_i_2_n_5 ,\counter_stg2_reg[0]_i_2_n_6 ,\counter_stg2_reg[0]_i_2_n_7 }),
        .S({\counter_stg2[0]_i_3_n_0 ,\counter_stg2[0]_i_4_n_0 ,\counter_stg2[0]_i_5_n_0 ,\counter_stg2[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[10] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[8]_i_1_n_5 ),
        .Q(counter_stg2_reg[10]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[11] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[8]_i_1_n_4 ),
        .Q(counter_stg2_reg[11]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[1] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[0]_i_2_n_6 ),
        .Q(counter_stg2_reg[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[2] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[0]_i_2_n_5 ),
        .Q(counter_stg2_reg[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[3] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[0]_i_2_n_4 ),
        .Q(counter_stg2_reg[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[4] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[4]_i_1_n_7 ),
        .Q(counter_stg2_reg[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  CARRY4 \counter_stg2_reg[4]_i_1 
       (.CI(\counter_stg2_reg[0]_i_2_n_0 ),
        .CO({\counter_stg2_reg[4]_i_1_n_0 ,\counter_stg2_reg[4]_i_1_n_1 ,\counter_stg2_reg[4]_i_1_n_2 ,\counter_stg2_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg2_reg[4]_i_1_n_4 ,\counter_stg2_reg[4]_i_1_n_5 ,\counter_stg2_reg[4]_i_1_n_6 ,\counter_stg2_reg[4]_i_1_n_7 }),
        .S({\counter_stg2[4]_i_2_n_0 ,\counter_stg2[4]_i_3_n_0 ,\counter_stg2[4]_i_4_n_0 ,\counter_stg2[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[5] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[4]_i_1_n_6 ),
        .Q(counter_stg2_reg[5]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[6] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[4]_i_1_n_5 ),
        .Q(counter_stg2_reg[6]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[7] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[4]_i_1_n_4 ),
        .Q(counter_stg2_reg[7]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[8] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[8]_i_1_n_7 ),
        .Q(counter_stg2_reg[8]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  CARRY4 \counter_stg2_reg[8]_i_1 
       (.CI(\counter_stg2_reg[4]_i_1_n_0 ),
        .CO({\NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED [3],\counter_stg2_reg[8]_i_1_n_1 ,\counter_stg2_reg[8]_i_1_n_2 ,\counter_stg2_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg2_reg[8]_i_1_n_4 ,\counter_stg2_reg[8]_i_1_n_5 ,\counter_stg2_reg[8]_i_1_n_6 ,\counter_stg2_reg[8]_i_1_n_7 }),
        .S({\counter_stg2[8]_i_2_n_0 ,\counter_stg2[8]_i_3_n_0 ,\counter_stg2[8]_i_4_n_0 ,\counter_stg2[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[9] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\counter_stg2_reg[8]_i_1_n_6 ),
        .Q(counter_stg2_reg[9]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \counter_stg3[0]_i_1 
       (.I0(counter_stg1_roll),
        .I1(\counter_stg3[0]_i_3_n_0 ),
        .I2(counter_stg2_reg[11]),
        .I3(counter_stg2_reg[3]),
        .I4(counter_stg2_reg[8]),
        .I5(counter_stg2_reg[4]),
        .O(counter_stg30));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \counter_stg3[0]_i_3 
       (.I0(counter_stg2_reg[2]),
        .I1(counter_stg2_reg[9]),
        .I2(counter_stg2_reg[1]),
        .I3(counter_stg2_reg[6]),
        .I4(\counter_stg3[0]_i_8_n_0 ),
        .O(\counter_stg3[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg3[0]_i_4 
       (.I0(counter_stg3_reg[3]),
        .O(\counter_stg3[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg3[0]_i_5 
       (.I0(counter_stg3_reg[2]),
        .O(\counter_stg3[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg3[0]_i_6 
       (.I0(counter_stg3_reg[1]),
        .O(\counter_stg3[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg3[0]_i_7 
       (.I0(counter_stg3_reg[0]),
        .O(\counter_stg3[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter_stg3[0]_i_8 
       (.I0(counter_stg2_reg[7]),
        .I1(counter_stg2_reg[0]),
        .I2(counter_stg2_reg[10]),
        .I3(counter_stg2_reg[5]),
        .O(\counter_stg3[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg3[4]_i_2 
       (.I0(counter_stg3_reg[7]),
        .O(\counter_stg3[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg3[4]_i_3 
       (.I0(counter_stg3_reg[6]),
        .O(\counter_stg3[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg3[4]_i_4 
       (.I0(counter_stg3_reg[5]),
        .O(\counter_stg3[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg3[4]_i_5 
       (.I0(counter_stg3_reg[4]),
        .O(\counter_stg3[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg3[8]_i_2 
       (.I0(counter_stg3_reg[11]),
        .O(\counter_stg3[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg3[8]_i_3 
       (.I0(counter_stg3_reg[10]),
        .O(\counter_stg3[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg3[8]_i_4 
       (.I0(counter_stg3_reg[9]),
        .O(\counter_stg3[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter_stg3[8]_i_5 
       (.I0(counter_stg3_reg[8]),
        .O(\counter_stg3[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[0] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_7 ),
        .Q(counter_stg3_reg[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  CARRY4 \counter_stg3_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_stg3_reg[0]_i_2_n_0 ,\counter_stg3_reg[0]_i_2_n_1 ,\counter_stg3_reg[0]_i_2_n_2 ,\counter_stg3_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_stg3_reg[0]_i_2_n_4 ,\counter_stg3_reg[0]_i_2_n_5 ,\counter_stg3_reg[0]_i_2_n_6 ,\counter_stg3_reg[0]_i_2_n_7 }),
        .S({\counter_stg3[0]_i_4_n_0 ,\counter_stg3[0]_i_5_n_0 ,\counter_stg3[0]_i_6_n_0 ,\counter_stg3[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[10] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_5 ),
        .Q(counter_stg3_reg[10]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[11] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_4 ),
        .Q(counter_stg3_reg[11]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[1] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_6 ),
        .Q(counter_stg3_reg[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[2] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_5 ),
        .Q(counter_stg3_reg[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[3] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_4 ),
        .Q(counter_stg3_reg[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[4] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_7 ),
        .Q(counter_stg3_reg[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  CARRY4 \counter_stg3_reg[4]_i_1 
       (.CI(\counter_stg3_reg[0]_i_2_n_0 ),
        .CO({\counter_stg3_reg[4]_i_1_n_0 ,\counter_stg3_reg[4]_i_1_n_1 ,\counter_stg3_reg[4]_i_1_n_2 ,\counter_stg3_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg3_reg[4]_i_1_n_4 ,\counter_stg3_reg[4]_i_1_n_5 ,\counter_stg3_reg[4]_i_1_n_6 ,\counter_stg3_reg[4]_i_1_n_7 }),
        .S({\counter_stg3[4]_i_2_n_0 ,\counter_stg3[4]_i_3_n_0 ,\counter_stg3[4]_i_4_n_0 ,\counter_stg3[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[5] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_6 ),
        .Q(counter_stg3_reg[5]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[6] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_5 ),
        .Q(counter_stg3_reg[6]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[7] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_4 ),
        .Q(counter_stg3_reg[7]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[8] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_7 ),
        .Q(counter_stg3_reg[8]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  CARRY4 \counter_stg3_reg[8]_i_1 
       (.CI(\counter_stg3_reg[4]_i_1_n_0 ),
        .CO({\NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED [3],\counter_stg3_reg[8]_i_1_n_1 ,\counter_stg3_reg[8]_i_1_n_2 ,\counter_stg3_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg3_reg[8]_i_1_n_4 ,\counter_stg3_reg[8]_i_1_n_5 ,\counter_stg3_reg[8]_i_1_n_6 ,\counter_stg3_reg[8]_i_1_n_7 }),
        .S({\counter_stg3[8]_i_2_n_0 ,\counter_stg3[8]_i_3_n_0 ,\counter_stg3[8]_i_4_n_0 ,\counter_stg3[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[9] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_6 ),
        .Q(counter_stg3_reg[9]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    reset_i_1
       (.I0(counter_stg1_reg__0),
        .I1(reset_i_2_n_0),
        .O(reset0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    reset_i_2
       (.I0(reset_i_3_n_0),
        .I1(reset_i_4_n_0),
        .I2(reset_i_5_n_0),
        .I3(reset_i_6_n_0),
        .I4(reset_i_7_n_0),
        .I5(reset_i_8_n_0),
        .O(reset_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    reset_i_3
       (.I0(counter_stg2_reg[2]),
        .I1(counter_stg2_reg[1]),
        .I2(counter_stg3_reg[11]),
        .I3(counter_stg3_reg[1]),
        .O(reset_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    reset_i_4
       (.I0(counter_stg3_reg[4]),
        .I1(counter_stg3_reg[9]),
        .I2(counter_stg3_reg[2]),
        .I3(counter_stg2_reg[5]),
        .O(reset_i_4_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    reset_i_5
       (.I0(counter_stg2_reg[11]),
        .I1(counter_stg2_reg[3]),
        .I2(counter_stg2_reg[8]),
        .I3(counter_stg2_reg[4]),
        .O(reset_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    reset_i_6
       (.I0(counter_stg3_reg[3]),
        .I1(counter_stg2_reg[0]),
        .I2(counter_stg3_reg[7]),
        .I3(counter_stg3_reg[10]),
        .O(reset_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    reset_i_7
       (.I0(counter_stg3_reg[8]),
        .I1(counter_stg3_reg[0]),
        .I2(counter_stg3_reg[5]),
        .I3(counter_stg2_reg[9]),
        .O(reset_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    reset_i_8
       (.I0(counter_stg2_reg[10]),
        .I1(counter_stg2_reg[6]),
        .I2(counter_stg3_reg[6]),
        .I3(counter_stg2_reg[7]),
        .O(reset_i_8_n_0));
  FDRE reset_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset0),
        .Q(wtd_rxpcsreset_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_resets" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_resets
   (pma_reset_out,
    independent_clock_bufg,
    reset);
  output pma_reset_out;
  input independent_clock_bufg;
  input reset;

  wire independent_clock_bufg;
  (* async_reg = "true" *) wire [3:0]pma_reset_pipe;
  wire reset;

  assign pma_reset_out = pma_reset_pipe[3];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset),
        .Q(pma_reset_pipe[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[0]),
        .PRE(reset),
        .Q(pma_reset_pipe[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[1]),
        .PRE(reset),
        .Q(pma_reset_pipe[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[2]),
        .PRE(reset),
        .Q(pma_reset_pipe[3]));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_rx_elastic_buffer" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_rx_elastic_buffer
   (initialize_ram_complete_sync_ris_edg,
    \rxdata_usr_reg[7]_0 ,
    SR,
    rxchariscomma,
    rxcharisk,
    rxdisperr,
    rxnotintable,
    rxrundisp,
    data_in,
    initialize_ram_complete_pulse,
    initialize_ram,
    D,
    rxbufstatus,
    Q,
    wr_enable1,
    rxclkcorcnt,
    \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] ,
    insert_idle_reg_0,
    rxbuferr0,
    MMCM_RESET_reg,
    \cpllpd_wait_reg[95] ,
    rxreset_rec,
    initialize_ram_complete_sync_ris_edg_reg_0,
    \initialize_counter_reg[3]_0 ,
    initialize_ram_complete_reg_0,
    initialize_ram_complete_reg_1,
    even_reg_0,
    even_reg_1,
    rxbuferr_reg_0,
    reset_sync6,
    reset_sync6_0,
    \cpllpd_wait_reg[95]_0 );
  output initialize_ram_complete_sync_ris_edg;
  output \rxdata_usr_reg[7]_0 ;
  output [0:0]SR;
  output [0:0]rxchariscomma;
  output [0:0]rxcharisk;
  output [0:0]rxdisperr;
  output [0:0]rxnotintable;
  output [0:0]rxrundisp;
  output data_in;
  output initialize_ram_complete_pulse;
  output initialize_ram;
  output [0:0]D;
  output [0:0]rxbufstatus;
  output [4:0]Q;
  output wr_enable1;
  output [1:0]rxclkcorcnt;
  output [7:0]\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] ;
  output insert_idle_reg_0;
  output rxbuferr0;
  input MMCM_RESET_reg;
  input \cpllpd_wait_reg[95] ;
  input rxreset_rec;
  input initialize_ram_complete_sync_ris_edg_reg_0;
  input \initialize_counter_reg[3]_0 ;
  input initialize_ram_complete_reg_0;
  input initialize_ram_complete_reg_1;
  input even_reg_0;
  input even_reg_1;
  input rxbuferr_reg_0;
  input [0:0]reset_sync6;
  input [0:0]reset_sync6_0;
  input [23:0]\cpllpd_wait_reg[95]_0 ;

  wire [0:0]D;
  wire MMCM_RESET_reg;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [7:0]\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] ;
  wire \cpllpd_wait_reg[95] ;
  wire [23:0]\cpllpd_wait_reg[95]_0 ;
  wire d16p2_wr_reg;
  wire d16p2_wr_reg_i_2_n_0;
  wire data_in;
  wire [28:0]dpo;
  wire even_i_1_n_0;
  wire even_reg_0;
  wire even_reg_1;
  wire initialize_counter0;
  wire \initialize_counter_reg[3]_0 ;
  wire initialize_ram;
  wire initialize_ram0;
  wire initialize_ram_complete_pulse;
  wire initialize_ram_complete_pulse0;
  wire initialize_ram_complete_reg_0;
  wire initialize_ram_complete_reg_1;
  wire initialize_ram_complete_reg__0;
  wire initialize_ram_complete_sync;
  wire initialize_ram_complete_sync_reg1;
  wire initialize_ram_complete_sync_ris_edg;
  wire initialize_ram_complete_sync_ris_edg_reg_0;
  wire insert_idle;
  wire insert_idle_reg_0;
  wire insert_idle_reg__0;
  wire k28p5_wr_reg;
  wire k28p5_wr_reg_i_2_n_0;
  wire p_0_in;
  wire [4:0]p_0_in__4;
  wire [5:0]p_0_in__5;
  wire p_1_in;
  wire p_1_in23_in;
  wire p_1_out;
  wire p_2_in;
  wire p_2_in16_in;
  wire p_2_in24_in;
  wire p_2_in3_in;
  wire p_2_out;
  wire p_3_in;
  wire p_3_in26_in;
  wire p_3_out;
  wire p_4_in;
  wire p_4_in19_in;
  wire p_4_in28_in;
  wire p_4_out;
  wire [4:0]p_5_out;
  wire ram_reg_0_63_12_14_n_2;
  wire ram_reg_0_63_15_17_n_0;
  wire ram_reg_0_63_27_29_n_2;
  wire [5:0]rd_addr;
  wire [4:0]rd_addr_gray;
  wire \rd_addr_gray[0]_i_1_n_0 ;
  wire \rd_addr_gray[1]_i_1_n_0 ;
  wire \rd_addr_gray[2]_i_1_n_0 ;
  wire \rd_addr_gray[3]_i_1_n_0 ;
  wire \rd_addr_gray[4]_i_1_n_0 ;
  wire [5:0]rd_addr_plus1;
  wire \rd_addr_plus2_reg_n_0_[0] ;
  wire \rd_addr_plus2_reg_n_0_[5] ;
  wire [28:0]rd_data_reg__0;
  wire \rd_data_reg_n_0_[0] ;
  wire \rd_data_reg_n_0_[10] ;
  wire \rd_data_reg_n_0_[11] ;
  wire \rd_data_reg_n_0_[12] ;
  wire \rd_data_reg_n_0_[13] ;
  wire \rd_data_reg_n_0_[16] ;
  wire \rd_data_reg_n_0_[17] ;
  wire \rd_data_reg_n_0_[18] ;
  wire \rd_data_reg_n_0_[19] ;
  wire \rd_data_reg_n_0_[1] ;
  wire \rd_data_reg_n_0_[20] ;
  wire \rd_data_reg_n_0_[21] ;
  wire \rd_data_reg_n_0_[22] ;
  wire \rd_data_reg_n_0_[23] ;
  wire \rd_data_reg_n_0_[24] ;
  wire \rd_data_reg_n_0_[25] ;
  wire \rd_data_reg_n_0_[26] ;
  wire \rd_data_reg_n_0_[28] ;
  wire \rd_data_reg_n_0_[2] ;
  wire \rd_data_reg_n_0_[3] ;
  wire \rd_data_reg_n_0_[4] ;
  wire \rd_data_reg_n_0_[5] ;
  wire \rd_data_reg_n_0_[6] ;
  wire \rd_data_reg_n_0_[7] ;
  wire \rd_data_reg_n_0_[8] ;
  wire \rd_data_reg_n_0_[9] ;
  wire rd_enable;
  wire rd_enable_i_3_n_0;
  wire rd_enable_i_4_n_0;
  wire rd_enable_i_5_n_0;
  wire rd_enable_i_6_n_0;
  wire rd_enable_i_7_n_0;
  wire rd_enable_i_8_n_0;
  wire [5:0]rd_occupancy;
  wire [5:0]rd_occupancy01_out;
  wire \rd_occupancy_reg[3]_i_1_n_0 ;
  wire \rd_occupancy_reg[3]_i_1_n_1 ;
  wire \rd_occupancy_reg[3]_i_1_n_2 ;
  wire \rd_occupancy_reg[3]_i_1_n_3 ;
  wire \rd_occupancy_reg[5]_i_1_n_3 ;
  wire [4:0]rd_wr_addr;
  wire rd_wr_addr_gray_0;
  wire rd_wr_addr_gray_5;
  wire \reclock_rd_addrgray[2].sync_rd_addrgray_n_0 ;
  wire \reclock_rd_addrgray[3].sync_rd_addrgray_n_0 ;
  wire \reclock_rd_addrgray[3].sync_rd_addrgray_n_1 ;
  wire \reclock_rd_addrgray[4].sync_rd_addrgray_n_0 ;
  wire \reclock_rd_addrgray[4].sync_rd_addrgray_n_2 ;
  wire \reclock_rd_addrgray[5].sync_rd_addrgray_n_0 ;
  wire \reclock_rd_addrgray[5].sync_rd_addrgray_n_2 ;
  wire \reclock_wr_addrgray[2].sync_wr_addrgray_n_0 ;
  wire \reclock_wr_addrgray[3].sync_wr_addrgray_n_0 ;
  wire \reclock_wr_addrgray[3].sync_wr_addrgray_n_1 ;
  wire \reclock_wr_addrgray[4].sync_wr_addrgray_n_0 ;
  wire \reclock_wr_addrgray[4].sync_wr_addrgray_n_2 ;
  wire \reclock_wr_addrgray[5].sync_wr_addrgray_n_0 ;
  wire \reclock_wr_addrgray[5].sync_wr_addrgray_n_2 ;
  wire [0:0]reset_sync6;
  wire [0:0]reset_sync6_0;
  wire rxbuferr0;
  wire rxbuferr_reg_0;
  wire [0:0]rxbufstatus;
  wire [0:0]rxchariscomma;
  wire rxchariscomma_usr_i_1_n_0;
  wire [0:0]rxcharisk;
  wire rxcharisk_usr_i_1_n_0;
  wire [1:0]rxclkcorcnt;
  wire \rxclkcorcnt[0]_i_1_n_0 ;
  wire \rxclkcorcnt[2]_i_1_n_0 ;
  wire \rxdata_usr[0]_i_1_n_0 ;
  wire \rxdata_usr[1]_i_1_n_0 ;
  wire \rxdata_usr[2]_i_1_n_0 ;
  wire \rxdata_usr[3]_i_1_n_0 ;
  wire \rxdata_usr[4]_i_1_n_0 ;
  wire \rxdata_usr[5]_i_1_n_0 ;
  wire \rxdata_usr[6]_i_1_n_0 ;
  wire \rxdata_usr[7]_i_1_n_0 ;
  wire \rxdata_usr_reg[7]_0 ;
  wire [0:0]rxdisperr;
  wire rxdisperr_usr_i_1_n_0;
  wire [0:0]rxnotintable;
  wire rxnotintable_usr_i_1_n_0;
  wire rxreset_rec;
  wire [0:0]rxrundisp;
  wire rxrundisp_usr_i_1_n_0;
  wire start;
  wire sync_initialize_ram_comp_n_0;
  wire [5:0]wr_addr;
  wire \wr_addr[5]_i_1_n_0 ;
  wire [5:0]wr_addr_gray;
  wire [5:0]wr_addr_plus1;
  wire \wr_addr_plus1[5]_i_1_n_0 ;
  wire \wr_addr_plus2[0]_i_1_n_0 ;
  wire \wr_addr_plus2[1]_i_1_n_0 ;
  wire \wr_addr_plus2[2]_i_1_n_0 ;
  wire \wr_addr_plus2[3]_i_1_n_0 ;
  wire \wr_addr_plus2[4]_i_1_n_0 ;
  wire \wr_addr_plus2[5]_i_1_n_0 ;
  wire \wr_addr_plus2[5]_i_2_n_0 ;
  wire \wr_addr_plus2_reg_n_0_[0] ;
  wire \wr_addr_plus2_reg_n_0_[5] ;
  wire [28:0]wr_data_reg__0;
  wire \wr_data_reg_n_0_[0] ;
  wire \wr_data_reg_n_0_[10] ;
  wire \wr_data_reg_n_0_[11] ;
  wire \wr_data_reg_n_0_[12] ;
  wire \wr_data_reg_n_0_[16] ;
  wire \wr_data_reg_n_0_[17] ;
  wire \wr_data_reg_n_0_[18] ;
  wire \wr_data_reg_n_0_[19] ;
  wire \wr_data_reg_n_0_[1] ;
  wire \wr_data_reg_n_0_[20] ;
  wire \wr_data_reg_n_0_[21] ;
  wire \wr_data_reg_n_0_[22] ;
  wire \wr_data_reg_n_0_[23] ;
  wire \wr_data_reg_n_0_[25] ;
  wire \wr_data_reg_n_0_[26] ;
  wire \wr_data_reg_n_0_[28] ;
  wire \wr_data_reg_n_0_[2] ;
  wire \wr_data_reg_n_0_[3] ;
  wire \wr_data_reg_n_0_[4] ;
  wire \wr_data_reg_n_0_[5] ;
  wire \wr_data_reg_n_0_[6] ;
  wire \wr_data_reg_n_0_[7] ;
  wire \wr_data_reg_n_0_[9] ;
  wire wr_enable;
  wire wr_enable1;
  wire wr_enable_i_1_n_0;
  wire wr_enable_i_3_n_0;
  wire wr_enable_i_4_n_0;
  wire wr_enable_i_5_n_0;
  wire wr_enable_i_6_n_0;
  wire [5:1]wr_occupancy;
  wire [5:1]wr_occupancy00_out;
  wire \wr_occupancy_reg[3]_i_1_n_0 ;
  wire \wr_occupancy_reg[3]_i_1_n_1 ;
  wire \wr_occupancy_reg[3]_i_1_n_2 ;
  wire \wr_occupancy_reg[3]_i_1_n_3 ;
  wire \wr_occupancy_reg[5]_i_1_n_3 ;
  wire wr_rd_addr_gray_0;
  wire wr_rd_addr_gray_1;
  wire wr_rd_addr_gray_2;
  wire wr_rd_addr_gray_3;
  wire wr_rd_addr_gray_4;
  wire wr_rd_addr_gray_5;
  wire NLW_ram_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_15_17_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_18_20_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_21_23_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_24_26_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_27_29_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_9_11_DOD_UNCONNECTED;
  wire [3:1]\NLW_rd_occupancy_reg[5]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_rd_occupancy_reg[5]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_wr_occupancy_reg[3]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_wr_occupancy_reg[5]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_wr_occupancy_reg[5]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    d16p2_wr_reg_i_1
       (.I0(\wr_data_reg_n_0_[0] ),
        .I1(\wr_data_reg_n_0_[3] ),
        .I2(\wr_data_reg_n_0_[4] ),
        .I3(d16p2_wr_reg_i_2_n_0),
        .O(p_2_in3_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    d16p2_wr_reg_i_2
       (.I0(\wr_data_reg_n_0_[6] ),
        .I1(\wr_data_reg_n_0_[11] ),
        .I2(\wr_data_reg_n_0_[2] ),
        .I3(\wr_data_reg_n_0_[7] ),
        .I4(\wr_data_reg_n_0_[1] ),
        .I5(\wr_data_reg_n_0_[5] ),
        .O(d16p2_wr_reg_i_2_n_0));
  FDRE d16p2_wr_reg_reg
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(p_2_in3_in),
        .Q(d16p2_wr_reg),
        .R(rxreset_rec));
  LUT1 #(
    .INIT(2'h1)) 
    even_i_1
       (.I0(\rxdata_usr_reg[7]_0 ),
        .O(even_i_1_n_0));
  FDSE even_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(even_i_1_n_0),
        .Q(\rxdata_usr_reg[7]_0 ),
        .S(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \initialize_counter[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \initialize_counter[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \initialize_counter[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(p_0_in__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \initialize_counter[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(p_0_in__4[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \initialize_counter[4]_i_1 
       (.I0(initialize_ram),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(initialize_counter0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \initialize_counter[4]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(p_0_in__4[4]));
  FDRE \initialize_counter_reg[0] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(initialize_counter0),
        .D(p_0_in__4[0]),
        .Q(Q[0]),
        .R(initialize_ram0));
  FDRE \initialize_counter_reg[1] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(initialize_counter0),
        .D(p_0_in__4[1]),
        .Q(Q[1]),
        .R(initialize_ram0));
  FDRE \initialize_counter_reg[2] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(initialize_counter0),
        .D(p_0_in__4[2]),
        .Q(Q[2]),
        .R(initialize_ram0));
  FDRE \initialize_counter_reg[3] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(initialize_counter0),
        .D(p_0_in__4[3]),
        .Q(Q[3]),
        .R(initialize_ram0));
  FDRE \initialize_counter_reg[4] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(initialize_counter0),
        .D(p_0_in__4[4]),
        .Q(Q[4]),
        .R(initialize_ram0));
  LUT2 #(
    .INIT(4'h2)) 
    initialize_ram_complete_pulse_i_1
       (.I0(data_in),
        .I1(initialize_ram_complete_reg__0),
        .O(initialize_ram_complete_pulse0));
  FDRE initialize_ram_complete_pulse_reg
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(initialize_ram_complete_pulse0),
        .Q(initialize_ram_complete_pulse),
        .R(initialize_ram0));
  FDRE initialize_ram_complete_reg
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\initialize_counter_reg[3]_0 ),
        .Q(data_in),
        .R(initialize_ram0));
  LUT2 #(
    .INIT(4'hE)) 
    initialize_ram_complete_reg_i_1
       (.I0(start),
        .I1(rxreset_rec),
        .O(initialize_ram0));
  FDRE initialize_ram_complete_reg_reg
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_in),
        .Q(initialize_ram_complete_reg__0),
        .R(initialize_ram0));
  FDRE initialize_ram_complete_sync_reg1_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(initialize_ram_complete_sync),
        .Q(initialize_ram_complete_sync_reg1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    initialize_ram_complete_sync_ris_edg_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(sync_initialize_ram_comp_n_0),
        .Q(initialize_ram_complete_sync_ris_edg),
        .R(1'b0));
  FDSE initialize_ram_reg
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(initialize_ram_complete_reg_0),
        .Q(initialize_ram),
        .S(initialize_ram0));
  FDRE insert_idle_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(even_reg_1),
        .Q(insert_idle),
        .R(1'b0));
  FDRE insert_idle_reg_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(insert_idle),
        .Q(insert_idle_reg__0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    k28p5_wr_reg_i_1
       (.I0(\wr_data_reg_n_0_[17] ),
        .I1(\wr_data_reg_n_0_[23] ),
        .I2(\wr_data_reg_n_0_[21] ),
        .I3(k28p5_wr_reg_i_2_n_0),
        .O(p_4_in));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    k28p5_wr_reg_i_2
       (.I0(\wr_data_reg_n_0_[18] ),
        .I1(\wr_data_reg_n_0_[22] ),
        .I2(\wr_data_reg_n_0_[16] ),
        .I3(p_0_in),
        .I4(\wr_data_reg_n_0_[19] ),
        .I5(\wr_data_reg_n_0_[20] ),
        .O(k28p5_wr_reg_i_2_n_0));
  FDRE k28p5_wr_reg_reg
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(p_4_in),
        .Q(k28p5_wr_reg),
        .R(rxreset_rec));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M ram_reg_0_63_0_2
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(wr_data_reg__0[0]),
        .DIB(wr_data_reg__0[1]),
        .DIC(wr_data_reg__0[2]),
        .DID(1'b0),
        .DOA(dpo[0]),
        .DOB(dpo[1]),
        .DOC(dpo[2]),
        .DOD(NLW_ram_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(\cpllpd_wait_reg[95] ),
        .WE(wr_enable));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M ram_reg_0_63_12_14
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(wr_data_reg__0[12]),
        .DIB(wr_data_reg__0[13]),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(dpo[12]),
        .DOB(dpo[13]),
        .DOC(ram_reg_0_63_12_14_n_2),
        .DOD(NLW_ram_reg_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(\cpllpd_wait_reg[95] ),
        .WE(wr_enable));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M ram_reg_0_63_15_17
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(1'b0),
        .DIB(wr_data_reg__0[16]),
        .DIC(wr_data_reg__0[17]),
        .DID(1'b0),
        .DOA(ram_reg_0_63_15_17_n_0),
        .DOB(dpo[16]),
        .DOC(dpo[17]),
        .DOD(NLW_ram_reg_0_63_15_17_DOD_UNCONNECTED),
        .WCLK(\cpllpd_wait_reg[95] ),
        .WE(wr_enable));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M ram_reg_0_63_18_20
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(wr_data_reg__0[18]),
        .DIB(wr_data_reg__0[19]),
        .DIC(wr_data_reg__0[20]),
        .DID(1'b0),
        .DOA(dpo[18]),
        .DOB(dpo[19]),
        .DOC(dpo[20]),
        .DOD(NLW_ram_reg_0_63_18_20_DOD_UNCONNECTED),
        .WCLK(\cpllpd_wait_reg[95] ),
        .WE(wr_enable));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M ram_reg_0_63_21_23
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(wr_data_reg__0[21]),
        .DIB(wr_data_reg__0[22]),
        .DIC(wr_data_reg__0[23]),
        .DID(1'b0),
        .DOA(dpo[21]),
        .DOB(dpo[22]),
        .DOC(dpo[23]),
        .DOD(NLW_ram_reg_0_63_21_23_DOD_UNCONNECTED),
        .WCLK(\cpllpd_wait_reg[95] ),
        .WE(wr_enable));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M ram_reg_0_63_24_26
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(1'b0),
        .DIB(wr_data_reg__0[25]),
        .DIC(wr_data_reg__0[26]),
        .DID(1'b0),
        .DOA(dpo[24]),
        .DOB(dpo[25]),
        .DOC(dpo[26]),
        .DOD(NLW_ram_reg_0_63_24_26_DOD_UNCONNECTED),
        .WCLK(\cpllpd_wait_reg[95] ),
        .WE(wr_enable));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M ram_reg_0_63_27_29
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(wr_data_reg__0[27]),
        .DIB(wr_data_reg__0[28]),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(dpo[27]),
        .DOB(dpo[28]),
        .DOC(ram_reg_0_63_27_29_n_2),
        .DOD(NLW_ram_reg_0_63_27_29_DOD_UNCONNECTED),
        .WCLK(\cpllpd_wait_reg[95] ),
        .WE(wr_enable));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M ram_reg_0_63_3_5
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(wr_data_reg__0[3]),
        .DIB(wr_data_reg__0[4]),
        .DIC(wr_data_reg__0[5]),
        .DID(1'b0),
        .DOA(dpo[3]),
        .DOB(dpo[4]),
        .DOC(dpo[5]),
        .DOD(NLW_ram_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(\cpllpd_wait_reg[95] ),
        .WE(wr_enable));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M ram_reg_0_63_6_8
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(wr_data_reg__0[6]),
        .DIB(wr_data_reg__0[7]),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(dpo[6]),
        .DOB(dpo[7]),
        .DOC(dpo[8]),
        .DOD(NLW_ram_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(\cpllpd_wait_reg[95] ),
        .WE(wr_enable));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M ram_reg_0_63_9_11
       (.ADDRA(rd_addr),
        .ADDRB(rd_addr),
        .ADDRC(rd_addr),
        .ADDRD(wr_addr),
        .DIA(wr_data_reg__0[9]),
        .DIB(wr_data_reg__0[10]),
        .DIC(wr_data_reg__0[11]),
        .DID(1'b0),
        .DOA(dpo[9]),
        .DOB(dpo[10]),
        .DOC(dpo[11]),
        .DOD(NLW_ram_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(\cpllpd_wait_reg[95] ),
        .WE(wr_enable));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr_gray[0]_i_1 
       (.I0(\rd_addr_plus2_reg_n_0_[0] ),
        .I1(p_1_in),
        .O(\rd_addr_gray[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr_gray[1]_i_1 
       (.I0(p_1_in),
        .I1(p_2_in16_in),
        .O(\rd_addr_gray[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr_gray[2]_i_1 
       (.I0(p_2_in16_in),
        .I1(p_3_in),
        .O(\rd_addr_gray[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr_gray[3]_i_1 
       (.I0(p_3_in),
        .I1(p_4_in19_in),
        .O(\rd_addr_gray[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr_gray[4]_i_1 
       (.I0(p_4_in19_in),
        .I1(\rd_addr_plus2_reg_n_0_[5] ),
        .O(\rd_addr_gray[4]_i_1_n_0 ));
  FDRE \rd_addr_gray_reg[0] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_addr_gray[0]_i_1_n_0 ),
        .Q(rd_addr_gray[0]),
        .R(SR));
  FDRE \rd_addr_gray_reg[1] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_addr_gray[1]_i_1_n_0 ),
        .Q(rd_addr_gray[1]),
        .R(SR));
  FDRE \rd_addr_gray_reg[2] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_addr_gray[2]_i_1_n_0 ),
        .Q(rd_addr_gray[2]),
        .R(SR));
  FDRE \rd_addr_gray_reg[3] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_addr_gray[3]_i_1_n_0 ),
        .Q(rd_addr_gray[3]),
        .R(SR));
  FDRE \rd_addr_gray_reg[4] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_addr_gray[4]_i_1_n_0 ),
        .Q(rd_addr_gray[4]),
        .R(SR));
  FDSE \rd_addr_plus1_reg[0] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_addr_plus2_reg_n_0_[0] ),
        .Q(rd_addr_plus1[0]),
        .S(SR));
  FDRE \rd_addr_plus1_reg[1] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(p_1_in),
        .Q(rd_addr_plus1[1]),
        .R(SR));
  FDRE \rd_addr_plus1_reg[2] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(p_2_in16_in),
        .Q(rd_addr_plus1[2]),
        .R(SR));
  FDRE \rd_addr_plus1_reg[3] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(p_3_in),
        .Q(rd_addr_plus1[3]),
        .R(SR));
  FDRE \rd_addr_plus1_reg[4] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(p_4_in19_in),
        .Q(rd_addr_plus1[4]),
        .R(SR));
  FDRE \rd_addr_plus1_reg[5] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_addr_plus2_reg_n_0_[5] ),
        .Q(rd_addr_plus1[5]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rd_addr_plus2[0]_i_1 
       (.I0(\rd_addr_plus2_reg_n_0_[0] ),
        .O(p_0_in__5[0]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_addr_plus2[2]_i_1 
       (.I0(p_2_in16_in),
        .I1(p_1_in),
        .I2(\rd_addr_plus2_reg_n_0_[0] ),
        .O(p_0_in__5[2]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rd_addr_plus2[3]_i_1 
       (.I0(p_3_in),
        .I1(\rd_addr_plus2_reg_n_0_[0] ),
        .I2(p_1_in),
        .I3(p_2_in16_in),
        .O(p_0_in__5[3]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rd_addr_plus2[4]_i_1 
       (.I0(p_4_in19_in),
        .I1(p_2_in16_in),
        .I2(p_1_in),
        .I3(\rd_addr_plus2_reg_n_0_[0] ),
        .I4(p_3_in),
        .O(p_0_in__5[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \rd_addr_plus2[5]_i_1 
       (.I0(\rd_addr_plus2_reg_n_0_[5] ),
        .I1(p_3_in),
        .I2(\rd_addr_plus2_reg_n_0_[0] ),
        .I3(p_1_in),
        .I4(p_2_in16_in),
        .I5(p_4_in19_in),
        .O(p_0_in__5[5]));
  FDRE \rd_addr_plus2_reg[0] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(p_0_in__5[0]),
        .Q(\rd_addr_plus2_reg_n_0_[0] ),
        .R(SR));
  FDSE \rd_addr_plus2_reg[1] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_addr_gray[0]_i_1_n_0 ),
        .Q(p_1_in),
        .S(SR));
  FDRE \rd_addr_plus2_reg[2] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(p_0_in__5[2]),
        .Q(p_2_in16_in),
        .R(SR));
  FDRE \rd_addr_plus2_reg[3] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(p_0_in__5[3]),
        .Q(p_3_in),
        .R(SR));
  FDRE \rd_addr_plus2_reg[4] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(p_0_in__5[4]),
        .Q(p_4_in19_in),
        .R(SR));
  FDRE \rd_addr_plus2_reg[5] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(p_0_in__5[5]),
        .Q(\rd_addr_plus2_reg_n_0_[5] ),
        .R(SR));
  FDRE \rd_addr_reg[0] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(rd_addr_plus1[0]),
        .Q(rd_addr[0]),
        .R(SR));
  FDRE \rd_addr_reg[1] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(rd_addr_plus1[1]),
        .Q(rd_addr[1]),
        .R(SR));
  FDRE \rd_addr_reg[2] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(rd_addr_plus1[2]),
        .Q(rd_addr[2]),
        .R(SR));
  FDRE \rd_addr_reg[3] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(rd_addr_plus1[3]),
        .Q(rd_addr[3]),
        .R(SR));
  FDRE \rd_addr_reg[4] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(rd_addr_plus1[4]),
        .Q(rd_addr[4]),
        .R(SR));
  FDRE \rd_addr_reg[5] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(rd_addr_plus1[5]),
        .Q(rd_addr[5]),
        .R(SR));
  FDRE \rd_data_reg[0] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[0]),
        .Q(\rd_data_reg_n_0_[0] ),
        .R(SR));
  FDRE \rd_data_reg[10] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[10]),
        .Q(\rd_data_reg_n_0_[10] ),
        .R(SR));
  FDRE \rd_data_reg[11] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[11]),
        .Q(\rd_data_reg_n_0_[11] ),
        .R(SR));
  FDRE \rd_data_reg[12] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[12]),
        .Q(\rd_data_reg_n_0_[12] ),
        .R(SR));
  FDRE \rd_data_reg[13] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[13]),
        .Q(\rd_data_reg_n_0_[13] ),
        .R(SR));
  FDRE \rd_data_reg[16] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[16]),
        .Q(\rd_data_reg_n_0_[16] ),
        .R(SR));
  FDRE \rd_data_reg[17] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[17]),
        .Q(\rd_data_reg_n_0_[17] ),
        .R(SR));
  FDRE \rd_data_reg[18] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[18]),
        .Q(\rd_data_reg_n_0_[18] ),
        .R(SR));
  FDRE \rd_data_reg[19] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[19]),
        .Q(\rd_data_reg_n_0_[19] ),
        .R(SR));
  FDRE \rd_data_reg[1] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[1]),
        .Q(\rd_data_reg_n_0_[1] ),
        .R(SR));
  FDRE \rd_data_reg[20] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[20]),
        .Q(\rd_data_reg_n_0_[20] ),
        .R(SR));
  FDRE \rd_data_reg[21] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[21]),
        .Q(\rd_data_reg_n_0_[21] ),
        .R(SR));
  FDRE \rd_data_reg[22] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[22]),
        .Q(\rd_data_reg_n_0_[22] ),
        .R(SR));
  FDRE \rd_data_reg[23] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[23]),
        .Q(\rd_data_reg_n_0_[23] ),
        .R(SR));
  FDRE \rd_data_reg[24] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[24]),
        .Q(\rd_data_reg_n_0_[24] ),
        .R(SR));
  FDRE \rd_data_reg[25] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[25]),
        .Q(\rd_data_reg_n_0_[25] ),
        .R(SR));
  FDRE \rd_data_reg[26] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[26]),
        .Q(\rd_data_reg_n_0_[26] ),
        .R(SR));
  FDRE \rd_data_reg[27] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[27]),
        .Q(p_2_in),
        .R(SR));
  FDRE \rd_data_reg[28] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[28]),
        .Q(\rd_data_reg_n_0_[28] ),
        .R(SR));
  FDRE \rd_data_reg[2] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[2]),
        .Q(\rd_data_reg_n_0_[2] ),
        .R(SR));
  FDRE \rd_data_reg[3] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[3]),
        .Q(\rd_data_reg_n_0_[3] ),
        .R(SR));
  FDRE \rd_data_reg[4] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[4]),
        .Q(\rd_data_reg_n_0_[4] ),
        .R(SR));
  FDRE \rd_data_reg[5] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[5]),
        .Q(\rd_data_reg_n_0_[5] ),
        .R(SR));
  FDRE \rd_data_reg[6] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[6]),
        .Q(\rd_data_reg_n_0_[6] ),
        .R(SR));
  FDRE \rd_data_reg[7] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[7]),
        .Q(\rd_data_reg_n_0_[7] ),
        .R(SR));
  FDRE \rd_data_reg[8] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[8]),
        .Q(\rd_data_reg_n_0_[8] ),
        .R(SR));
  FDRE \rd_data_reg[9] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(dpo[9]),
        .Q(\rd_data_reg_n_0_[9] ),
        .R(SR));
  FDRE \rd_data_reg_reg[0] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[0] ),
        .Q(rd_data_reg__0[0]),
        .R(SR));
  FDRE \rd_data_reg_reg[10] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[10] ),
        .Q(rd_data_reg__0[10]),
        .R(SR));
  FDRE \rd_data_reg_reg[11] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[11] ),
        .Q(rd_data_reg__0[11]),
        .R(SR));
  FDRE \rd_data_reg_reg[12] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[12] ),
        .Q(rd_data_reg__0[12]),
        .R(SR));
  FDRE \rd_data_reg_reg[13] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[13] ),
        .Q(rd_data_reg__0[13]),
        .R(SR));
  FDRE \rd_data_reg_reg[16] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[16] ),
        .Q(rd_data_reg__0[16]),
        .R(SR));
  FDRE \rd_data_reg_reg[17] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[17] ),
        .Q(rd_data_reg__0[17]),
        .R(SR));
  FDRE \rd_data_reg_reg[18] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[18] ),
        .Q(rd_data_reg__0[18]),
        .R(SR));
  FDRE \rd_data_reg_reg[19] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[19] ),
        .Q(rd_data_reg__0[19]),
        .R(SR));
  FDRE \rd_data_reg_reg[1] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[1] ),
        .Q(rd_data_reg__0[1]),
        .R(SR));
  FDRE \rd_data_reg_reg[20] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[20] ),
        .Q(rd_data_reg__0[20]),
        .R(SR));
  FDRE \rd_data_reg_reg[21] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[21] ),
        .Q(rd_data_reg__0[21]),
        .R(SR));
  FDRE \rd_data_reg_reg[22] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[22] ),
        .Q(rd_data_reg__0[22]),
        .R(SR));
  FDRE \rd_data_reg_reg[23] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[23] ),
        .Q(rd_data_reg__0[23]),
        .R(SR));
  FDRE \rd_data_reg_reg[24] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[24] ),
        .Q(rd_data_reg__0[24]),
        .R(SR));
  FDRE \rd_data_reg_reg[25] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[25] ),
        .Q(rd_data_reg__0[25]),
        .R(SR));
  FDRE \rd_data_reg_reg[26] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[26] ),
        .Q(rd_data_reg__0[26]),
        .R(SR));
  FDRE \rd_data_reg_reg[27] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(p_2_in),
        .Q(rd_data_reg__0[27]),
        .R(SR));
  FDRE \rd_data_reg_reg[28] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[28] ),
        .Q(rd_data_reg__0[28]),
        .R(SR));
  FDRE \rd_data_reg_reg[2] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[2] ),
        .Q(rd_data_reg__0[2]),
        .R(SR));
  FDRE \rd_data_reg_reg[3] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[3] ),
        .Q(rd_data_reg__0[3]),
        .R(SR));
  FDRE \rd_data_reg_reg[4] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[4] ),
        .Q(rd_data_reg__0[4]),
        .R(SR));
  FDRE \rd_data_reg_reg[5] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[5] ),
        .Q(rd_data_reg__0[5]),
        .R(SR));
  FDRE \rd_data_reg_reg[6] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[6] ),
        .Q(rd_data_reg__0[6]),
        .R(SR));
  FDRE \rd_data_reg_reg[7] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[7] ),
        .Q(rd_data_reg__0[7]),
        .R(SR));
  FDRE \rd_data_reg_reg[8] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[8] ),
        .Q(rd_data_reg__0[8]),
        .R(SR));
  FDRE \rd_data_reg_reg[9] 
       (.C(MMCM_RESET_reg),
        .CE(rd_enable),
        .D(\rd_data_reg_n_0_[9] ),
        .Q(rd_data_reg__0[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    rd_enable_i_2
       (.I0(rd_enable_i_3_n_0),
        .I1(rd_enable_i_4_n_0),
        .I2(rd_enable_i_5_n_0),
        .I3(rd_enable_i_6_n_0),
        .I4(rd_enable_i_7_n_0),
        .I5(rd_enable_i_8_n_0),
        .O(insert_idle_reg_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    rd_enable_i_3
       (.I0(p_2_in),
        .I1(\rd_data_reg_n_0_[0] ),
        .I2(\rd_data_reg_n_0_[20] ),
        .I3(\rd_data_reg_n_0_[3] ),
        .O(rd_enable_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    rd_enable_i_4
       (.I0(\rd_data_reg_n_0_[21] ),
        .I1(\rd_data_reg_n_0_[5] ),
        .I2(\rd_data_reg_n_0_[19] ),
        .I3(rd_occupancy[5]),
        .O(rd_enable_i_4_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    rd_enable_i_5
       (.I0(rd_occupancy[1]),
        .I1(rd_occupancy[0]),
        .I2(rd_occupancy[2]),
        .I3(rd_occupancy[4]),
        .I4(rd_occupancy[3]),
        .O(rd_enable_i_5_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    rd_enable_i_6
       (.I0(\rd_data_reg_n_0_[4] ),
        .I1(\rd_data_reg_n_0_[6] ),
        .I2(\rd_data_reg_n_0_[23] ),
        .I3(\rd_data_reg_n_0_[16] ),
        .O(rd_enable_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    rd_enable_i_7
       (.I0(\rd_data_reg_n_0_[17] ),
        .I1(\rd_data_reg_n_0_[1] ),
        .I2(\rd_data_reg_n_0_[18] ),
        .I3(\rd_data_reg_n_0_[11] ),
        .O(rd_enable_i_7_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rd_enable_i_8
       (.I0(\rd_data_reg_n_0_[22] ),
        .I1(\rd_data_reg_n_0_[7] ),
        .I2(\rd_data_reg_n_0_[2] ),
        .O(rd_enable_i_8_n_0));
  FDRE rd_enable_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(even_reg_0),
        .Q(rd_enable),
        .R(1'b0));
  FDRE \rd_occupancy_reg[0] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(rd_occupancy01_out[0]),
        .Q(rd_occupancy[0]),
        .R(SR));
  FDRE \rd_occupancy_reg[1] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(rd_occupancy01_out[1]),
        .Q(rd_occupancy[1]),
        .R(SR));
  FDRE \rd_occupancy_reg[2] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(rd_occupancy01_out[2]),
        .Q(rd_occupancy[2]),
        .R(SR));
  FDRE \rd_occupancy_reg[3] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(rd_occupancy01_out[3]),
        .Q(rd_occupancy[3]),
        .R(SR));
  CARRY4 \rd_occupancy_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\rd_occupancy_reg[3]_i_1_n_0 ,\rd_occupancy_reg[3]_i_1_n_1 ,\rd_occupancy_reg[3]_i_1_n_2 ,\rd_occupancy_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI(rd_wr_addr[3:0]),
        .O(rd_occupancy01_out[3:0]),
        .S({\reclock_wr_addrgray[4].sync_wr_addrgray_n_2 ,\reclock_wr_addrgray[3].sync_wr_addrgray_n_0 ,\reclock_wr_addrgray[3].sync_wr_addrgray_n_1 ,\reclock_wr_addrgray[2].sync_wr_addrgray_n_0 }));
  FDRE \rd_occupancy_reg[4] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(rd_occupancy01_out[4]),
        .Q(rd_occupancy[4]),
        .R(SR));
  FDSE \rd_occupancy_reg[5] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(rd_occupancy01_out[5]),
        .Q(rd_occupancy[5]),
        .S(SR));
  CARRY4 \rd_occupancy_reg[5]_i_1 
       (.CI(\rd_occupancy_reg[3]_i_1_n_0 ),
        .CO({\NLW_rd_occupancy_reg[5]_i_1_CO_UNCONNECTED [3:1],\rd_occupancy_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\reclock_wr_addrgray[5].sync_wr_addrgray_n_2 }),
        .O({\NLW_rd_occupancy_reg[5]_i_1_O_UNCONNECTED [3:2],rd_occupancy01_out[5:4]}),
        .S({1'b0,1'b0,\reclock_wr_addrgray[5].sync_wr_addrgray_n_0 ,\reclock_wr_addrgray[4].sync_wr_addrgray_n_0 }));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_5 \reclock_rd_addrgray[0].sync_rd_addrgray 
       (.Q(rd_addr_gray[0]),
        .\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95] ),
        .data_out(wr_rd_addr_gray_0));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_6 \reclock_rd_addrgray[1].sync_rd_addrgray 
       (.Q(rd_addr_gray[1]),
        .\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95] ),
        .data_out(wr_rd_addr_gray_1));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_7 \reclock_rd_addrgray[2].sync_rd_addrgray 
       (.Q(wr_addr[0]),
        .S(\reclock_rd_addrgray[2].sync_rd_addrgray_n_0 ),
        .\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95] ),
        .data_out(wr_rd_addr_gray_2),
        .data_sync_reg6_0(wr_rd_addr_gray_3),
        .data_sync_reg6_1(\reclock_rd_addrgray[5].sync_rd_addrgray_n_2 ),
        .\rd_addr_gray_reg[2] (rd_addr_gray[2]),
        .wr_rd_addr_gray_0(wr_rd_addr_gray_0),
        .wr_rd_addr_gray_1(wr_rd_addr_gray_1));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_8 \reclock_rd_addrgray[3].sync_rd_addrgray 
       (.Q(wr_addr[2:1]),
        .S({\reclock_rd_addrgray[3].sync_rd_addrgray_n_0 ,\reclock_rd_addrgray[3].sync_rd_addrgray_n_1 }),
        .\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95] ),
        .data_out(wr_rd_addr_gray_3),
        .data_sync_reg6_0(wr_rd_addr_gray_4),
        .data_sync_reg6_1(wr_rd_addr_gray_5),
        .\rd_addr_gray_reg[3] (rd_addr_gray[3]),
        .wr_rd_addr_gray_1(wr_rd_addr_gray_1),
        .wr_rd_addr_gray_2(wr_rd_addr_gray_2));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_9 \reclock_rd_addrgray[4].sync_rd_addrgray 
       (.Q(wr_addr[4:3]),
        .S(\reclock_rd_addrgray[4].sync_rd_addrgray_n_0 ),
        .\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95] ),
        .data_out(wr_rd_addr_gray_4),
        .data_sync_reg6_0(wr_rd_addr_gray_5),
        .\rd_addr_gray_reg[4] (rd_addr_gray[4]),
        .\wr_occupancy_reg[5] (\reclock_rd_addrgray[4].sync_rd_addrgray_n_2 ),
        .wr_rd_addr_gray_3(wr_rd_addr_gray_3));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_10 \reclock_rd_addrgray[5].sync_rd_addrgray 
       (.ADDRD(wr_addr[5]),
        .S(\reclock_rd_addrgray[5].sync_rd_addrgray_n_0 ),
        .\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95] ),
        .data_in(rd_addr_plus1[5]),
        .data_out(wr_rd_addr_gray_5),
        .\wr_occupancy_reg[3] (\reclock_rd_addrgray[5].sync_rd_addrgray_n_2 ),
        .wr_rd_addr_gray_4(wr_rd_addr_gray_4));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_11 \reclock_wr_addrgray[0].sync_wr_addrgray 
       (.MMCM_RESET_reg(MMCM_RESET_reg),
        .Q(wr_addr_gray[0]),
        .data_out(rd_wr_addr_gray_0));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_12 \reclock_wr_addrgray[1].sync_wr_addrgray 
       (.MMCM_RESET_reg(MMCM_RESET_reg),
        .Q(wr_addr_gray[1]),
        .data_out(p_4_out));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_13 \reclock_wr_addrgray[2].sync_wr_addrgray 
       (.MMCM_RESET_reg(MMCM_RESET_reg),
        .Q(rd_addr[0]),
        .S(\reclock_wr_addrgray[2].sync_wr_addrgray_n_0 ),
        .data_out(p_3_out),
        .data_sync_reg6_0(p_2_out),
        .p_4_out(p_4_out),
        .rd_wr_addr(rd_wr_addr[4]),
        .rd_wr_addr_gray_0(rd_wr_addr_gray_0),
        .\wr_addr_gray_reg[2] (wr_addr_gray[2]));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_14 \reclock_wr_addrgray[3].sync_wr_addrgray 
       (.MMCM_RESET_reg(MMCM_RESET_reg),
        .Q(rd_addr[2:1]),
        .S({\reclock_wr_addrgray[3].sync_wr_addrgray_n_0 ,\reclock_wr_addrgray[3].sync_wr_addrgray_n_1 }),
        .data_out(p_2_out),
        .data_sync_reg6_0(p_1_out),
        .data_sync_reg6_1(rd_wr_addr_gray_5),
        .p_3_out(p_3_out),
        .p_4_out(p_4_out),
        .\wr_addr_gray_reg[3] (wr_addr_gray[3]));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_15 \reclock_wr_addrgray[4].sync_wr_addrgray 
       (.MMCM_RESET_reg(MMCM_RESET_reg),
        .Q(rd_addr[4:3]),
        .S(\reclock_wr_addrgray[4].sync_wr_addrgray_n_0 ),
        .data_out(p_1_out),
        .data_sync_reg6_0(rd_wr_addr_gray_5),
        .p_2_out(p_2_out),
        .p_3_out(p_3_out),
        .p_4_out(p_4_out),
        .\rd_occupancy_reg[3] (\reclock_wr_addrgray[4].sync_wr_addrgray_n_2 ),
        .rd_wr_addr({rd_wr_addr[2],rd_wr_addr[0]}),
        .rd_wr_addr_gray_0(rd_wr_addr_gray_0),
        .\wr_addr_gray_reg[4] (wr_addr_gray[4]));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_16 \reclock_wr_addrgray[5].sync_wr_addrgray 
       (.MMCM_RESET_reg(MMCM_RESET_reg),
        .Q(rd_addr[5]),
        .S(\reclock_wr_addrgray[5].sync_wr_addrgray_n_0 ),
        .data_out(rd_wr_addr_gray_5),
        .p_1_out(p_1_out),
        .p_2_out(p_2_out),
        .p_3_out(p_3_out),
        .p_4_out(p_4_out),
        .\rd_occupancy_reg[3] (rd_wr_addr[4]),
        .rd_wr_addr({\reclock_wr_addrgray[5].sync_wr_addrgray_n_2 ,rd_wr_addr[3],rd_wr_addr[1]}),
        .\wr_addr_gray_reg[5] (wr_addr_gray[5]));
  FDRE remove_idle_reg
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(initialize_ram_complete_reg_1),
        .Q(D),
        .R(rxreset_rec));
  FDRE #(
    .INIT(1'b0)) 
    reset_modified_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(initialize_ram_complete_sync_ris_edg_reg_0),
        .Q(SR),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000800180010001)) 
    rxbuferr_i_2
       (.I0(rd_occupancy[3]),
        .I1(rd_occupancy[4]),
        .I2(rd_occupancy[5]),
        .I3(rd_occupancy[2]),
        .I4(rd_occupancy[0]),
        .I5(rd_occupancy[1]),
        .O(rxbuferr0));
  FDRE rxbuferr_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(rxbuferr_reg_0),
        .Q(rxbufstatus),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxchariscomma_usr_i_1
       (.I0(rd_data_reg__0[28]),
        .I1(\rxdata_usr_reg[7]_0 ),
        .I2(rd_data_reg__0[12]),
        .O(rxchariscomma_usr_i_1_n_0));
  FDRE rxchariscomma_usr_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(rxchariscomma_usr_i_1_n_0),
        .Q(rxchariscomma),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxcharisk_usr_i_1
       (.I0(rd_data_reg__0[27]),
        .I1(\rxdata_usr_reg[7]_0 ),
        .I2(rd_data_reg__0[11]),
        .O(rxcharisk_usr_i_1_n_0));
  FDRE rxcharisk_usr_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(rxcharisk_usr_i_1_n_0),
        .Q(rxcharisk),
        .R(SR));
  LUT3 #(
    .INIT(8'hBA)) 
    \rxclkcorcnt[0]_i_1 
       (.I0(insert_idle_reg__0),
        .I1(rxclkcorcnt[0]),
        .I2(rd_data_reg__0[13]),
        .O(\rxclkcorcnt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00A2)) 
    \rxclkcorcnt[2]_i_1 
       (.I0(insert_idle_reg__0),
        .I1(rd_data_reg__0[13]),
        .I2(rxclkcorcnt[0]),
        .I3(SR),
        .O(\rxclkcorcnt[2]_i_1_n_0 ));
  FDRE \rxclkcorcnt_reg[0] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(\rxclkcorcnt[0]_i_1_n_0 ),
        .Q(rxclkcorcnt[0]),
        .R(SR));
  FDRE \rxclkcorcnt_reg[2] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(\rxclkcorcnt[2]_i_1_n_0 ),
        .Q(rxclkcorcnt[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rxdata_usr[0]_i_1 
       (.I0(rd_data_reg__0[16]),
        .I1(rd_data_reg__0[0]),
        .I2(\rxdata_usr_reg[7]_0 ),
        .O(\rxdata_usr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rxdata_usr[1]_i_1 
       (.I0(rd_data_reg__0[17]),
        .I1(rd_data_reg__0[1]),
        .I2(\rxdata_usr_reg[7]_0 ),
        .O(\rxdata_usr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rxdata_usr[2]_i_1 
       (.I0(rd_data_reg__0[18]),
        .I1(rd_data_reg__0[2]),
        .I2(\rxdata_usr_reg[7]_0 ),
        .O(\rxdata_usr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rxdata_usr[3]_i_1 
       (.I0(rd_data_reg__0[19]),
        .I1(rd_data_reg__0[3]),
        .I2(\rxdata_usr_reg[7]_0 ),
        .O(\rxdata_usr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rxdata_usr[4]_i_1 
       (.I0(rd_data_reg__0[20]),
        .I1(rd_data_reg__0[4]),
        .I2(\rxdata_usr_reg[7]_0 ),
        .O(\rxdata_usr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rxdata_usr[5]_i_1 
       (.I0(rd_data_reg__0[21]),
        .I1(rd_data_reg__0[5]),
        .I2(\rxdata_usr_reg[7]_0 ),
        .O(\rxdata_usr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rxdata_usr[6]_i_1 
       (.I0(rd_data_reg__0[22]),
        .I1(rd_data_reg__0[6]),
        .I2(\rxdata_usr_reg[7]_0 ),
        .O(\rxdata_usr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rxdata_usr[7]_i_1 
       (.I0(rd_data_reg__0[23]),
        .I1(rd_data_reg__0[7]),
        .I2(\rxdata_usr_reg[7]_0 ),
        .O(\rxdata_usr[7]_i_1_n_0 ));
  FDRE \rxdata_usr_reg[0] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(\rxdata_usr[0]_i_1_n_0 ),
        .Q(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] [0]),
        .R(SR));
  FDRE \rxdata_usr_reg[1] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(\rxdata_usr[1]_i_1_n_0 ),
        .Q(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] [1]),
        .R(SR));
  FDRE \rxdata_usr_reg[2] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(\rxdata_usr[2]_i_1_n_0 ),
        .Q(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] [2]),
        .R(SR));
  FDRE \rxdata_usr_reg[3] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(\rxdata_usr[3]_i_1_n_0 ),
        .Q(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] [3]),
        .R(SR));
  FDRE \rxdata_usr_reg[4] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(\rxdata_usr[4]_i_1_n_0 ),
        .Q(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] [4]),
        .R(SR));
  FDRE \rxdata_usr_reg[5] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(\rxdata_usr[5]_i_1_n_0 ),
        .Q(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] [5]),
        .R(SR));
  FDRE \rxdata_usr_reg[6] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(\rxdata_usr[6]_i_1_n_0 ),
        .Q(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] [6]),
        .R(SR));
  FDRE \rxdata_usr_reg[7] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(\rxdata_usr[7]_i_1_n_0 ),
        .Q(\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] [7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxdisperr_usr_i_1
       (.I0(rd_data_reg__0[26]),
        .I1(\rxdata_usr_reg[7]_0 ),
        .I2(rd_data_reg__0[10]),
        .O(rxdisperr_usr_i_1_n_0));
  FDRE rxdisperr_usr_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(rxdisperr_usr_i_1_n_0),
        .Q(rxdisperr),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    rxnotintable_usr_i_1
       (.I0(rd_data_reg__0[25]),
        .I1(\rxdata_usr_reg[7]_0 ),
        .I2(rd_data_reg__0[9]),
        .O(rxnotintable_usr_i_1_n_0));
  FDRE rxnotintable_usr_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(rxnotintable_usr_i_1_n_0),
        .Q(rxnotintable),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxrundisp_usr_i_1
       (.I0(rd_data_reg__0[24]),
        .I1(\rxdata_usr_reg[7]_0 ),
        .I2(rd_data_reg__0[8]),
        .O(rxrundisp_usr_i_1_n_0));
  FDRE rxrundisp_usr_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(rxrundisp_usr_i_1_n_0),
        .Q(rxrundisp),
        .R(SR));
  FDRE #(
    .INIT(1'b1)) 
    start_reg
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(1'b0),
        .Q(start),
        .R(1'b0));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_17 sync_initialize_ram_comp
       (.MMCM_RESET_reg(MMCM_RESET_reg),
        .data_out(initialize_ram_complete_sync),
        .initialize_ram_complete_reg(data_in),
        .initialize_ram_complete_sync_reg1(initialize_ram_complete_sync_reg1),
        .initialize_ram_complete_sync_ris_edg_reg(sync_initialize_ram_comp_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    \wr_addr[5]_i_1 
       (.I0(wr_addr_plus1[5]),
        .I1(wr_enable),
        .I2(initialize_ram_complete_pulse),
        .I3(wr_addr[5]),
        .O(\wr_addr[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_gray[0]_i_1 
       (.I0(p_1_in23_in),
        .I1(\wr_addr_plus2_reg_n_0_[0] ),
        .O(p_5_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_gray[1]_i_1 
       (.I0(p_2_in24_in),
        .I1(p_1_in23_in),
        .O(p_5_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_gray[2]_i_1 
       (.I0(p_3_in26_in),
        .I1(p_2_in24_in),
        .O(p_5_out[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_gray[3]_i_1 
       (.I0(p_4_in28_in),
        .I1(p_3_in26_in),
        .O(p_5_out[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_gray[4]_i_1 
       (.I0(\wr_addr_plus2_reg_n_0_[5] ),
        .I1(p_4_in28_in),
        .O(p_5_out[4]));
  FDSE \wr_addr_gray_reg[0] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(p_5_out[0]),
        .Q(wr_addr_gray[0]),
        .S(rxreset_rec));
  FDRE \wr_addr_gray_reg[1] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(p_5_out[1]),
        .Q(wr_addr_gray[1]),
        .R(rxreset_rec));
  FDRE \wr_addr_gray_reg[2] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(p_5_out[2]),
        .Q(wr_addr_gray[2]),
        .R(rxreset_rec));
  FDRE \wr_addr_gray_reg[3] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(p_5_out[3]),
        .Q(wr_addr_gray[3]),
        .R(rxreset_rec));
  FDSE \wr_addr_gray_reg[4] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(p_5_out[4]),
        .Q(wr_addr_gray[4]),
        .S(rxreset_rec));
  FDSE \wr_addr_gray_reg[5] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_addr_plus2_reg_n_0_[5] ),
        .Q(wr_addr_gray[5]),
        .S(rxreset_rec));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    \wr_addr_plus1[5]_i_1 
       (.I0(\wr_addr_plus2_reg_n_0_[5] ),
        .I1(wr_enable),
        .I2(initialize_ram_complete_pulse),
        .I3(wr_addr_plus1[5]),
        .O(\wr_addr_plus1[5]_i_1_n_0 ));
  FDSE \wr_addr_plus1_reg[0] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(wr_enable),
        .D(\wr_addr_plus2_reg_n_0_[0] ),
        .Q(wr_addr_plus1[0]),
        .S(reset_sync6));
  FDRE \wr_addr_plus1_reg[1] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(wr_enable),
        .D(p_1_in23_in),
        .Q(wr_addr_plus1[1]),
        .R(reset_sync6));
  FDRE \wr_addr_plus1_reg[2] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(wr_enable),
        .D(p_2_in24_in),
        .Q(wr_addr_plus1[2]),
        .R(reset_sync6));
  FDRE \wr_addr_plus1_reg[3] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(wr_enable),
        .D(p_3_in26_in),
        .Q(wr_addr_plus1[3]),
        .R(reset_sync6));
  FDRE \wr_addr_plus1_reg[4] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(wr_enable),
        .D(p_4_in28_in),
        .Q(wr_addr_plus1[4]),
        .R(reset_sync6));
  FDRE \wr_addr_plus1_reg[5] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_addr_plus1[5]_i_1_n_0 ),
        .Q(wr_addr_plus1[5]),
        .R(rxreset_rec));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_addr_plus2[0]_i_1 
       (.I0(\wr_addr_plus2_reg_n_0_[0] ),
        .O(\wr_addr_plus2[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_plus2[1]_i_1 
       (.I0(\wr_addr_plus2_reg_n_0_[0] ),
        .I1(p_1_in23_in),
        .O(\wr_addr_plus2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_addr_plus2[2]_i_1 
       (.I0(\wr_addr_plus2_reg_n_0_[0] ),
        .I1(p_1_in23_in),
        .I2(p_2_in24_in),
        .O(\wr_addr_plus2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_addr_plus2[3]_i_1 
       (.I0(p_1_in23_in),
        .I1(\wr_addr_plus2_reg_n_0_[0] ),
        .I2(p_2_in24_in),
        .I3(p_3_in26_in),
        .O(\wr_addr_plus2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wr_addr_plus2[4]_i_1 
       (.I0(p_2_in24_in),
        .I1(\wr_addr_plus2_reg_n_0_[0] ),
        .I2(p_1_in23_in),
        .I3(p_3_in26_in),
        .I4(p_4_in28_in),
        .O(\wr_addr_plus2[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFF80)) 
    \wr_addr_plus2[5]_i_1 
       (.I0(p_4_in28_in),
        .I1(\wr_addr_plus2[5]_i_2_n_0 ),
        .I2(wr_enable),
        .I3(initialize_ram_complete_pulse),
        .I4(\wr_addr_plus2_reg_n_0_[5] ),
        .O(\wr_addr_plus2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \wr_addr_plus2[5]_i_2 
       (.I0(p_3_in26_in),
        .I1(p_1_in23_in),
        .I2(\wr_addr_plus2_reg_n_0_[0] ),
        .I3(p_2_in24_in),
        .O(\wr_addr_plus2[5]_i_2_n_0 ));
  FDRE \wr_addr_plus2_reg[0] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(wr_enable),
        .D(\wr_addr_plus2[0]_i_1_n_0 ),
        .Q(\wr_addr_plus2_reg_n_0_[0] ),
        .R(reset_sync6));
  FDSE \wr_addr_plus2_reg[1] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(wr_enable),
        .D(\wr_addr_plus2[1]_i_1_n_0 ),
        .Q(p_1_in23_in),
        .S(reset_sync6));
  FDRE \wr_addr_plus2_reg[2] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(wr_enable),
        .D(\wr_addr_plus2[2]_i_1_n_0 ),
        .Q(p_2_in24_in),
        .R(reset_sync6));
  FDRE \wr_addr_plus2_reg[3] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(wr_enable),
        .D(\wr_addr_plus2[3]_i_1_n_0 ),
        .Q(p_3_in26_in),
        .R(reset_sync6));
  FDRE \wr_addr_plus2_reg[4] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(wr_enable),
        .D(\wr_addr_plus2[4]_i_1_n_0 ),
        .Q(p_4_in28_in),
        .R(reset_sync6));
  FDRE \wr_addr_plus2_reg[5] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_addr_plus2[5]_i_1_n_0 ),
        .Q(\wr_addr_plus2_reg_n_0_[5] ),
        .R(rxreset_rec));
  FDRE \wr_addr_reg[0] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(wr_enable),
        .D(wr_addr_plus1[0]),
        .Q(wr_addr[0]),
        .R(reset_sync6));
  FDRE \wr_addr_reg[1] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(wr_enable),
        .D(wr_addr_plus1[1]),
        .Q(wr_addr[1]),
        .R(reset_sync6));
  FDRE \wr_addr_reg[2] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(wr_enable),
        .D(wr_addr_plus1[2]),
        .Q(wr_addr[2]),
        .R(reset_sync6));
  FDRE \wr_addr_reg[3] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(wr_enable),
        .D(wr_addr_plus1[3]),
        .Q(wr_addr[3]),
        .R(reset_sync6));
  FDRE \wr_addr_reg[4] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(wr_enable),
        .D(wr_addr_plus1[4]),
        .Q(wr_addr[4]),
        .R(reset_sync6));
  FDRE \wr_addr_reg[5] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_addr[5]_i_1_n_0 ),
        .Q(wr_addr[5]),
        .R(rxreset_rec));
  FDRE \wr_data_reg[0] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [0]),
        .Q(\wr_data_reg_n_0_[0] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[10] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [9]),
        .Q(\wr_data_reg_n_0_[10] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[11] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [10]),
        .Q(\wr_data_reg_n_0_[11] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[12] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [11]),
        .Q(\wr_data_reg_n_0_[12] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[16] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [12]),
        .Q(\wr_data_reg_n_0_[16] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[17] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [13]),
        .Q(\wr_data_reg_n_0_[17] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[18] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [14]),
        .Q(\wr_data_reg_n_0_[18] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[19] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [15]),
        .Q(\wr_data_reg_n_0_[19] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[1] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [1]),
        .Q(\wr_data_reg_n_0_[1] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[20] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [16]),
        .Q(\wr_data_reg_n_0_[20] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[21] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [17]),
        .Q(\wr_data_reg_n_0_[21] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[22] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [18]),
        .Q(\wr_data_reg_n_0_[22] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[23] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [19]),
        .Q(\wr_data_reg_n_0_[23] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[25] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [20]),
        .Q(\wr_data_reg_n_0_[25] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[26] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [21]),
        .Q(\wr_data_reg_n_0_[26] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[27] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [22]),
        .Q(p_0_in),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[28] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [23]),
        .Q(\wr_data_reg_n_0_[28] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[2] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [2]),
        .Q(\wr_data_reg_n_0_[2] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[3] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [3]),
        .Q(\wr_data_reg_n_0_[3] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[4] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [4]),
        .Q(\wr_data_reg_n_0_[4] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[5] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [5]),
        .Q(\wr_data_reg_n_0_[5] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[6] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [6]),
        .Q(\wr_data_reg_n_0_[6] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[7] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [7]),
        .Q(\wr_data_reg_n_0_[7] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg[9] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95]_0 [8]),
        .Q(\wr_data_reg_n_0_[9] ),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[0] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[0] ),
        .Q(wr_data_reg__0[0]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[10] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[10] ),
        .Q(wr_data_reg__0[10]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[11] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[11] ),
        .Q(wr_data_reg__0[11]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[12] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[12] ),
        .Q(wr_data_reg__0[12]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[13] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(D),
        .Q(wr_data_reg__0[13]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[16] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[16] ),
        .Q(wr_data_reg__0[16]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[17] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[17] ),
        .Q(wr_data_reg__0[17]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[18] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[18] ),
        .Q(wr_data_reg__0[18]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[19] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[19] ),
        .Q(wr_data_reg__0[19]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[1] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[1] ),
        .Q(wr_data_reg__0[1]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[20] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[20] ),
        .Q(wr_data_reg__0[20]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[21] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[21] ),
        .Q(wr_data_reg__0[21]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[22] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[22] ),
        .Q(wr_data_reg__0[22]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[23] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[23] ),
        .Q(wr_data_reg__0[23]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[25] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[25] ),
        .Q(wr_data_reg__0[25]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[26] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[26] ),
        .Q(wr_data_reg__0[26]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[27] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(p_0_in),
        .Q(wr_data_reg__0[27]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[28] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[28] ),
        .Q(wr_data_reg__0[28]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[2] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[2] ),
        .Q(wr_data_reg__0[2]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[3] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[3] ),
        .Q(wr_data_reg__0[3]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[4] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[4] ),
        .Q(wr_data_reg__0[4]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[5] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[5] ),
        .Q(wr_data_reg__0[5]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[6] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[6] ),
        .Q(wr_data_reg__0[6]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[7] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[7] ),
        .Q(wr_data_reg__0[7]),
        .R(reset_sync6_0));
  FDRE \wr_data_reg_reg[9] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\wr_data_reg_n_0_[9] ),
        .Q(wr_data_reg__0[9]),
        .R(reset_sync6_0));
  LUT2 #(
    .INIT(4'h7)) 
    wr_enable_i_1
       (.I0(data_in),
        .I1(wr_enable1),
        .O(wr_enable_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    wr_enable_i_2
       (.I0(k28p5_wr_reg_i_2_n_0),
        .I1(wr_enable_i_3_n_0),
        .I2(wr_enable_i_4_n_0),
        .I3(wr_enable_i_5_n_0),
        .I4(wr_enable_i_6_n_0),
        .I5(d16p2_wr_reg_i_2_n_0),
        .O(wr_enable1));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h08)) 
    wr_enable_i_3
       (.I0(\wr_data_reg_n_0_[21] ),
        .I1(\wr_data_reg_n_0_[23] ),
        .I2(\wr_data_reg_n_0_[17] ),
        .O(wr_enable_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    wr_enable_i_4
       (.I0(wr_occupancy[3]),
        .I1(wr_occupancy[1]),
        .I2(wr_occupancy[4]),
        .I3(wr_occupancy[2]),
        .O(wr_enable_i_4_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    wr_enable_i_5
       (.I0(wr_occupancy[5]),
        .I1(D),
        .I2(k28p5_wr_reg),
        .I3(d16p2_wr_reg),
        .O(wr_enable_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h02)) 
    wr_enable_i_6
       (.I0(\wr_data_reg_n_0_[4] ),
        .I1(\wr_data_reg_n_0_[3] ),
        .I2(\wr_data_reg_n_0_[0] ),
        .O(wr_enable_i_6_n_0));
  FDRE wr_enable_reg
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(wr_enable_i_1_n_0),
        .Q(wr_enable),
        .R(rxreset_rec));
  FDRE \wr_occupancy_reg[1] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(wr_occupancy00_out[1]),
        .Q(wr_occupancy[1]),
        .R(reset_sync6_0));
  FDRE \wr_occupancy_reg[2] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(wr_occupancy00_out[2]),
        .Q(wr_occupancy[2]),
        .R(reset_sync6_0));
  FDRE \wr_occupancy_reg[3] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(wr_occupancy00_out[3]),
        .Q(wr_occupancy[3]),
        .R(reset_sync6_0));
  CARRY4 \wr_occupancy_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\wr_occupancy_reg[3]_i_1_n_0 ,\wr_occupancy_reg[3]_i_1_n_1 ,\wr_occupancy_reg[3]_i_1_n_2 ,\wr_occupancy_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI(wr_addr[3:0]),
        .O({wr_occupancy00_out[3:1],\NLW_wr_occupancy_reg[3]_i_1_O_UNCONNECTED [0]}),
        .S({\reclock_rd_addrgray[4].sync_rd_addrgray_n_0 ,\reclock_rd_addrgray[3].sync_rd_addrgray_n_0 ,\reclock_rd_addrgray[3].sync_rd_addrgray_n_1 ,\reclock_rd_addrgray[2].sync_rd_addrgray_n_0 }));
  FDRE \wr_occupancy_reg[4] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(wr_occupancy00_out[4]),
        .Q(wr_occupancy[4]),
        .R(reset_sync6_0));
  FDSE \wr_occupancy_reg[5] 
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(wr_occupancy00_out[5]),
        .Q(wr_occupancy[5]),
        .S(reset_sync6_0));
  CARRY4 \wr_occupancy_reg[5]_i_1 
       (.CI(\wr_occupancy_reg[3]_i_1_n_0 ),
        .CO({\NLW_wr_occupancy_reg[5]_i_1_CO_UNCONNECTED [3:1],\wr_occupancy_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,wr_addr[4]}),
        .O({\NLW_wr_occupancy_reg[5]_i_1_O_UNCONNECTED [3:2],wr_occupancy00_out[5:4]}),
        .S({1'b0,1'b0,\reclock_rd_addrgray[5].sync_rd_addrgray_n_0 ,\reclock_rd_addrgray[4].sync_rd_addrgray_n_2 }));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_rx_rate_adapt" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_rx_rate_adapt
   (gmii_rx_dv,
    gmii_rx_er,
    gmii_rxd,
    sync_reset,
    sgmii_clk_en_reg,
    gmii_rx_dv_int,
    MMCM_RESET_reg,
    gmii_rx_er_int,
    D);
  output gmii_rx_dv;
  output gmii_rx_er;
  output [7:0]gmii_rxd;
  input sync_reset;
  input sgmii_clk_en_reg;
  input gmii_rx_dv_int;
  input MMCM_RESET_reg;
  input gmii_rx_er_int;
  input [7:0]D;

  wire [7:0]D;
  wire MMCM_RESET_reg;
  wire gmii_rx_dv;
  wire gmii_rx_dv_int;
  wire gmii_rx_er;
  wire gmii_rx_er_int;
  wire [7:0]gmii_rxd;
  wire muxsel;
  wire muxsel_i_1_n_0;
  wire [3:0]p_0_in;
  wire rx_dv_aligned;
  wire rx_dv_aligned_i_1_n_0;
  wire rx_dv_reg1;
  wire rx_dv_reg2;
  wire rx_er_aligned;
  wire rx_er_aligned_0;
  wire rx_er_reg1;
  wire rx_er_reg2;
  wire [7:0]rxd_aligned;
  wire \rxd_aligned[0]_i_1_n_0 ;
  wire \rxd_aligned[1]_i_1_n_0 ;
  wire \rxd_aligned[2]_i_1_n_0 ;
  wire \rxd_aligned[3]_i_1_n_0 ;
  wire \rxd_aligned[4]_i_1_n_0 ;
  wire \rxd_aligned[5]_i_1_n_0 ;
  wire \rxd_aligned[6]_i_1_n_0 ;
  wire \rxd_aligned[7]_i_1_n_0 ;
  wire \rxd_reg1_reg_n_0_[0] ;
  wire \rxd_reg1_reg_n_0_[1] ;
  wire \rxd_reg1_reg_n_0_[2] ;
  wire \rxd_reg1_reg_n_0_[3] ;
  wire [7:0]rxd_reg2;
  wire sfd_aligned;
  wire sfd_enable;
  wire sfd_enable_i_1_n_0;
  wire sfd_enable_i_4_n_0;
  wire sfd_enable_i_5_n_0;
  wire sfd_misaligned;
  wire sgmii_clk_en_reg;
  wire sync_reset;

  FDRE #(
    .INIT(1'b0)) 
    gmii_rx_dv_out_reg
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(rx_dv_aligned),
        .Q(gmii_rx_dv),
        .R(sync_reset));
  FDRE #(
    .INIT(1'b0)) 
    gmii_rx_er_out_reg
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(rx_er_aligned),
        .Q(gmii_rx_er),
        .R(sync_reset));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[0] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(rxd_aligned[0]),
        .Q(gmii_rxd[0]),
        .R(sync_reset));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[1] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(rxd_aligned[1]),
        .Q(gmii_rxd[1]),
        .R(sync_reset));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[2] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(rxd_aligned[2]),
        .Q(gmii_rxd[2]),
        .R(sync_reset));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[3] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(rxd_aligned[3]),
        .Q(gmii_rxd[3]),
        .R(sync_reset));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[4] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(rxd_aligned[4]),
        .Q(gmii_rxd[4]),
        .R(sync_reset));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[5] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(rxd_aligned[5]),
        .Q(gmii_rxd[5]),
        .R(sync_reset));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[6] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(rxd_aligned[6]),
        .Q(gmii_rxd[6]),
        .R(sync_reset));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[7] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(rxd_aligned[7]),
        .Q(gmii_rxd[7]),
        .R(sync_reset));
  LUT6 #(
    .INIT(64'h000A0A0A0E0A0A0A)) 
    muxsel_i_1
       (.I0(muxsel),
        .I1(sfd_misaligned),
        .I2(sync_reset),
        .I3(sgmii_clk_en_reg),
        .I4(sfd_enable),
        .I5(sfd_aligned),
        .O(muxsel_i_1_n_0));
  FDRE muxsel_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(muxsel_i_1_n_0),
        .Q(muxsel),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    rx_dv_aligned_i_1
       (.I0(rx_dv_reg1),
        .I1(muxsel),
        .I2(rx_dv_reg2),
        .O(rx_dv_aligned_i_1_n_0));
  FDRE rx_dv_aligned_reg
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(rx_dv_aligned_i_1_n_0),
        .Q(rx_dv_aligned),
        .R(sync_reset));
  FDRE rx_dv_reg1_reg
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(gmii_rx_dv_int),
        .Q(rx_dv_reg1),
        .R(sync_reset));
  FDRE rx_dv_reg2_reg
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(rx_dv_reg1),
        .Q(rx_dv_reg2),
        .R(sync_reset));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    rx_er_aligned_i_1
       (.I0(rx_er_reg1),
        .I1(muxsel),
        .I2(rx_er_reg2),
        .O(rx_er_aligned_0));
  FDRE rx_er_aligned_reg
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(rx_er_aligned_0),
        .Q(rx_er_aligned),
        .R(sync_reset));
  FDRE rx_er_reg1_reg
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(gmii_rx_er_int),
        .Q(rx_er_reg1),
        .R(sync_reset));
  FDRE rx_er_reg2_reg
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(rx_er_reg1),
        .Q(rx_er_reg2),
        .R(sync_reset));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[0]_i_1 
       (.I0(rxd_reg2[4]),
        .I1(muxsel),
        .I2(rxd_reg2[0]),
        .O(\rxd_aligned[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[1]_i_1 
       (.I0(rxd_reg2[5]),
        .I1(muxsel),
        .I2(rxd_reg2[1]),
        .O(\rxd_aligned[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[2]_i_1 
       (.I0(rxd_reg2[6]),
        .I1(muxsel),
        .I2(rxd_reg2[2]),
        .O(\rxd_aligned[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[3]_i_1 
       (.I0(rxd_reg2[7]),
        .I1(muxsel),
        .I2(rxd_reg2[3]),
        .O(\rxd_aligned[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[4]_i_1 
       (.I0(\rxd_reg1_reg_n_0_[0] ),
        .I1(muxsel),
        .I2(rxd_reg2[4]),
        .O(\rxd_aligned[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[5]_i_1 
       (.I0(\rxd_reg1_reg_n_0_[1] ),
        .I1(muxsel),
        .I2(rxd_reg2[5]),
        .O(\rxd_aligned[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[6]_i_1 
       (.I0(\rxd_reg1_reg_n_0_[2] ),
        .I1(muxsel),
        .I2(rxd_reg2[6]),
        .O(\rxd_aligned[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[7]_i_1 
       (.I0(\rxd_reg1_reg_n_0_[3] ),
        .I1(muxsel),
        .I2(rxd_reg2[7]),
        .O(\rxd_aligned[7]_i_1_n_0 ));
  FDRE \rxd_aligned_reg[0] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(\rxd_aligned[0]_i_1_n_0 ),
        .Q(rxd_aligned[0]),
        .R(sync_reset));
  FDRE \rxd_aligned_reg[1] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(\rxd_aligned[1]_i_1_n_0 ),
        .Q(rxd_aligned[1]),
        .R(sync_reset));
  FDRE \rxd_aligned_reg[2] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(\rxd_aligned[2]_i_1_n_0 ),
        .Q(rxd_aligned[2]),
        .R(sync_reset));
  FDRE \rxd_aligned_reg[3] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(\rxd_aligned[3]_i_1_n_0 ),
        .Q(rxd_aligned[3]),
        .R(sync_reset));
  FDRE \rxd_aligned_reg[4] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(\rxd_aligned[4]_i_1_n_0 ),
        .Q(rxd_aligned[4]),
        .R(sync_reset));
  FDRE \rxd_aligned_reg[5] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(\rxd_aligned[5]_i_1_n_0 ),
        .Q(rxd_aligned[5]),
        .R(sync_reset));
  FDRE \rxd_aligned_reg[6] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(\rxd_aligned[6]_i_1_n_0 ),
        .Q(rxd_aligned[6]),
        .R(sync_reset));
  FDRE \rxd_aligned_reg[7] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(\rxd_aligned[7]_i_1_n_0 ),
        .Q(rxd_aligned[7]),
        .R(sync_reset));
  FDRE \rxd_reg1_reg[0] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(D[0]),
        .Q(\rxd_reg1_reg_n_0_[0] ),
        .R(sync_reset));
  FDRE \rxd_reg1_reg[1] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(D[1]),
        .Q(\rxd_reg1_reg_n_0_[1] ),
        .R(sync_reset));
  FDRE \rxd_reg1_reg[2] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(D[2]),
        .Q(\rxd_reg1_reg_n_0_[2] ),
        .R(sync_reset));
  FDRE \rxd_reg1_reg[3] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(D[3]),
        .Q(\rxd_reg1_reg_n_0_[3] ),
        .R(sync_reset));
  FDRE \rxd_reg1_reg[4] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(D[4]),
        .Q(p_0_in[0]),
        .R(sync_reset));
  FDRE \rxd_reg1_reg[5] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(D[5]),
        .Q(p_0_in[1]),
        .R(sync_reset));
  FDRE \rxd_reg1_reg[6] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(D[6]),
        .Q(p_0_in[2]),
        .R(sync_reset));
  FDRE \rxd_reg1_reg[7] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(D[7]),
        .Q(p_0_in[3]),
        .R(sync_reset));
  FDRE \rxd_reg2_reg[0] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(\rxd_reg1_reg_n_0_[0] ),
        .Q(rxd_reg2[0]),
        .R(sync_reset));
  FDRE \rxd_reg2_reg[1] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(\rxd_reg1_reg_n_0_[1] ),
        .Q(rxd_reg2[1]),
        .R(sync_reset));
  FDRE \rxd_reg2_reg[2] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(\rxd_reg1_reg_n_0_[2] ),
        .Q(rxd_reg2[2]),
        .R(sync_reset));
  FDRE \rxd_reg2_reg[3] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(\rxd_reg1_reg_n_0_[3] ),
        .Q(rxd_reg2[3]),
        .R(sync_reset));
  FDRE \rxd_reg2_reg[4] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(p_0_in[0]),
        .Q(rxd_reg2[4]),
        .R(sync_reset));
  FDRE \rxd_reg2_reg[5] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(p_0_in[1]),
        .Q(rxd_reg2[5]),
        .R(sync_reset));
  FDRE \rxd_reg2_reg[6] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(p_0_in[2]),
        .Q(rxd_reg2[6]),
        .R(sync_reset));
  FDRE \rxd_reg2_reg[7] 
       (.C(MMCM_RESET_reg),
        .CE(sgmii_clk_en_reg),
        .D(p_0_in[3]),
        .Q(rxd_reg2[7]),
        .R(sync_reset));
  LUT6 #(
    .INIT(64'h5D5D5DFF08080808)) 
    sfd_enable_i_1
       (.I0(sgmii_clk_en_reg),
        .I1(gmii_rx_dv_int),
        .I2(rx_dv_reg1),
        .I3(sfd_aligned),
        .I4(sfd_misaligned),
        .I5(sfd_enable),
        .O(sfd_enable_i_1_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    sfd_enable_i_2
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .I4(sfd_enable_i_4_n_0),
        .O(sfd_aligned));
  LUT5 #(
    .INIT(32'h00200000)) 
    sfd_enable_i_3
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .I4(sfd_enable_i_5_n_0),
        .O(sfd_misaligned));
  LUT4 #(
    .INIT(16'h0400)) 
    sfd_enable_i_4
       (.I0(\rxd_reg1_reg_n_0_[1] ),
        .I1(\rxd_reg1_reg_n_0_[0] ),
        .I2(\rxd_reg1_reg_n_0_[3] ),
        .I3(\rxd_reg1_reg_n_0_[2] ),
        .O(sfd_enable_i_4_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    sfd_enable_i_5
       (.I0(D[1]),
        .I1(D[0]),
        .I2(D[3]),
        .I3(D[2]),
        .O(sfd_enable_i_5_n_0));
  FDRE sfd_enable_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(sfd_enable_i_1_n_0),
        .Q(sfd_enable),
        .R(sync_reset));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sgmii_adapt" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sgmii_adapt
   (sgmii_clk_r,
    sgmii_clk_en,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_tx_en_int,
    gmii_tx_er_int,
    sgmii_clk_f,
    gmii_rxd,
    Q,
    MMCM_RESET_reg,
    gmii_rx_dv_int,
    gmii_rx_er_int,
    gmii_tx_en,
    gmii_tx_er,
    SR,
    speed_is_10_100,
    speed_is_100,
    D,
    gmii_txd);
  output sgmii_clk_r;
  output sgmii_clk_en;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_tx_en_int;
  output gmii_tx_er_int;
  output sgmii_clk_f;
  output [7:0]gmii_rxd;
  output [7:0]Q;
  input MMCM_RESET_reg;
  input gmii_rx_dv_int;
  input gmii_rx_er_int;
  input gmii_tx_en;
  input gmii_tx_er;
  input [0:0]SR;
  input speed_is_10_100;
  input speed_is_100;
  input [7:0]D;
  input [7:0]gmii_txd;

  wire [7:0]D;
  wire MMCM_RESET_reg;
  wire [7:0]Q;
  wire [0:0]SR;
  wire gmii_rx_dv;
  wire gmii_rx_dv_int;
  wire gmii_rx_er;
  wire gmii_rx_er_int;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_en_int;
  wire gmii_tx_er;
  wire gmii_tx_er_int;
  wire [7:0]gmii_txd;
  wire sgmii_clk_en;
  wire sgmii_clk_f;
  wire sgmii_clk_r;
  wire speed_is_100;
  wire speed_is_100_resync;
  wire speed_is_10_100;
  wire speed_is_10_100_resync;
  wire sync_reset;

  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_clk_gen clock_generation
       (.MMCM_RESET_reg(MMCM_RESET_reg),
        .data_out(speed_is_100_resync),
        .data_sync_reg6(speed_is_10_100_resync),
        .reset_out(sync_reset),
        .sgmii_clk_en(sgmii_clk_en),
        .sgmii_clk_f(sgmii_clk_f),
        .sgmii_clk_r(sgmii_clk_r));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_35 gen_sync_reset
       (.MMCM_RESET_reg(MMCM_RESET_reg),
        .SR(SR),
        .reset_out(sync_reset));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_rx_rate_adapt receiver
       (.D(D),
        .MMCM_RESET_reg(MMCM_RESET_reg),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_dv_int(gmii_rx_dv_int),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rx_er_int(gmii_rx_er_int),
        .gmii_rxd(gmii_rxd),
        .sgmii_clk_en_reg(sgmii_clk_en),
        .sync_reset(sync_reset));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_36 resync_speed_100
       (.MMCM_RESET_reg(MMCM_RESET_reg),
        .data_out(speed_is_100_resync),
        .speed_is_100(speed_is_100));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_37 resync_speed_10_100
       (.MMCM_RESET_reg(MMCM_RESET_reg),
        .data_out(speed_is_10_100_resync),
        .speed_is_10_100(speed_is_10_100));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_tx_rate_adapt transmitter
       (.E(sgmii_clk_en),
        .MMCM_RESET_reg(MMCM_RESET_reg),
        .Q(Q),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_en_int(gmii_tx_en_int),
        .gmii_tx_er(gmii_tx_er),
        .gmii_tx_er_int(gmii_tx_er_int),
        .gmii_txd(gmii_txd),
        .sync_reset(sync_reset));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_support" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_support
   (gtrefclk_bufg_out,
    userclk2_out,
    gmii_isolate,
    status_vector,
    pma_reset_out,
    mmcm_locked_out,
    resetdone,
    rxuserclk2_out,
    userclk_out,
    txn,
    txp,
    gtrefclk_out,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    sgmii_clk_r,
    sgmii_clk_en,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    sgmii_clk_f,
    speed_is_10_100,
    speed_is_100,
    signal_detect,
    configuration_vector,
    independent_clock_bufg,
    rxn,
    rxp,
    gtrefclk_p,
    gtrefclk_n,
    reset,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er);
  output gtrefclk_bufg_out;
  output userclk2_out;
  output gmii_isolate;
  output [15:0]status_vector;
  output pma_reset_out;
  output mmcm_locked_out;
  output resetdone;
  output rxuserclk2_out;
  output userclk_out;
  output txn;
  output txp;
  output gtrefclk_out;
  output gt0_qplloutclk_out;
  output gt0_qplloutrefclk_out;
  output sgmii_clk_r;
  output sgmii_clk_en;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output sgmii_clk_f;
  input speed_is_10_100;
  input speed_is_100;
  input signal_detect;
  input [4:0]configuration_vector;
  input independent_clock_bufg;
  input rxn;
  input rxp;
  input gtrefclk_p;
  input gtrefclk_n;
  input reset;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;

  wire [4:0]configuration_vector;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gtrefclk_bufg_out;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire independent_clock_bufg;
  wire mmcm_locked_out;
  wire mmcm_reset;
  wire pma_reset_out;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire rxuserclk2_out;
  wire sgmii_clk_en;
  wire sgmii_clk_f;
  wire sgmii_clk_r;
  wire signal_detect;
  wire speed_is_100;
  wire speed_is_10_100;
  wire [15:0]status_vector;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk2_out;
  wire userclk_out;

  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_clocking core_clocking_i
       (.gtrefclk(gtrefclk_out),
        .gtrefclk_bufg(gtrefclk_bufg_out),
        .gtrefclk_n(gtrefclk_n),
        .gtrefclk_p(gtrefclk_p),
        .mmcm_locked(mmcm_locked_out),
        .mmcm_reset(mmcm_reset),
        .rxoutclk(rxoutclk),
        .rxuserclk(rxuserclk2_out),
        .txoutclk(txoutclk),
        .userclk(userclk_out),
        .userclk2(userclk2_out));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_gt_common core_gt_common_i
       (.gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .pma_reset_out(pma_reset_out));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_resets core_resets_i
       (.independent_clock_bufg(independent_clock_bufg),
        .pma_reset_out(pma_reset_out),
        .reset(reset));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_block pcs_pma_block_i
       (.AR(pma_reset_out),
        .CLK(gtrefclk_bufg_out),
        .MMCM_RESET_reg(userclk2_out),
        .MMCM_RESET_reg_0(userclk_out),
        .configuration_vector(configuration_vector),
        .\cpllpd_wait_reg[95] (rxuserclk2_out),
        .data_in(mmcm_locked_out),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_reset(mmcm_reset),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .sgmii_clk_en(sgmii_clk_en),
        .sgmii_clk_f(sgmii_clk_f),
        .sgmii_clk_r(sgmii_clk_r),
        .signal_detect(signal_detect),
        .speed_is_100(speed_is_100),
        .speed_is_10_100(speed_is_10_100),
        .status_vector(status_vector),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block
   (resetdone,
    data_out,
    data_in,
    MMCM_RESET_reg);
  output resetdone;
  input data_out;
  input data_in;
  input MMCM_RESET_reg;

  wire MMCM_RESET_reg;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire resetdone;
  wire rx_reset_done_i;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(rx_reset_done_i),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    resetdone_INST_0
       (.I0(rx_reset_done_i),
        .I1(data_out),
        .O(resetdone));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_0
   (data_out,
    data_in,
    MMCM_RESET_reg);
  output data_out;
  input data_in;
  input MMCM_RESET_reg;

  wire MMCM_RESET_reg;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_10
   (S,
    data_out,
    \wr_occupancy_reg[3] ,
    ADDRD,
    wr_rd_addr_gray_4,
    data_in,
    \cpllpd_wait_reg[95] );
  output [0:0]S;
  output data_out;
  output \wr_occupancy_reg[3] ;
  input [0:0]ADDRD;
  input wr_rd_addr_gray_4;
  input data_in;
  input \cpllpd_wait_reg[95] ;

  wire [0:0]ADDRD;
  wire [0:0]S;
  wire \cpllpd_wait_reg[95] ;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire \wr_occupancy_reg[3] ;
  wire wr_rd_addr_gray_4;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_occupancy[3]_i_6 
       (.I0(data_out),
        .I1(wr_rd_addr_gray_4),
        .O(\wr_occupancy_reg[3] ));
  LUT2 #(
    .INIT(4'h9)) 
    \wr_occupancy[5]_i_2 
       (.I0(ADDRD),
        .I1(data_out),
        .O(S));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_11
   (data_out,
    Q,
    MMCM_RESET_reg);
  output data_out;
  input [0:0]Q;
  input MMCM_RESET_reg;

  wire MMCM_RESET_reg;
  wire [0:0]Q;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(Q),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_12
   (data_out,
    Q,
    MMCM_RESET_reg);
  output data_out;
  input [0:0]Q;
  input MMCM_RESET_reg;

  wire MMCM_RESET_reg;
  wire [0:0]Q;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(Q),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_13
   (S,
    data_out,
    data_sync_reg6_0,
    rd_wr_addr_gray_0,
    p_4_out,
    rd_wr_addr,
    Q,
    \wr_addr_gray_reg[2] ,
    MMCM_RESET_reg);
  output [0:0]S;
  output data_out;
  input data_sync_reg6_0;
  input rd_wr_addr_gray_0;
  input p_4_out;
  input [0:0]rd_wr_addr;
  input [0:0]Q;
  input [0:0]\wr_addr_gray_reg[2] ;
  input MMCM_RESET_reg;

  wire MMCM_RESET_reg;
  wire [0:0]Q;
  wire [0:0]S;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg6_0;
  wire p_4_out;
  wire [0:0]rd_wr_addr;
  wire rd_wr_addr_gray_0;
  wire [0:0]\wr_addr_gray_reg[2] ;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(\wr_addr_gray_reg[2] ),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \rd_occupancy[3]_i_9 
       (.I0(data_out),
        .I1(data_sync_reg6_0),
        .I2(rd_wr_addr_gray_0),
        .I3(p_4_out),
        .I4(rd_wr_addr),
        .I5(Q),
        .O(S));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_14
   (S,
    data_out,
    data_sync_reg6_0,
    p_4_out,
    p_3_out,
    data_sync_reg6_1,
    Q,
    \wr_addr_gray_reg[3] ,
    MMCM_RESET_reg);
  output [1:0]S;
  output data_out;
  input data_sync_reg6_0;
  input p_4_out;
  input p_3_out;
  input data_sync_reg6_1;
  input [1:0]Q;
  input [0:0]\wr_addr_gray_reg[3] ;
  input MMCM_RESET_reg;

  wire MMCM_RESET_reg;
  wire [1:0]Q;
  wire [1:0]S;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg6_0;
  wire data_sync_reg6_1;
  wire p_3_out;
  wire p_4_out;
  wire [0:0]\wr_addr_gray_reg[3] ;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(\wr_addr_gray_reg[3] ),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h69969669)) 
    \rd_occupancy[3]_i_7 
       (.I0(data_out),
        .I1(p_3_out),
        .I2(data_sync_reg6_1),
        .I3(data_sync_reg6_0),
        .I4(Q[1]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \rd_occupancy[3]_i_8 
       (.I0(data_out),
        .I1(data_sync_reg6_0),
        .I2(p_4_out),
        .I3(p_3_out),
        .I4(data_sync_reg6_1),
        .I5(Q[0]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_15
   (S,
    data_out,
    \rd_occupancy_reg[3] ,
    rd_wr_addr,
    data_sync_reg6_0,
    Q,
    p_2_out,
    p_4_out,
    rd_wr_addr_gray_0,
    p_3_out,
    \wr_addr_gray_reg[4] ,
    MMCM_RESET_reg);
  output [0:0]S;
  output data_out;
  output [0:0]\rd_occupancy_reg[3] ;
  output [1:0]rd_wr_addr;
  input data_sync_reg6_0;
  input [1:0]Q;
  input p_2_out;
  input p_4_out;
  input rd_wr_addr_gray_0;
  input p_3_out;
  input [0:0]\wr_addr_gray_reg[4] ;
  input MMCM_RESET_reg;

  wire MMCM_RESET_reg;
  wire [1:0]Q;
  wire [0:0]S;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg6_0;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire [0:0]\rd_occupancy_reg[3] ;
  wire [1:0]rd_wr_addr;
  wire rd_wr_addr_gray_0;
  wire [0:0]\wr_addr_gray_reg[4] ;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(\wr_addr_gray_reg[4] ),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \rd_occupancy[3]_i_3 
       (.I0(data_out),
        .I1(data_sync_reg6_0),
        .I2(p_3_out),
        .I3(p_2_out),
        .O(rd_wr_addr[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \rd_occupancy[3]_i_5 
       (.I0(data_out),
        .I1(data_sync_reg6_0),
        .I2(p_4_out),
        .I3(rd_wr_addr_gray_0),
        .I4(p_2_out),
        .I5(p_3_out),
        .O(rd_wr_addr[0]));
  LUT4 #(
    .INIT(16'h9669)) 
    \rd_occupancy[3]_i_6 
       (.I0(data_out),
        .I1(p_2_out),
        .I2(data_sync_reg6_0),
        .I3(Q[0]),
        .O(\rd_occupancy_reg[3] ));
  LUT3 #(
    .INIT(8'h69)) 
    \rd_occupancy[5]_i_4 
       (.I0(data_out),
        .I1(data_sync_reg6_0),
        .I2(Q[1]),
        .O(S));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_16
   (S,
    data_out,
    rd_wr_addr,
    \rd_occupancy_reg[3] ,
    Q,
    p_3_out,
    p_4_out,
    p_1_out,
    p_2_out,
    \wr_addr_gray_reg[5] ,
    MMCM_RESET_reg);
  output [0:0]S;
  output data_out;
  output [2:0]rd_wr_addr;
  output [0:0]\rd_occupancy_reg[3] ;
  input [0:0]Q;
  input p_3_out;
  input p_4_out;
  input p_1_out;
  input p_2_out;
  input [0:0]\wr_addr_gray_reg[5] ;
  input MMCM_RESET_reg;

  wire MMCM_RESET_reg;
  wire [0:0]Q;
  wire [0:0]S;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire [0:0]\rd_occupancy_reg[3] ;
  wire [2:0]rd_wr_addr;
  wire [0:0]\wr_addr_gray_reg[5] ;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(\wr_addr_gray_reg[5] ),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_occupancy[3]_i_10 
       (.I0(data_out),
        .I1(p_1_out),
        .O(\rd_occupancy_reg[3] ));
  LUT3 #(
    .INIT(8'h96)) 
    \rd_occupancy[3]_i_2 
       (.I0(data_out),
        .I1(p_2_out),
        .I2(p_1_out),
        .O(rd_wr_addr[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \rd_occupancy[3]_i_4 
       (.I0(data_out),
        .I1(p_3_out),
        .I2(p_4_out),
        .I3(p_1_out),
        .I4(p_2_out),
        .O(rd_wr_addr[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_occupancy[5]_i_2 
       (.I0(data_out),
        .I1(p_1_out),
        .O(rd_wr_addr[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \rd_occupancy[5]_i_3 
       (.I0(data_out),
        .I1(Q),
        .O(S));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_17
   (initialize_ram_complete_sync_ris_edg_reg,
    data_out,
    initialize_ram_complete_sync_reg1,
    initialize_ram_complete_reg,
    MMCM_RESET_reg);
  output initialize_ram_complete_sync_ris_edg_reg;
  output data_out;
  input initialize_ram_complete_sync_reg1;
  input initialize_ram_complete_reg;
  input MMCM_RESET_reg;

  wire MMCM_RESET_reg;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire initialize_ram_complete_reg;
  wire initialize_ram_complete_sync_reg1;
  wire initialize_ram_complete_sync_ris_edg_reg;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(initialize_ram_complete_reg),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    initialize_ram_complete_sync_ris_edg_i_1
       (.I0(data_out),
        .I1(initialize_ram_complete_sync_reg1),
        .O(initialize_ram_complete_sync_ris_edg_reg));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_18
   (data_out,
    data_in,
    CLK);
  output data_out;
  input data_in;
  input CLK;

  wire CLK;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(CLK),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_21
   (data_out,
    data_in,
    CLK);
  output data_out;
  input data_in;
  input CLK;

  wire CLK;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(CLK),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_22
   (data_out,
    \cpllpd_wait_reg[95] ,
    independent_clock_bufg);
  output data_out;
  input \cpllpd_wait_reg[95] ;
  input independent_clock_bufg;

  wire \cpllpd_wait_reg[95] ;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95] ),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_23
   (reset_time_out_1,
    E,
    pll_reset_asserted_reg,
    refclk_stable_reg,
    out,
    mmcm_lock_reclocked_reg,
    txresetdone_s3,
    wait_time_done,
    \FSM_sequential_tx_state_reg[1] ,
    init_wait_done_reg,
    time_tlock_max_reg,
    reset_time_out_reg,
    time_out_500us_reg,
    time_out_2ms_reg,
    \cpllpd_wait_reg[95] ,
    independent_clock_bufg);
  output reset_time_out_1;
  output [0:0]E;
  input pll_reset_asserted_reg;
  input refclk_stable_reg;
  input [3:0]out;
  input mmcm_lock_reclocked_reg;
  input txresetdone_s3;
  input wait_time_done;
  input \FSM_sequential_tx_state_reg[1] ;
  input init_wait_done_reg;
  input time_tlock_max_reg;
  input reset_time_out_reg;
  input time_out_500us_reg;
  input time_out_2ms_reg;
  input \cpllpd_wait_reg[95] ;
  input independent_clock_bufg;

  wire [0:0]E;
  wire \FSM_sequential_tx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_tx_state_reg[1] ;
  wire cplllock_sync;
  wire \cpllpd_wait_reg[95] ;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire init_wait_done_reg;
  wire mmcm_lock_reclocked_reg;
  wire [3:0]out;
  wire pll_reset_asserted_reg;
  wire refclk_stable_reg;
  wire reset_time_out_1;
  wire reset_time_out_i_3_n_0;
  wire reset_time_out_reg;
  wire time_out_2ms_reg;
  wire time_out_500us_reg;
  wire time_tlock_max_reg;
  wire tx_state0;
  wire txresetdone_s3;
  wire wait_time_done;

  LUT6 #(
    .INIT(64'h00AA00AA0FCF0FC0)) 
    \FSM_sequential_tx_state[3]_i_1 
       (.I0(\FSM_sequential_tx_state[3]_i_3_n_0 ),
        .I1(wait_time_done),
        .I2(\FSM_sequential_tx_state_reg[1] ),
        .I3(out[3]),
        .I4(init_wait_done_reg),
        .I5(out[0]),
        .O(E));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB88888)) 
    \FSM_sequential_tx_state[3]_i_3 
       (.I0(\FSM_sequential_tx_state[3]_i_7_n_0 ),
        .I1(out[1]),
        .I2(mmcm_lock_reclocked_reg),
        .I3(time_tlock_max_reg),
        .I4(out[2]),
        .I5(tx_state0),
        .O(\FSM_sequential_tx_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBAFFBAFFBAFFBA00)) 
    \FSM_sequential_tx_state[3]_i_7 
       (.I0(txresetdone_s3),
        .I1(reset_time_out_reg),
        .I2(time_out_500us_reg),
        .I3(out[2]),
        .I4(time_out_2ms_reg),
        .I5(cplllock_sync),
        .O(\FSM_sequential_tx_state[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_tx_state[3]_i_9 
       (.I0(cplllock_sync),
        .I1(pll_reset_asserted_reg),
        .I2(refclk_stable_reg),
        .O(tx_state0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95] ),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(cplllock_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4555CF554455CF55)) 
    reset_time_out_i_2
       (.I0(out[3]),
        .I1(reset_time_out_i_3_n_0),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(mmcm_lock_reclocked_reg),
        .O(reset_time_out_1));
  LUT5 #(
    .INIT(32'hF0440044)) 
    reset_time_out_i_3
       (.I0(out[3]),
        .I1(cplllock_sync),
        .I2(out[1]),
        .I3(out[2]),
        .I4(txresetdone_s3),
        .O(reset_time_out_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_24
   (SR,
    \mmcm_lock_count_reg[9] ,
    MMCM_RESET_reg,
    independent_clock_bufg);
  output [0:0]SR;
  output \mmcm_lock_count_reg[9] ;
  input MMCM_RESET_reg;
  input independent_clock_bufg;

  wire MMCM_RESET_reg;
  wire [0:0]SR;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire \mmcm_lock_count_reg[9] ;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(MMCM_RESET_reg),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(\mmcm_lock_count_reg[9] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[9]_i_1 
       (.I0(\mmcm_lock_count_reg[9] ),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_25
   (data_out,
    data_in,
    MMCM_RESET_reg);
  output data_out;
  input data_in;
  input MMCM_RESET_reg;

  wire MMCM_RESET_reg;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_26
   (data_out,
    time_out_wait_bypass_reg,
    independent_clock_bufg);
  output data_out;
  input time_out_wait_bypass_reg;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire time_out_wait_bypass_reg;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_wait_bypass_reg),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_27
   (data_out,
    gt0_txresetdone_out_i,
    MMCM_RESET_reg);
  output data_out;
  input gt0_txresetdone_out_i;
  input MMCM_RESET_reg;

  wire MMCM_RESET_reg;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_txresetdone_out_i;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(gt0_txresetdone_out_i),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_28
   (data_out,
    data_in,
    independent_clock_bufg);
  output data_out;
  input data_in;
  input independent_clock_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_29
   (E,
    data_out,
    init_wait_done_reg,
    \FSM_sequential_rx_state_reg[1] ,
    out,
    \FSM_sequential_rx_state_reg[0] ,
    rxresetdone_s3_reg,
    time_out_2ms_reg,
    \cpllpd_wait_reg[95] ,
    independent_clock_bufg);
  output [0:0]E;
  output data_out;
  input init_wait_done_reg;
  input \FSM_sequential_rx_state_reg[1] ;
  input [3:0]out;
  input \FSM_sequential_rx_state_reg[0] ;
  input rxresetdone_s3_reg;
  input time_out_2ms_reg;
  input \cpllpd_wait_reg[95] ;
  input independent_clock_bufg;

  wire [0:0]E;
  wire \FSM_sequential_rx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[1] ;
  wire \cpllpd_wait_reg[95] ;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire init_wait_done_reg;
  wire [3:0]out;
  wire rxresetdone_s3_reg;
  wire time_out_2ms_reg;

  LUT6 #(
    .INIT(64'hFFFFFFFF0000F0EE)) 
    \FSM_sequential_rx_state[3]_i_1 
       (.I0(init_wait_done_reg),
        .I1(\FSM_sequential_rx_state_reg[1] ),
        .I2(\FSM_sequential_rx_state[3]_i_5_n_0 ),
        .I3(out[0]),
        .I4(out[3]),
        .I5(\FSM_sequential_rx_state_reg[0] ),
        .O(E));
  LUT5 #(
    .INIT(32'hBBB8BBBB)) 
    \FSM_sequential_rx_state[3]_i_5 
       (.I0(rxresetdone_s3_reg),
        .I1(out[2]),
        .I2(time_out_2ms_reg),
        .I3(data_out),
        .I4(out[1]),
        .O(\FSM_sequential_rx_state[3]_i_5_n_0 ));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[95] ),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_30
   (data_out,
    reset_time_out_reg,
    D,
    rx_fsm_reset_done_int_reg,
    \FSM_sequential_rx_state_reg[0] ,
    rx_fsm_reset_done_int_reg_0,
    reset_time_out_reg_0,
    time_out_100us_reg,
    out,
    cplllock_sync,
    \FSM_sequential_rx_state_reg[3] ,
    time_out_2ms_reg,
    \FSM_sequential_rx_state_reg[3]_0 ,
    time_out_1us_reg,
    time_out_wait_bypass_s3,
    \FSM_sequential_rx_state_reg[0]_0 ,
    time_out_100us_reg_0,
    rx_state17_out,
    data_sync_reg6_0,
    independent_clock_bufg);
  output data_out;
  output reset_time_out_reg;
  output [2:0]D;
  output rx_fsm_reset_done_int_reg;
  output \FSM_sequential_rx_state_reg[0] ;
  output rx_fsm_reset_done_int_reg_0;
  input reset_time_out_reg_0;
  input time_out_100us_reg;
  input [3:0]out;
  input cplllock_sync;
  input \FSM_sequential_rx_state_reg[3] ;
  input time_out_2ms_reg;
  input \FSM_sequential_rx_state_reg[3]_0 ;
  input time_out_1us_reg;
  input time_out_wait_bypass_s3;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input time_out_100us_reg_0;
  input rx_state17_out;
  input data_sync_reg6_0;
  input independent_clock_bufg;

  wire [2:0]D;
  wire \FSM_sequential_rx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire \FSM_sequential_rx_state_reg[3]_0 ;
  wire cplllock_sync;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg6_0;
  wire independent_clock_bufg;
  wire [3:0]out;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire rx_fsm_reset_done_int_reg;
  wire rx_fsm_reset_done_int_reg_0;
  wire rx_state1;
  wire rx_state17_out;
  wire time_out_100us_reg;
  wire time_out_100us_reg_0;
  wire time_out_1us_reg;
  wire time_out_2ms_reg;
  wire time_out_wait_bypass_s3;

  LUT6 #(
    .INIT(64'h000C55550F0F5555)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(\FSM_sequential_rx_state_reg[0]_0 ),
        .I1(rx_state1),
        .I2(out[2]),
        .I3(out[1]),
        .I4(out[3]),
        .I5(out[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h00050000003FFF00)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(rx_state1),
        .I1(rx_state17_out),
        .I2(out[2]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(out[3]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_rx_state[1]_i_2 
       (.I0(reset_time_out_reg_0),
        .I1(time_out_100us_reg),
        .I2(data_out),
        .O(rx_state1));
  LUT6 #(
    .INIT(64'hFFFFFFFF08080008)) 
    \FSM_sequential_rx_state[3]_i_2 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(\FSM_sequential_rx_state_reg[3] ),
        .I3(time_out_2ms_reg),
        .I4(reset_time_out_reg_0),
        .I5(\FSM_sequential_rx_state[3]_i_8_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h000003000F000B00)) 
    \FSM_sequential_rx_state[3]_i_6 
       (.I0(time_out_100us_reg_0),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[3]),
        .I4(data_out),
        .I5(out[1]),
        .O(\FSM_sequential_rx_state_reg[0] ));
  LUT6 #(
    .INIT(64'h000005000000F300)) 
    \FSM_sequential_rx_state[3]_i_8 
       (.I0(rx_state1),
        .I1(time_out_wait_bypass_s3),
        .I2(out[1]),
        .I3(out[3]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\FSM_sequential_rx_state[3]_i_8_n_0 ));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync_reg6_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00001B1B0000FF1F)) 
    reset_time_out_i_3__0
       (.I0(data_out),
        .I1(out[0]),
        .I2(out[1]),
        .I3(cplllock_sync),
        .I4(out[2]),
        .I5(out[3]),
        .O(reset_time_out_reg));
  LUT6 #(
    .INIT(64'h0000000040404000)) 
    rx_fsm_reset_done_int_i_4
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[3]),
        .I3(time_out_100us_reg_0),
        .I4(data_out),
        .I5(out[2]),
        .O(rx_fsm_reset_done_int_reg_0));
  LUT5 #(
    .INIT(32'h20AA0000)) 
    rx_fsm_reset_done_int_i_5
       (.I0(\FSM_sequential_rx_state_reg[3]_0 ),
        .I1(reset_time_out_reg_0),
        .I2(time_out_1us_reg),
        .I3(data_out),
        .I4(out[1]),
        .O(rx_fsm_reset_done_int_reg));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_31
   (SR,
    \mmcm_lock_count_reg[9] ,
    MMCM_RESET_reg,
    independent_clock_bufg);
  output [0:0]SR;
  output \mmcm_lock_count_reg[9] ;
  input MMCM_RESET_reg;
  input independent_clock_bufg;

  wire MMCM_RESET_reg;
  wire [0:0]SR;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire \mmcm_lock_count_reg[9] ;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(MMCM_RESET_reg),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(\mmcm_lock_count_reg[9] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[9]_i_1__0 
       (.I0(\mmcm_lock_count_reg[9] ),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_32
   (data_out,
    run_phase_alignment_int_reg,
    \cpllpd_wait_reg[95] );
  output data_out;
  input run_phase_alignment_int_reg;
  input \cpllpd_wait_reg[95] ;

  wire \cpllpd_wait_reg[95] ;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire run_phase_alignment_int_reg;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(run_phase_alignment_int_reg),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_33
   (data_out,
    gt0_rxresetdone_out_i,
    \cpllpd_wait_reg[95] );
  output data_out;
  input gt0_rxresetdone_out_i;
  input \cpllpd_wait_reg[95] ;

  wire \cpllpd_wait_reg[95] ;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_rxresetdone_out_i;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(gt0_rxresetdone_out_i),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_34
   (data_out,
    time_out_wait_bypass_reg,
    independent_clock_bufg);
  output data_out;
  input time_out_wait_bypass_reg;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire time_out_wait_bypass_reg;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_wait_bypass_reg),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_36
   (data_out,
    speed_is_100,
    MMCM_RESET_reg);
  output data_out;
  input speed_is_100;
  input MMCM_RESET_reg;

  wire MMCM_RESET_reg;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire speed_is_100;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(speed_is_100),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_37
   (data_out,
    speed_is_10_100,
    MMCM_RESET_reg);
  output data_out;
  input speed_is_10_100;
  input MMCM_RESET_reg;

  wire MMCM_RESET_reg;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire speed_is_10_100;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(speed_is_10_100),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_4
   (data_out,
    status_vector,
    independent_clock_bufg);
  output data_out;
  input [0:0]status_vector;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire [0:0]status_vector;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(status_vector),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_5
   (data_out,
    Q,
    \cpllpd_wait_reg[95] );
  output data_out;
  input [0:0]Q;
  input \cpllpd_wait_reg[95] ;

  wire [0:0]Q;
  wire \cpllpd_wait_reg[95] ;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(Q),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_6
   (data_out,
    Q,
    \cpllpd_wait_reg[95] );
  output data_out;
  input [0:0]Q;
  input \cpllpd_wait_reg[95] ;

  wire [0:0]Q;
  wire \cpllpd_wait_reg[95] ;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(Q),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_7
   (S,
    data_out,
    Q,
    data_sync_reg6_0,
    wr_rd_addr_gray_0,
    wr_rd_addr_gray_1,
    data_sync_reg6_1,
    \rd_addr_gray_reg[2] ,
    \cpllpd_wait_reg[95] );
  output [0:0]S;
  output data_out;
  input [0:0]Q;
  input data_sync_reg6_0;
  input wr_rd_addr_gray_0;
  input wr_rd_addr_gray_1;
  input data_sync_reg6_1;
  input [0:0]\rd_addr_gray_reg[2] ;
  input \cpllpd_wait_reg[95] ;

  wire [0:0]Q;
  wire [0:0]S;
  wire \cpllpd_wait_reg[95] ;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg6_0;
  wire data_sync_reg6_1;
  wire [0:0]\rd_addr_gray_reg[2] ;
  wire wr_rd_addr_gray_0;
  wire wr_rd_addr_gray_1;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\rd_addr_gray_reg[2] ),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \wr_occupancy[3]_i_5 
       (.I0(Q),
        .I1(data_out),
        .I2(data_sync_reg6_0),
        .I3(wr_rd_addr_gray_0),
        .I4(wr_rd_addr_gray_1),
        .I5(data_sync_reg6_1),
        .O(S));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_8
   (S,
    data_out,
    Q,
    data_sync_reg6_0,
    wr_rd_addr_gray_1,
    wr_rd_addr_gray_2,
    data_sync_reg6_1,
    \rd_addr_gray_reg[3] ,
    \cpllpd_wait_reg[95] );
  output [1:0]S;
  output data_out;
  input [1:0]Q;
  input data_sync_reg6_0;
  input wr_rd_addr_gray_1;
  input wr_rd_addr_gray_2;
  input data_sync_reg6_1;
  input [0:0]\rd_addr_gray_reg[3] ;
  input \cpllpd_wait_reg[95] ;

  wire [1:0]Q;
  wire [1:0]S;
  wire \cpllpd_wait_reg[95] ;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg6_0;
  wire data_sync_reg6_1;
  wire [0:0]\rd_addr_gray_reg[3] ;
  wire wr_rd_addr_gray_1;
  wire wr_rd_addr_gray_2;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\rd_addr_gray_reg[3] ),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h69969669)) 
    \wr_occupancy[3]_i_3 
       (.I0(Q[1]),
        .I1(data_out),
        .I2(wr_rd_addr_gray_2),
        .I3(data_sync_reg6_1),
        .I4(data_sync_reg6_0),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \wr_occupancy[3]_i_4 
       (.I0(Q[0]),
        .I1(data_out),
        .I2(data_sync_reg6_0),
        .I3(wr_rd_addr_gray_1),
        .I4(wr_rd_addr_gray_2),
        .I5(data_sync_reg6_1),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_9
   (S,
    data_out,
    \wr_occupancy_reg[5] ,
    Q,
    wr_rd_addr_gray_3,
    data_sync_reg6_0,
    \rd_addr_gray_reg[4] ,
    \cpllpd_wait_reg[95] );
  output [0:0]S;
  output data_out;
  output [0:0]\wr_occupancy_reg[5] ;
  input [1:0]Q;
  input wr_rd_addr_gray_3;
  input data_sync_reg6_0;
  input [0:0]\rd_addr_gray_reg[4] ;
  input \cpllpd_wait_reg[95] ;

  wire [1:0]Q;
  wire [0:0]S;
  wire \cpllpd_wait_reg[95] ;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg6_0;
  wire [0:0]\rd_addr_gray_reg[4] ;
  wire [0:0]\wr_occupancy_reg[5] ;
  wire wr_rd_addr_gray_3;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(\rd_addr_gray_reg[4] ),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(\cpllpd_wait_reg[95] ),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h9669)) 
    \wr_occupancy[3]_i_2 
       (.I0(Q[0]),
        .I1(data_out),
        .I2(wr_rd_addr_gray_3),
        .I3(data_sync_reg6_0),
        .O(S));
  LUT3 #(
    .INIT(8'h69)) 
    \wr_occupancy[5]_i_3 
       (.I0(Q[1]),
        .I1(data_out),
        .I2(data_sync_reg6_0),
        .O(\wr_occupancy_reg[5] ));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_transceiver" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_transceiver
   (cpll_reset0_i,
    \rd_data_reg[0] ,
    txn,
    txp,
    rxoutclk,
    txoutclk,
    gt0_rxuserrdy_i,
    gt0_txuserrdy_i,
    run_phase_alignment_int_s3,
    tx_fsm_reset_done_int_s3,
    \wait_bypass_count_reg[0] ,
    rx_fsm_reset_done_int_s3,
    initialize_ram_complete_sync_ris_edg,
    even,
    reset_modified,
    rxchariscomma,
    rxcharisk,
    rxdisperr,
    rxnotintable,
    rxrundisp,
    initialize_ram_complete,
    \rd_data_reg[15] ,
    drp_op_done,
    \rd_data_reg[15]_0 ,
    \FSM_sequential_tx_state_reg[0] ,
    pll_reset_asserted_reg,
    reset_time_out,
    \FSM_sequential_tx_state_reg[2] ,
    mmcm_lock_reclocked,
    time_tlock_max_reg,
    time_out_500us_reg,
    gt0_gttxreset_t,
    mmcm_reset,
    gt0_cpllreset_i,
    gt0_txresetdone_out_i,
    data_in,
    data_sync_reg1,
    init_wait_done_reg,
    time_out_1us_reg,
    \FSM_sequential_rx_state_reg[3] ,
    time_tlock_max_reg_0,
    time_tlock_max,
    mmcm_lock_reclocked_0,
    time_out_100us_reg,
    time_out_1us_reg_0,
    gt0_gtrxreset_t,
    gt0_rxresetdone_out_i,
    data_sync_reg1_0,
    data_sync_reg1_1,
    initialize_ram,
    D,
    rxbufstatus,
    out,
    \FSM_sequential_rx_state_reg[0] ,
    time_tlock_max_reg_1,
    reset_out,
    gt0_gtrxreset_gt_d1_reg,
    data_out,
    \mmcm_lock_count_reg[9] ,
    rx_fsm_reset_done_int_reg,
    rxclkcorcnt,
    Q,
    \rd_data_reg[0]_0 ,
    \rd_data_reg[0]_1 ,
    CPLL_RESET0,
    reset_time_out_1,
    reset_time_out_reg,
    reset_time_out_reg_0,
    rx_fsm_reset_done_int_reg_0,
    rx_fsm_reset_done_int_reg_1,
    rx_fsm_reset_done_int_reg_2,
    reset_time_out_reg_1,
    txbuferr,
    \init_wait_count_reg[0] ,
    \mmcm_lock_count_reg[9]_0 ,
    \init_wait_count_reg[0]_0 ,
    \mmcm_lock_count_reg[9]_1 ,
    rx_fsm_reset_done_int_reg_3,
    \mmcm_lock_count_reg[9]_2 ,
    \mmcm_lock_count_reg[9]_3 ,
    time_tlock_max_reg_2,
    time_out_100us_reg_0,
    time_out_100us_reg_1,
    time_tlock_max_reg_3,
    time_out_100us_reg_2,
    time_out_1us_reg_1,
    time_out_2ms,
    time_tlock_max_reg_4,
    time_out_100us_reg_3,
    time_out_1us_reg_2,
    time_out_100us_reg_4,
    \init_wait_count_reg[0]_1 ,
    time_out_2ms_2,
    time_tlock_max_reg_5,
    time_out_500us_reg_0,
    time_tlock_max_reg_6,
    time_tlock_max_reg_7,
    time_out_500us_reg_1,
    time_tlock_max_reg_8,
    \init_wait_count_reg[0]_2 ,
    time_out_1us_reg_3,
    time_out_1us_reg_4,
    \initialize_counter_reg[4] ,
    \wait_bypass_count_reg[0]_0 ,
    wr_enable1,
    insert_idle_reg,
    rxbuferr0,
    \wait_bypass_count_reg[0]_1 ,
    CLK,
    independent_clock_bufg,
    gt0_cpllreset_i_3,
    rxn,
    rxp,
    gtrefclk_out,
    gt0_gttxreset_gt,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    \cpllpd_wait_reg[95] ,
    MMCM_RESET_reg,
    gt0_gtrxreset_gt,
    MMCM_RESET_reg_0,
    flag_reg,
    \FSM_sequential_state_reg[0] ,
    flag_reg_0,
    \init_wait_count_reg[7] ,
    AR,
    \FSM_sequential_tx_state_reg[2]_0 ,
    \FSM_sequential_tx_state_reg[3] ,
    time_out_2ms_reg,
    mmcm_lock_reclocked_reg,
    time_tlock_max_reg_9,
    time_out_500us_reg_2,
    \FSM_sequential_tx_state_reg[2]_1 ,
    \FSM_sequential_tx_state_reg[2]_2 ,
    \FSM_sequential_tx_state_reg[2]_3 ,
    \FSM_sequential_tx_state_reg[0]_0 ,
    \FSM_sequential_tx_state_reg[3]_0 ,
    \FSM_sequential_tx_state_reg[3]_1 ,
    time_out_wait_bypass_reg,
    \init_wait_count_reg[4] ,
    \FSM_sequential_rx_state_reg[3]_0 ,
    time_out_2ms_reg_0,
    \FSM_sequential_rx_state_reg[2] ,
    check_tlock_max_reg,
    mmcm_lock_reclocked_reg_0,
    time_out_100us_reg_5,
    time_out_1us_reg_5,
    \FSM_sequential_rx_state_reg[3]_1 ,
    data_sync_reg6,
    \FSM_sequential_rx_state_reg[3]_2 ,
    \FSM_sequential_rx_state_reg[0]_0 ,
    time_out_wait_bypass_reg_0,
    initialize_ram_complete_sync_ris_edg_reg,
    \initialize_counter_reg[3] ,
    initialize_ram_complete_reg,
    initialize_ram_complete_reg_0,
    even_reg,
    even_reg_0,
    rxbuferr_reg,
    status_vector,
    enablealign,
    SR,
    rxreset,
    MMCM_RESET_reg_1,
    powerdown,
    \USE_ROCKET_IO.TXCHARDISPMODE_reg ,
    \USE_ROCKET_IO.TXCHARDISPVAL_reg ,
    \USE_ROCKET_IO.TXDATA_reg[7] ,
    \USE_ROCKET_IO.TXCHARISK_reg );
  output cpll_reset0_i;
  output \rd_data_reg[0] ;
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output gt0_rxuserrdy_i;
  output gt0_txuserrdy_i;
  output run_phase_alignment_int_s3;
  output tx_fsm_reset_done_int_s3;
  output \wait_bypass_count_reg[0] ;
  output rx_fsm_reset_done_int_s3;
  output initialize_ram_complete_sync_ris_edg;
  output even;
  output reset_modified;
  output [0:0]rxchariscomma;
  output [0:0]rxcharisk;
  output [0:0]rxdisperr;
  output [0:0]rxnotintable;
  output [0:0]rxrundisp;
  output initialize_ram_complete;
  output \rd_data_reg[15] ;
  output drp_op_done;
  output \rd_data_reg[15]_0 ;
  output \FSM_sequential_tx_state_reg[0] ;
  output pll_reset_asserted_reg;
  output reset_time_out;
  output \FSM_sequential_tx_state_reg[2] ;
  output mmcm_lock_reclocked;
  output time_tlock_max_reg;
  output time_out_500us_reg;
  output gt0_gttxreset_t;
  output mmcm_reset;
  output gt0_cpllreset_i;
  output gt0_txresetdone_out_i;
  output data_in;
  output data_sync_reg1;
  output init_wait_done_reg;
  output time_out_1us_reg;
  output \FSM_sequential_rx_state_reg[3] ;
  output time_tlock_max_reg_0;
  output time_tlock_max;
  output mmcm_lock_reclocked_0;
  output time_out_100us_reg;
  output time_out_1us_reg_0;
  output gt0_gtrxreset_t;
  output gt0_rxresetdone_out_i;
  output data_sync_reg1_0;
  output data_sync_reg1_1;
  output initialize_ram;
  output [0:0]D;
  output [0:0]rxbufstatus;
  output [3:0]out;
  output [3:0]\FSM_sequential_rx_state_reg[0] ;
  output [0:0]time_tlock_max_reg_1;
  output reset_out;
  output gt0_gtrxreset_gt_d1_reg;
  output data_out;
  output \mmcm_lock_count_reg[9] ;
  output rx_fsm_reset_done_int_reg;
  output [1:0]rxclkcorcnt;
  output [7:0]Q;
  output [2:0]\rd_data_reg[0]_0 ;
  output [3:0]\rd_data_reg[0]_1 ;
  output CPLL_RESET0;
  output reset_time_out_1;
  output reset_time_out_reg;
  output reset_time_out_reg_0;
  output rx_fsm_reset_done_int_reg_0;
  output rx_fsm_reset_done_int_reg_1;
  output rx_fsm_reset_done_int_reg_2;
  output reset_time_out_reg_1;
  output txbuferr;
  output [3:0]\init_wait_count_reg[0] ;
  output [1:0]\mmcm_lock_count_reg[9]_0 ;
  output [3:0]\init_wait_count_reg[0]_0 ;
  output [1:0]\mmcm_lock_count_reg[9]_1 ;
  output rx_fsm_reset_done_int_reg_3;
  output \mmcm_lock_count_reg[9]_2 ;
  output \mmcm_lock_count_reg[9]_3 ;
  output time_tlock_max_reg_2;
  output time_out_100us_reg_0;
  output time_out_100us_reg_1;
  output time_tlock_max_reg_3;
  output time_out_100us_reg_2;
  output time_out_1us_reg_1;
  output time_out_2ms;
  output time_tlock_max_reg_4;
  output time_out_100us_reg_3;
  output time_out_1us_reg_2;
  output time_out_100us_reg_4;
  output \init_wait_count_reg[0]_1 ;
  output time_out_2ms_2;
  output time_tlock_max_reg_5;
  output time_out_500us_reg_0;
  output time_tlock_max_reg_6;
  output time_tlock_max_reg_7;
  output time_out_500us_reg_1;
  output time_tlock_max_reg_8;
  output \init_wait_count_reg[0]_2 ;
  output time_out_1us_reg_3;
  output time_out_1us_reg_4;
  output [4:0]\initialize_counter_reg[4] ;
  output \wait_bypass_count_reg[0]_0 ;
  output wr_enable1;
  output insert_idle_reg;
  output rxbuferr0;
  output \wait_bypass_count_reg[0]_1 ;
  input CLK;
  input independent_clock_bufg;
  input gt0_cpllreset_i_3;
  input rxn;
  input rxp;
  input gtrefclk_out;
  input gt0_gttxreset_gt;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input \cpllpd_wait_reg[95] ;
  input MMCM_RESET_reg;
  input gt0_gtrxreset_gt;
  input MMCM_RESET_reg_0;
  input flag_reg;
  input \FSM_sequential_state_reg[0] ;
  input flag_reg_0;
  input \init_wait_count_reg[7] ;
  input [0:0]AR;
  input \FSM_sequential_tx_state_reg[2]_0 ;
  input \FSM_sequential_tx_state_reg[3] ;
  input time_out_2ms_reg;
  input mmcm_lock_reclocked_reg;
  input time_tlock_max_reg_9;
  input time_out_500us_reg_2;
  input \FSM_sequential_tx_state_reg[2]_1 ;
  input \FSM_sequential_tx_state_reg[2]_2 ;
  input \FSM_sequential_tx_state_reg[2]_3 ;
  input \FSM_sequential_tx_state_reg[0]_0 ;
  input \FSM_sequential_tx_state_reg[3]_0 ;
  input \FSM_sequential_tx_state_reg[3]_1 ;
  input time_out_wait_bypass_reg;
  input \init_wait_count_reg[4] ;
  input \FSM_sequential_rx_state_reg[3]_0 ;
  input time_out_2ms_reg_0;
  input \FSM_sequential_rx_state_reg[2] ;
  input check_tlock_max_reg;
  input mmcm_lock_reclocked_reg_0;
  input time_out_100us_reg_5;
  input time_out_1us_reg_5;
  input \FSM_sequential_rx_state_reg[3]_1 ;
  input data_sync_reg6;
  input \FSM_sequential_rx_state_reg[3]_2 ;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input time_out_wait_bypass_reg_0;
  input initialize_ram_complete_sync_ris_edg_reg;
  input \initialize_counter_reg[3] ;
  input initialize_ram_complete_reg;
  input initialize_ram_complete_reg_0;
  input even_reg;
  input even_reg_0;
  input rxbuferr_reg;
  input [0:0]status_vector;
  input enablealign;
  input [0:0]SR;
  input rxreset;
  input MMCM_RESET_reg_1;
  input powerdown;
  input [0:0]\USE_ROCKET_IO.TXCHARDISPMODE_reg ;
  input [0:0]\USE_ROCKET_IO.TXCHARDISPVAL_reg ;
  input [7:0]\USE_ROCKET_IO.TXDATA_reg[7] ;
  input [0:0]\USE_ROCKET_IO.TXCHARISK_reg ;

  wire [0:0]AR;
  wire CLK;
  wire CPLL_RESET0;
  wire [0:0]D;
  wire [3:0]\FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[2] ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire \FSM_sequential_rx_state_reg[3]_0 ;
  wire \FSM_sequential_rx_state_reg[3]_1 ;
  wire \FSM_sequential_rx_state_reg[3]_2 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0]_0 ;
  wire \FSM_sequential_tx_state_reg[2] ;
  wire \FSM_sequential_tx_state_reg[2]_0 ;
  wire \FSM_sequential_tx_state_reg[2]_1 ;
  wire \FSM_sequential_tx_state_reg[2]_2 ;
  wire \FSM_sequential_tx_state_reg[2]_3 ;
  wire \FSM_sequential_tx_state_reg[3] ;
  wire \FSM_sequential_tx_state_reg[3]_0 ;
  wire \FSM_sequential_tx_state_reg[3]_1 ;
  wire MMCM_RESET_reg;
  wire MMCM_RESET_reg_0;
  wire MMCM_RESET_reg_1;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [0:0]\USE_ROCKET_IO.TXCHARDISPMODE_reg ;
  wire [0:0]\USE_ROCKET_IO.TXCHARDISPVAL_reg ;
  wire [0:0]\USE_ROCKET_IO.TXCHARISK_reg ;
  wire [7:0]\USE_ROCKET_IO.TXDATA_reg[7] ;
  wire check_tlock_max_reg;
  wire cpll_reset0_i;
  wire \cpllpd_wait_reg[95] ;
  wire data_in;
  wire data_out;
  wire data_sync_reg1;
  wire data_sync_reg1_0;
  wire data_sync_reg1_1;
  wire data_sync_reg6;
  wire data_valid_reg2;
  wire drp_op_done;
  wire enablealign;
  wire encommaalign_rec;
  wire even;
  wire even_reg;
  wire even_reg_0;
  wire flag_reg;
  wire flag_reg_0;
  wire gt0_cpllreset_i;
  wire gt0_cpllreset_i_3;
  wire gt0_gtrxreset_gt;
  wire gt0_gtrxreset_gt_d1_reg;
  wire gt0_gtrxreset_t;
  wire gt0_gttxreset_gt;
  wire gt0_gttxreset_t;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gt0_rxresetdone_out_i;
  wire gt0_rxuserrdy_i;
  wire gt0_txresetdone_out_i;
  wire gt0_txuserrdy_i;
  wire gtrefclk_out;
  wire gtwizard_inst_n_6;
  wire independent_clock_bufg;
  wire [3:0]\init_wait_count_reg[0] ;
  wire [3:0]\init_wait_count_reg[0]_0 ;
  wire \init_wait_count_reg[0]_1 ;
  wire \init_wait_count_reg[0]_2 ;
  wire \init_wait_count_reg[4] ;
  wire \init_wait_count_reg[7] ;
  wire init_wait_done_reg;
  wire \initialize_counter_reg[3] ;
  wire [4:0]\initialize_counter_reg[4] ;
  wire initialize_ram;
  wire initialize_ram_complete;
  wire initialize_ram_complete_pulse;
  wire initialize_ram_complete_reg;
  wire initialize_ram_complete_reg_0;
  wire initialize_ram_complete_sync_ris_edg;
  wire initialize_ram_complete_sync_ris_edg_reg;
  wire insert_idle_reg;
  wire \mmcm_lock_count_reg[9] ;
  wire [1:0]\mmcm_lock_count_reg[9]_0 ;
  wire [1:0]\mmcm_lock_count_reg[9]_1 ;
  wire \mmcm_lock_count_reg[9]_2 ;
  wire \mmcm_lock_count_reg[9]_3 ;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_0;
  wire mmcm_lock_reclocked_reg;
  wire mmcm_lock_reclocked_reg_0;
  wire mmcm_reset;
  wire [3:0]out;
  wire p_0_in_0;
  wire [0:0]p_1_in;
  wire pll_reset_asserted_reg;
  wire powerdown;
  wire \rd_data_reg[0] ;
  wire [2:0]\rd_data_reg[0]_0 ;
  wire [3:0]\rd_data_reg[0]_1 ;
  wire \rd_data_reg[15] ;
  wire \rd_data_reg[15]_0 ;
  wire reclock_rxreset_n_0;
  wire reset_modified;
  wire reset_out;
  wire reset_time_out;
  wire reset_time_out_1;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire run_phase_alignment_int_s3;
  wire rx_fsm_reset_done_int_reg;
  wire rx_fsm_reset_done_int_reg_0;
  wire rx_fsm_reset_done_int_reg_1;
  wire rx_fsm_reset_done_int_reg_2;
  wire rx_fsm_reset_done_int_reg_3;
  wire rx_fsm_reset_done_int_s3;
  wire rxbuferr0;
  wire rxbuferr_reg;
  wire [0:0]rxbufstatus;
  wire [0:0]rxchariscomma;
  wire [1:0]rxchariscomma_rec;
  wire [0:0]rxcharisk;
  wire [1:0]rxcharisk_rec;
  wire [1:0]rxclkcorcnt;
  wire [15:0]rxdata_rec;
  wire [0:0]rxdisperr;
  wire [1:0]rxdisperr_rec;
  wire rxn;
  wire [0:0]rxnotintable;
  wire [1:0]rxnotintable_rec;
  wire rxoutclk;
  wire rxp;
  wire rxpowerdown_reg;
  wire rxreset;
  wire rxreset_rec;
  wire [0:0]rxrundisp;
  wire [0:0]status_vector;
  wire time_out_100us_reg;
  wire time_out_100us_reg_0;
  wire time_out_100us_reg_1;
  wire time_out_100us_reg_2;
  wire time_out_100us_reg_3;
  wire time_out_100us_reg_4;
  wire time_out_100us_reg_5;
  wire time_out_1us_reg;
  wire time_out_1us_reg_0;
  wire time_out_1us_reg_1;
  wire time_out_1us_reg_2;
  wire time_out_1us_reg_3;
  wire time_out_1us_reg_4;
  wire time_out_1us_reg_5;
  wire time_out_2ms;
  wire time_out_2ms_2;
  wire time_out_2ms_reg;
  wire time_out_2ms_reg_0;
  wire time_out_500us_reg;
  wire time_out_500us_reg_0;
  wire time_out_500us_reg_1;
  wire time_out_500us_reg_2;
  wire time_out_wait_bypass_reg;
  wire time_out_wait_bypass_reg_0;
  wire time_tlock_max;
  wire time_tlock_max_reg;
  wire time_tlock_max_reg_0;
  wire [0:0]time_tlock_max_reg_1;
  wire time_tlock_max_reg_2;
  wire time_tlock_max_reg_3;
  wire time_tlock_max_reg_4;
  wire time_tlock_max_reg_5;
  wire time_tlock_max_reg_6;
  wire time_tlock_max_reg_7;
  wire time_tlock_max_reg_8;
  wire time_tlock_max_reg_9;
  wire toggle;
  wire toggle_i_1_n_0;
  wire tx_fsm_reset_done_int_s3;
  wire txbuferr;
  wire [1:0]txchardispmode_double;
  wire [1:0]txchardispmode_int;
  wire [1:0]txchardispval_double;
  wire [1:0]txchardispval_int;
  wire txchardispval_reg;
  wire [1:0]txcharisk_double;
  wire [1:0]txcharisk_int;
  wire txcharisk_reg;
  wire [15:0]txdata_double;
  wire [15:0]txdata_int;
  wire [7:0]txdata_reg;
  wire txn;
  wire txoutclk;
  wire txp;
  wire txpowerdown;
  wire txpowerdown_double;
  wire txpowerdown_reg__0;
  wire \wait_bypass_count_reg[0] ;
  wire \wait_bypass_count_reg[0]_0 ;
  wire \wait_bypass_count_reg[0]_1 ;
  wire wr_data1;
  wire wr_enable1;
  wire wtd_rxpcsreset_in;

  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD gtwizard_inst
       (.AR(AR),
        .CLK(CLK),
        .CPLL_RESET0(CPLL_RESET0),
        .D({rxchariscomma_rec[0],rxcharisk_rec[0],rxdisperr_rec[0],rxnotintable_rec[0],rxdata_rec[7:0],rxchariscomma_rec[1],rxcharisk_rec[1],rxdisperr_rec[1],rxnotintable_rec[1],rxdata_rec[15:8]}),
        .\FSM_sequential_rx_state_reg[0] (\FSM_sequential_rx_state_reg[0] ),
        .\FSM_sequential_rx_state_reg[0]_0 (\FSM_sequential_rx_state_reg[0]_0 ),
        .\FSM_sequential_rx_state_reg[2] (\FSM_sequential_rx_state_reg[2] ),
        .\FSM_sequential_rx_state_reg[3] (\FSM_sequential_rx_state_reg[3] ),
        .\FSM_sequential_rx_state_reg[3]_0 (\FSM_sequential_rx_state_reg[3]_0 ),
        .\FSM_sequential_rx_state_reg[3]_1 (\FSM_sequential_rx_state_reg[3]_1 ),
        .\FSM_sequential_rx_state_reg[3]_2 (\FSM_sequential_rx_state_reg[3]_2 ),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state_reg[0] ),
        .\FSM_sequential_tx_state_reg[0] (\FSM_sequential_tx_state_reg[0] ),
        .\FSM_sequential_tx_state_reg[0]_0 (\FSM_sequential_tx_state_reg[0]_0 ),
        .\FSM_sequential_tx_state_reg[2] (\FSM_sequential_tx_state_reg[2] ),
        .\FSM_sequential_tx_state_reg[2]_0 (\FSM_sequential_tx_state_reg[2]_0 ),
        .\FSM_sequential_tx_state_reg[2]_1 (\FSM_sequential_tx_state_reg[2]_1 ),
        .\FSM_sequential_tx_state_reg[2]_2 (\FSM_sequential_tx_state_reg[2]_2 ),
        .\FSM_sequential_tx_state_reg[2]_3 (\FSM_sequential_tx_state_reg[2]_3 ),
        .\FSM_sequential_tx_state_reg[3] (\FSM_sequential_tx_state_reg[3] ),
        .\FSM_sequential_tx_state_reg[3]_0 (\FSM_sequential_tx_state_reg[3]_0 ),
        .\FSM_sequential_tx_state_reg[3]_1 (\FSM_sequential_tx_state_reg[3]_1 ),
        .MMCM_RESET_reg(MMCM_RESET_reg),
        .MMCM_RESET_reg_0(MMCM_RESET_reg_1),
        .Q(txdata_int),
        .check_tlock_max_reg(check_tlock_max_reg),
        .cpll_reset0_i(cpll_reset0_i),
        .\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95] ),
        .data_in(data_in),
        .data_out(rx_fsm_reset_done_int_reg),
        .data_sync_reg1(data_sync_reg1),
        .data_sync_reg1_0(data_sync_reg1_0),
        .data_sync_reg1_1(data_sync_reg1_1),
        .data_sync_reg6(data_sync_reg6),
        .data_sync_reg6_0(data_valid_reg2),
        .drp_busy_i1_reg(drp_op_done),
        .flag_reg(flag_reg),
        .flag_reg_0(flag_reg_0),
        .gt0_cpllreset_i_3(gt0_cpllreset_i_3),
        .gt0_gtrxreset_gt(gt0_gtrxreset_gt),
        .gt0_gtrxreset_t(gt0_gtrxreset_t),
        .gt0_gttxreset_gt(gt0_gttxreset_gt),
        .gt0_gttxreset_t(gt0_gttxreset_t),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gt0_rxpd_in(rxpowerdown_reg),
        .gt0_rxresetdone_out_i(gt0_rxresetdone_out_i),
        .gt0_rxuserrdy_i(gt0_rxuserrdy_i),
        .gt0_txbufstatus_out(gtwizard_inst_n_6),
        .gt0_txpd_in(txpowerdown),
        .gt0_txresetdone_out_i(gt0_txresetdone_out_i),
        .gt0_txuserrdy_i(gt0_txuserrdy_i),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .\init_wait_count_reg[0] (\init_wait_count_reg[0] ),
        .\init_wait_count_reg[0]_0 (\init_wait_count_reg[0]_0 ),
        .\init_wait_count_reg[0]_1 (\init_wait_count_reg[0]_1 ),
        .\init_wait_count_reg[0]_2 (\init_wait_count_reg[0]_2 ),
        .\init_wait_count_reg[4] (\init_wait_count_reg[4] ),
        .\init_wait_count_reg[7] (\init_wait_count_reg[7] ),
        .init_wait_done_reg(init_wait_done_reg),
        .\mmcm_lock_count_reg[9] (data_out),
        .\mmcm_lock_count_reg[9]_0 (\mmcm_lock_count_reg[9]_0 ),
        .\mmcm_lock_count_reg[9]_1 (\mmcm_lock_count_reg[9]_2 ),
        .\mmcm_lock_count_reg[9]_2 (\mmcm_lock_count_reg[9] ),
        .\mmcm_lock_count_reg[9]_3 (\mmcm_lock_count_reg[9]_1 ),
        .\mmcm_lock_count_reg[9]_4 (\mmcm_lock_count_reg[9]_3 ),
        .mmcm_lock_reclocked_0(mmcm_lock_reclocked_0),
        .mmcm_lock_reclocked_reg(mmcm_lock_reclocked),
        .mmcm_lock_reclocked_reg_0(mmcm_lock_reclocked_reg),
        .mmcm_lock_reclocked_reg_1(mmcm_lock_reclocked_reg_0),
        .mmcm_reset(mmcm_reset),
        .out(out),
        .pll_reset_asserted_reg(pll_reset_asserted_reg),
        .\rd_data_reg[0] (\rd_data_reg[0] ),
        .\rd_data_reg[0]_0 (\rd_data_reg[0]_0 ),
        .\rd_data_reg[0]_1 (\rd_data_reg[0]_1 ),
        .\rd_data_reg[15] (\rd_data_reg[15] ),
        .\rd_data_reg[15]_0 (\rd_data_reg[15]_0 ),
        .reset_out(encommaalign_rec),
        .reset_sync1(gt0_cpllreset_i),
        .reset_time_out_1(reset_time_out_1),
        .reset_time_out_reg(reset_time_out_reg),
        .reset_time_out_reg_0(reset_time_out_reg_0),
        .reset_time_out_reg_1(reset_time_out_reg_1),
        .run_phase_alignment_int_s3(run_phase_alignment_int_s3),
        .rx_fsm_reset_done_int_reg(rx_fsm_reset_done_int_reg_3),
        .rx_fsm_reset_done_int_reg_0(rx_fsm_reset_done_int_reg_0),
        .rx_fsm_reset_done_int_reg_1(rx_fsm_reset_done_int_reg_1),
        .rx_fsm_reset_done_int_reg_2(rx_fsm_reset_done_int_reg_2),
        .rx_fsm_reset_done_int_s3(rx_fsm_reset_done_int_s3),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .time_out_100us_reg(time_out_100us_reg),
        .time_out_100us_reg_0(time_out_100us_reg_0),
        .time_out_100us_reg_1(time_out_100us_reg_1),
        .time_out_100us_reg_2(time_out_100us_reg_2),
        .time_out_100us_reg_3(time_out_100us_reg_3),
        .time_out_100us_reg_4(time_out_100us_reg_4),
        .time_out_100us_reg_5(time_out_100us_reg_5),
        .time_out_1us_reg(time_out_1us_reg),
        .time_out_1us_reg_0(time_out_1us_reg_0),
        .time_out_1us_reg_1(time_out_1us_reg_1),
        .time_out_1us_reg_2(time_out_1us_reg_2),
        .time_out_1us_reg_3(time_out_1us_reg_3),
        .time_out_1us_reg_4(time_out_1us_reg_4),
        .time_out_1us_reg_5(time_out_1us_reg_5),
        .time_out_2ms(time_out_2ms),
        .time_out_2ms_2(time_out_2ms_2),
        .time_out_2ms_reg(time_out_2ms_reg),
        .time_out_2ms_reg_0(time_out_2ms_reg_0),
        .time_out_500us_reg(time_out_500us_reg),
        .time_out_500us_reg_0(time_out_500us_reg_0),
        .time_out_500us_reg_1(time_out_500us_reg_1),
        .time_out_500us_reg_2(time_out_500us_reg_2),
        .\time_out_counter_reg[18] (reset_time_out),
        .time_out_wait_bypass_reg(time_out_wait_bypass_reg),
        .time_out_wait_bypass_reg_0(time_out_wait_bypass_reg_0),
        .time_tlock_max_reg(time_tlock_max_reg),
        .time_tlock_max_reg_0(time_tlock_max_reg_0),
        .time_tlock_max_reg_1(time_tlock_max),
        .time_tlock_max_reg_10(time_tlock_max_reg_9),
        .time_tlock_max_reg_2(time_tlock_max_reg_1),
        .time_tlock_max_reg_3(time_tlock_max_reg_2),
        .time_tlock_max_reg_4(time_tlock_max_reg_3),
        .time_tlock_max_reg_5(time_tlock_max_reg_4),
        .time_tlock_max_reg_6(time_tlock_max_reg_5),
        .time_tlock_max_reg_7(time_tlock_max_reg_6),
        .time_tlock_max_reg_8(time_tlock_max_reg_7),
        .time_tlock_max_reg_9(time_tlock_max_reg_8),
        .tx_fsm_reset_done_int_s3(tx_fsm_reset_done_int_s3),
        .\txchardispmode_int_reg[1] (txchardispmode_int),
        .\txchardispval_int_reg[1] (txchardispval_int),
        .\txcharisk_int_reg[1] (txcharisk_int),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .\wait_bypass_count_reg[0] (\wait_bypass_count_reg[0] ),
        .\wait_bypass_count_reg[0]_0 (\wait_bypass_count_reg[0]_0 ),
        .\wait_bypass_count_reg[0]_1 (\wait_bypass_count_reg[0]_1 ),
        .wtd_rxpcsreset_in(wtd_rxpcsreset_in));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync reclock_encommaalign
       (.\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95] ),
        .enablealign(enablealign),
        .reset_out(encommaalign_rec));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_1 reclock_rxreset
       (.SR(reclock_rxreset_n_0),
        .\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95] ),
        .data_in(initialize_ram_complete),
        .initialize_ram_complete_pulse(initialize_ram_complete_pulse),
        .reset_out(rxreset_rec),
        .rxreset(rxreset),
        .\wr_data_reg_reg[0] (wr_data1));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_2 reclock_rxreset_indclk
       (.gt0_gtrxreset_gt_d1_reg(gt0_gtrxreset_gt_d1_reg),
        .independent_clock_bufg(independent_clock_bufg),
        .rxreset(rxreset));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_3 reclock_txreset
       (.MMCM_RESET_reg(MMCM_RESET_reg),
        .SR(SR),
        .reset_out(reset_out));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_wtd_timer reset_wtd_timer
       (.data_out(data_valid_reg2),
        .independent_clock_bufg(independent_clock_bufg),
        .wtd_rxpcsreset_in(wtd_rxpcsreset_in));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_rx_elastic_buffer rx_elastic_buffer_inst
       (.D(D),
        .MMCM_RESET_reg(MMCM_RESET_reg_0),
        .Q(\initialize_counter_reg[4] ),
        .SR(reset_modified),
        .\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] (Q),
        .\cpllpd_wait_reg[95] (\cpllpd_wait_reg[95] ),
        .\cpllpd_wait_reg[95]_0 ({rxchariscomma_rec[0],rxcharisk_rec[0],rxdisperr_rec[0],rxnotintable_rec[0],rxdata_rec[7:0],rxchariscomma_rec[1],rxcharisk_rec[1],rxdisperr_rec[1],rxnotintable_rec[1],rxdata_rec[15:8]}),
        .data_in(initialize_ram_complete),
        .even_reg_0(even_reg),
        .even_reg_1(even_reg_0),
        .\initialize_counter_reg[3]_0 (\initialize_counter_reg[3] ),
        .initialize_ram(initialize_ram),
        .initialize_ram_complete_pulse(initialize_ram_complete_pulse),
        .initialize_ram_complete_reg_0(initialize_ram_complete_reg),
        .initialize_ram_complete_reg_1(initialize_ram_complete_reg_0),
        .initialize_ram_complete_sync_ris_edg(initialize_ram_complete_sync_ris_edg),
        .initialize_ram_complete_sync_ris_edg_reg_0(initialize_ram_complete_sync_ris_edg_reg),
        .insert_idle_reg_0(insert_idle_reg),
        .reset_sync6(reclock_rxreset_n_0),
        .reset_sync6_0(wr_data1),
        .rxbuferr0(rxbuferr0),
        .rxbuferr_reg_0(rxbuferr_reg),
        .rxbufstatus(rxbufstatus),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxclkcorcnt(rxclkcorcnt),
        .\rxdata_usr_reg[7]_0 (even),
        .rxdisperr(rxdisperr),
        .rxnotintable(rxnotintable),
        .rxreset_rec(rxreset_rec),
        .rxrundisp(rxrundisp),
        .wr_enable1(wr_enable1));
  FDRE #(
    .INIT(1'b0)) 
    rxpowerdown_reg_reg
       (.C(MMCM_RESET_reg_0),
        .CE(1'b1),
        .D(powerdown),
        .Q(rxpowerdown_reg),
        .R(rxreset));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_4 sync_block_data_valid
       (.data_out(data_valid_reg2),
        .independent_clock_bufg(independent_clock_bufg),
        .status_vector(status_vector));
  LUT1 #(
    .INIT(2'h1)) 
    toggle_i_1
       (.I0(toggle),
        .O(toggle_i_1_n_0));
  FDRE toggle_reg
       (.C(MMCM_RESET_reg_0),
        .CE(1'b1),
        .D(toggle_i_1_n_0),
        .Q(toggle),
        .R(SR));
  FDRE txbuferr_reg
       (.C(MMCM_RESET_reg_0),
        .CE(1'b1),
        .D(p_0_in_0),
        .Q(txbuferr),
        .R(1'b0));
  FDRE \txbufstatus_reg_reg[1] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(gtwizard_inst_n_6),
        .Q(p_0_in_0),
        .R(1'b0));
  FDRE \txchardispmode_double_reg[0] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(p_1_in),
        .Q(txchardispmode_double[0]),
        .R(SR));
  FDRE \txchardispmode_double_reg[1] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(\USE_ROCKET_IO.TXCHARDISPMODE_reg ),
        .Q(txchardispmode_double[1]),
        .R(SR));
  FDRE \txchardispmode_int_reg[0] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txchardispmode_double[0]),
        .Q(txchardispmode_int[0]),
        .R(1'b0));
  FDRE \txchardispmode_int_reg[1] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txchardispmode_double[1]),
        .Q(txchardispmode_int[1]),
        .R(1'b0));
  FDRE txchardispmode_reg_reg
       (.C(MMCM_RESET_reg_0),
        .CE(1'b1),
        .D(\USE_ROCKET_IO.TXCHARDISPMODE_reg ),
        .Q(p_1_in),
        .R(SR));
  FDRE \txchardispval_double_reg[0] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(txchardispval_reg),
        .Q(txchardispval_double[0]),
        .R(SR));
  FDRE \txchardispval_double_reg[1] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(\USE_ROCKET_IO.TXCHARDISPVAL_reg ),
        .Q(txchardispval_double[1]),
        .R(SR));
  FDRE \txchardispval_int_reg[0] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txchardispval_double[0]),
        .Q(txchardispval_int[0]),
        .R(1'b0));
  FDRE \txchardispval_int_reg[1] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txchardispval_double[1]),
        .Q(txchardispval_int[1]),
        .R(1'b0));
  FDRE txchardispval_reg_reg
       (.C(MMCM_RESET_reg_0),
        .CE(1'b1),
        .D(\USE_ROCKET_IO.TXCHARDISPVAL_reg ),
        .Q(txchardispval_reg),
        .R(SR));
  FDRE \txcharisk_double_reg[0] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(txcharisk_reg),
        .Q(txcharisk_double[0]),
        .R(SR));
  FDRE \txcharisk_double_reg[1] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(\USE_ROCKET_IO.TXCHARISK_reg ),
        .Q(txcharisk_double[1]),
        .R(SR));
  FDRE \txcharisk_int_reg[0] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txcharisk_double[0]),
        .Q(txcharisk_int[0]),
        .R(1'b0));
  FDRE \txcharisk_int_reg[1] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txcharisk_double[1]),
        .Q(txcharisk_int[1]),
        .R(1'b0));
  FDRE txcharisk_reg_reg
       (.C(MMCM_RESET_reg_0),
        .CE(1'b1),
        .D(\USE_ROCKET_IO.TXCHARISK_reg ),
        .Q(txcharisk_reg),
        .R(SR));
  FDRE \txdata_double_reg[0] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[0]),
        .Q(txdata_double[0]),
        .R(SR));
  FDRE \txdata_double_reg[10] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(\USE_ROCKET_IO.TXDATA_reg[7] [2]),
        .Q(txdata_double[10]),
        .R(SR));
  FDRE \txdata_double_reg[11] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(\USE_ROCKET_IO.TXDATA_reg[7] [3]),
        .Q(txdata_double[11]),
        .R(SR));
  FDRE \txdata_double_reg[12] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(\USE_ROCKET_IO.TXDATA_reg[7] [4]),
        .Q(txdata_double[12]),
        .R(SR));
  FDRE \txdata_double_reg[13] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(\USE_ROCKET_IO.TXDATA_reg[7] [5]),
        .Q(txdata_double[13]),
        .R(SR));
  FDRE \txdata_double_reg[14] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(\USE_ROCKET_IO.TXDATA_reg[7] [6]),
        .Q(txdata_double[14]),
        .R(SR));
  FDRE \txdata_double_reg[15] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(\USE_ROCKET_IO.TXDATA_reg[7] [7]),
        .Q(txdata_double[15]),
        .R(SR));
  FDRE \txdata_double_reg[1] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[1]),
        .Q(txdata_double[1]),
        .R(SR));
  FDRE \txdata_double_reg[2] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[2]),
        .Q(txdata_double[2]),
        .R(SR));
  FDRE \txdata_double_reg[3] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[3]),
        .Q(txdata_double[3]),
        .R(SR));
  FDRE \txdata_double_reg[4] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[4]),
        .Q(txdata_double[4]),
        .R(SR));
  FDRE \txdata_double_reg[5] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[5]),
        .Q(txdata_double[5]),
        .R(SR));
  FDRE \txdata_double_reg[6] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[6]),
        .Q(txdata_double[6]),
        .R(SR));
  FDRE \txdata_double_reg[7] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[7]),
        .Q(txdata_double[7]),
        .R(SR));
  FDRE \txdata_double_reg[8] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(\USE_ROCKET_IO.TXDATA_reg[7] [0]),
        .Q(txdata_double[8]),
        .R(SR));
  FDRE \txdata_double_reg[9] 
       (.C(MMCM_RESET_reg_0),
        .CE(toggle_i_1_n_0),
        .D(\USE_ROCKET_IO.TXDATA_reg[7] [1]),
        .Q(txdata_double[9]),
        .R(SR));
  FDRE \txdata_int_reg[0] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txdata_double[0]),
        .Q(txdata_int[0]),
        .R(1'b0));
  FDRE \txdata_int_reg[10] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txdata_double[10]),
        .Q(txdata_int[10]),
        .R(1'b0));
  FDRE \txdata_int_reg[11] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txdata_double[11]),
        .Q(txdata_int[11]),
        .R(1'b0));
  FDRE \txdata_int_reg[12] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txdata_double[12]),
        .Q(txdata_int[12]),
        .R(1'b0));
  FDRE \txdata_int_reg[13] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txdata_double[13]),
        .Q(txdata_int[13]),
        .R(1'b0));
  FDRE \txdata_int_reg[14] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txdata_double[14]),
        .Q(txdata_int[14]),
        .R(1'b0));
  FDRE \txdata_int_reg[15] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txdata_double[15]),
        .Q(txdata_int[15]),
        .R(1'b0));
  FDRE \txdata_int_reg[1] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txdata_double[1]),
        .Q(txdata_int[1]),
        .R(1'b0));
  FDRE \txdata_int_reg[2] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txdata_double[2]),
        .Q(txdata_int[2]),
        .R(1'b0));
  FDRE \txdata_int_reg[3] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txdata_double[3]),
        .Q(txdata_int[3]),
        .R(1'b0));
  FDRE \txdata_int_reg[4] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txdata_double[4]),
        .Q(txdata_int[4]),
        .R(1'b0));
  FDRE \txdata_int_reg[5] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txdata_double[5]),
        .Q(txdata_int[5]),
        .R(1'b0));
  FDRE \txdata_int_reg[6] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txdata_double[6]),
        .Q(txdata_int[6]),
        .R(1'b0));
  FDRE \txdata_int_reg[7] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txdata_double[7]),
        .Q(txdata_int[7]),
        .R(1'b0));
  FDRE \txdata_int_reg[8] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txdata_double[8]),
        .Q(txdata_int[8]),
        .R(1'b0));
  FDRE \txdata_int_reg[9] 
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txdata_double[9]),
        .Q(txdata_int[9]),
        .R(1'b0));
  FDRE \txdata_reg_reg[0] 
       (.C(MMCM_RESET_reg_0),
        .CE(1'b1),
        .D(\USE_ROCKET_IO.TXDATA_reg[7] [0]),
        .Q(txdata_reg[0]),
        .R(SR));
  FDRE \txdata_reg_reg[1] 
       (.C(MMCM_RESET_reg_0),
        .CE(1'b1),
        .D(\USE_ROCKET_IO.TXDATA_reg[7] [1]),
        .Q(txdata_reg[1]),
        .R(SR));
  FDRE \txdata_reg_reg[2] 
       (.C(MMCM_RESET_reg_0),
        .CE(1'b1),
        .D(\USE_ROCKET_IO.TXDATA_reg[7] [2]),
        .Q(txdata_reg[2]),
        .R(SR));
  FDRE \txdata_reg_reg[3] 
       (.C(MMCM_RESET_reg_0),
        .CE(1'b1),
        .D(\USE_ROCKET_IO.TXDATA_reg[7] [3]),
        .Q(txdata_reg[3]),
        .R(SR));
  FDRE \txdata_reg_reg[4] 
       (.C(MMCM_RESET_reg_0),
        .CE(1'b1),
        .D(\USE_ROCKET_IO.TXDATA_reg[7] [4]),
        .Q(txdata_reg[4]),
        .R(SR));
  FDRE \txdata_reg_reg[5] 
       (.C(MMCM_RESET_reg_0),
        .CE(1'b1),
        .D(\USE_ROCKET_IO.TXDATA_reg[7] [5]),
        .Q(txdata_reg[5]),
        .R(SR));
  FDRE \txdata_reg_reg[6] 
       (.C(MMCM_RESET_reg_0),
        .CE(1'b1),
        .D(\USE_ROCKET_IO.TXDATA_reg[7] [6]),
        .Q(txdata_reg[6]),
        .R(SR));
  FDRE \txdata_reg_reg[7] 
       (.C(MMCM_RESET_reg_0),
        .CE(1'b1),
        .D(\USE_ROCKET_IO.TXDATA_reg[7] [7]),
        .Q(txdata_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_double_reg
       (.C(MMCM_RESET_reg_0),
        .CE(1'b1),
        .D(txpowerdown_reg__0),
        .Q(txpowerdown_double),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_reg
       (.C(MMCM_RESET_reg),
        .CE(1'b1),
        .D(txpowerdown_double),
        .Q(txpowerdown),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_reg_reg
       (.C(MMCM_RESET_reg_0),
        .CE(1'b1),
        .D(powerdown),
        .Q(txpowerdown_reg__0),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_tx_rate_adapt" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_tx_rate_adapt
   (gmii_tx_en_int,
    gmii_tx_er_int,
    Q,
    sync_reset,
    E,
    gmii_tx_en,
    MMCM_RESET_reg,
    gmii_tx_er,
    gmii_txd);
  output gmii_tx_en_int;
  output gmii_tx_er_int;
  output [7:0]Q;
  input sync_reset;
  input [0:0]E;
  input gmii_tx_en;
  input MMCM_RESET_reg;
  input gmii_tx_er;
  input [7:0]gmii_txd;

  wire [0:0]E;
  wire MMCM_RESET_reg;
  wire [7:0]Q;
  wire gmii_tx_en;
  wire gmii_tx_en_int;
  wire gmii_tx_er;
  wire gmii_tx_er_int;
  wire [7:0]gmii_txd;
  wire sync_reset;

  FDRE #(
    .INIT(1'b0)) 
    gmii_tx_en_out_reg
       (.C(MMCM_RESET_reg),
        .CE(E),
        .D(gmii_tx_en),
        .Q(gmii_tx_en_int),
        .R(sync_reset));
  FDRE #(
    .INIT(1'b0)) 
    gmii_tx_er_out_reg
       (.C(MMCM_RESET_reg),
        .CE(E),
        .D(gmii_tx_er),
        .Q(gmii_tx_er_int),
        .R(sync_reset));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[0] 
       (.C(MMCM_RESET_reg),
        .CE(E),
        .D(gmii_txd[0]),
        .Q(Q[0]),
        .R(sync_reset));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[1] 
       (.C(MMCM_RESET_reg),
        .CE(E),
        .D(gmii_txd[1]),
        .Q(Q[1]),
        .R(sync_reset));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[2] 
       (.C(MMCM_RESET_reg),
        .CE(E),
        .D(gmii_txd[2]),
        .Q(Q[2]),
        .R(sync_reset));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[3] 
       (.C(MMCM_RESET_reg),
        .CE(E),
        .D(gmii_txd[3]),
        .Q(Q[3]),
        .R(sync_reset));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[4] 
       (.C(MMCM_RESET_reg),
        .CE(E),
        .D(gmii_txd[4]),
        .Q(Q[4]),
        .R(sync_reset));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[5] 
       (.C(MMCM_RESET_reg),
        .CE(E),
        .D(gmii_txd[5]),
        .Q(Q[5]),
        .R(sync_reset));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[6] 
       (.C(MMCM_RESET_reg),
        .CE(E),
        .D(gmii_txd[6]),
        .Q(Q[6]),
        .R(sync_reset));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[7] 
       (.C(MMCM_RESET_reg),
        .CE(E),
        .D(gmii_txd[7]),
        .Q(Q[7]),
        .R(sync_reset));
endmodule

(* B_SHIFTER_ADDR = "8'b01010000" *) (* C_1588 = "0" *) (* C_COMPONENT_NAME = "gig_ethernet_pcs_pma_1" *) 
(* C_DYNAMIC_SWITCHING = "FALSE" *) (* C_ELABORATION_TRANSIENT_DIR = "BlankString" *) (* C_FAMILY = "virtex7" *) 
(* C_HAS_AN = "FALSE" *) (* C_HAS_MDIO = "FALSE" *) (* C_HAS_TEMAC = "TRUE" *) 
(* C_IS_SGMII = "TRUE" *) (* C_SGMII_FABRIC_BUFFER = "TRUE" *) (* C_SGMII_PHY_MODE = "FALSE" *) 
(* C_USE_LVDS = "FALSE" *) (* C_USE_TBI = "FALSE" *) (* C_USE_TRANSCEIVER = "TRUE" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* GT_RX_BYTE_WIDTH = "1" *) (* ORIG_REF_NAME = "gig_ethernet_pcs_pma_v15_1_1" *) 
(* RX_GT_NOMINAL_LATENCY = "16'b0000000011001000" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_v15_1_1
   (reset,
    signal_detect,
    link_timer_value,
    link_timer_basex,
    link_timer_sgmii,
    mgt_rx_reset,
    mgt_tx_reset,
    userclk,
    userclk2,
    dcm_locked,
    rxbufstatus,
    rxchariscomma,
    rxcharisk,
    rxclkcorcnt,
    rxdata,
    rxdisperr,
    rxnotintable,
    rxrundisp,
    txbuferr,
    powerdown,
    txchardispmode,
    txchardispval,
    txcharisk,
    txdata,
    enablealign,
    gtx_clk,
    tx_code_group,
    loc_ref,
    ewrap,
    rx_code_group0,
    rx_code_group1,
    pma_rx_clk0,
    pma_rx_clk1,
    en_cdet,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    an_interrupt,
    an_enable,
    speed_selection,
    phyad,
    mdc,
    mdio_in,
    mdio_out,
    mdio_tri,
    an_adv_config_vector,
    an_adv_config_val,
    an_restart_config,
    configuration_vector,
    configuration_valid,
    status_vector,
    basex_or_sgmii,
    drp_dclk,
    drp_req,
    drp_gnt,
    drp_den,
    drp_dwe,
    drp_drdy,
    drp_daddr,
    drp_di,
    drp_do,
    systemtimer_s_field,
    systemtimer_ns_field,
    correction_timer,
    rxrecclk,
    rxphy_s_field,
    rxphy_ns_field,
    rxphy_correction_timer,
    reset_done);
  input reset;
  input signal_detect;
  input [9:0]link_timer_value;
  input [9:0]link_timer_basex;
  input [9:0]link_timer_sgmii;
  output mgt_rx_reset;
  output mgt_tx_reset;
  input userclk;
  input userclk2;
  input dcm_locked;
  input [1:0]rxbufstatus;
  input [0:0]rxchariscomma;
  input [0:0]rxcharisk;
  input [2:0]rxclkcorcnt;
  input [7:0]rxdata;
  input [0:0]rxdisperr;
  input [0:0]rxnotintable;
  input [0:0]rxrundisp;
  input txbuferr;
  output powerdown;
  output txchardispmode;
  output txchardispval;
  output txcharisk;
  output [7:0]txdata;
  output enablealign;
  input gtx_clk;
  output [9:0]tx_code_group;
  output loc_ref;
  output ewrap;
  input [9:0]rx_code_group0;
  input [9:0]rx_code_group1;
  input pma_rx_clk0;
  input pma_rx_clk1;
  output en_cdet;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  output an_interrupt;
  output an_enable;
  output [1:0]speed_selection;
  input [4:0]phyad;
  input mdc;
  input mdio_in;
  output mdio_out;
  output mdio_tri;
  input [15:0]an_adv_config_vector;
  input an_adv_config_val;
  input an_restart_config;
  input [4:0]configuration_vector;
  input configuration_valid;
  output [15:0]status_vector;
  input basex_or_sgmii;
  input drp_dclk;
  output drp_req;
  input drp_gnt;
  output drp_den;
  output drp_dwe;
  input drp_drdy;
  output [8:0]drp_daddr;
  output [15:0]drp_di;
  input [15:0]drp_do;
  input [47:0]systemtimer_s_field;
  input [31:0]systemtimer_ns_field;
  input [63:0]correction_timer;
  input rxrecclk;
  output [47:0]rxphy_s_field;
  output [31:0]rxphy_ns_field;
  output [63:0]rxphy_correction_timer;
  input reset_done;

  wire \<const0> ;
  wire \<const1> ;
  wire [4:0]configuration_vector;
  wire dcm_locked;
  wire enablealign;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire mgt_rx_reset;
  wire mgt_tx_reset;
  wire powerdown;
  wire reset;
  wire reset_done;
  wire [1:0]rxbufstatus;
  wire [0:0]rxchariscomma;
  wire [0:0]rxcharisk;
  wire [2:0]rxclkcorcnt;
  wire [7:0]rxdata;
  wire [0:0]rxdisperr;
  wire [0:0]rxnotintable;
  wire [0:0]rxrundisp;
  wire signal_detect;
  wire [6:0]\^status_vector ;
  wire txbuferr;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire [7:0]txdata;
  wire userclk;
  wire userclk2;

  assign an_enable = \<const0> ;
  assign an_interrupt = \<const0> ;
  assign drp_daddr[8] = \<const0> ;
  assign drp_daddr[7] = \<const0> ;
  assign drp_daddr[6] = \<const0> ;
  assign drp_daddr[5] = \<const0> ;
  assign drp_daddr[4] = \<const0> ;
  assign drp_daddr[3] = \<const0> ;
  assign drp_daddr[2] = \<const0> ;
  assign drp_daddr[1] = \<const0> ;
  assign drp_daddr[0] = \<const0> ;
  assign drp_den = \<const0> ;
  assign drp_di[15] = \<const0> ;
  assign drp_di[14] = \<const0> ;
  assign drp_di[13] = \<const0> ;
  assign drp_di[12] = \<const0> ;
  assign drp_di[11] = \<const0> ;
  assign drp_di[10] = \<const0> ;
  assign drp_di[9] = \<const0> ;
  assign drp_di[8] = \<const0> ;
  assign drp_di[7] = \<const0> ;
  assign drp_di[6] = \<const0> ;
  assign drp_di[5] = \<const0> ;
  assign drp_di[4] = \<const0> ;
  assign drp_di[3] = \<const0> ;
  assign drp_di[2] = \<const0> ;
  assign drp_di[1] = \<const0> ;
  assign drp_di[0] = \<const0> ;
  assign drp_dwe = \<const0> ;
  assign drp_req = \<const0> ;
  assign en_cdet = \<const0> ;
  assign ewrap = \<const0> ;
  assign loc_ref = \<const0> ;
  assign mdio_out = \<const1> ;
  assign mdio_tri = \<const1> ;
  assign rxphy_correction_timer[63] = \<const0> ;
  assign rxphy_correction_timer[62] = \<const0> ;
  assign rxphy_correction_timer[61] = \<const0> ;
  assign rxphy_correction_timer[60] = \<const0> ;
  assign rxphy_correction_timer[59] = \<const0> ;
  assign rxphy_correction_timer[58] = \<const0> ;
  assign rxphy_correction_timer[57] = \<const0> ;
  assign rxphy_correction_timer[56] = \<const0> ;
  assign rxphy_correction_timer[55] = \<const0> ;
  assign rxphy_correction_timer[54] = \<const0> ;
  assign rxphy_correction_timer[53] = \<const0> ;
  assign rxphy_correction_timer[52] = \<const0> ;
  assign rxphy_correction_timer[51] = \<const0> ;
  assign rxphy_correction_timer[50] = \<const0> ;
  assign rxphy_correction_timer[49] = \<const0> ;
  assign rxphy_correction_timer[48] = \<const0> ;
  assign rxphy_correction_timer[47] = \<const0> ;
  assign rxphy_correction_timer[46] = \<const0> ;
  assign rxphy_correction_timer[45] = \<const0> ;
  assign rxphy_correction_timer[44] = \<const0> ;
  assign rxphy_correction_timer[43] = \<const0> ;
  assign rxphy_correction_timer[42] = \<const0> ;
  assign rxphy_correction_timer[41] = \<const0> ;
  assign rxphy_correction_timer[40] = \<const0> ;
  assign rxphy_correction_timer[39] = \<const0> ;
  assign rxphy_correction_timer[38] = \<const0> ;
  assign rxphy_correction_timer[37] = \<const0> ;
  assign rxphy_correction_timer[36] = \<const0> ;
  assign rxphy_correction_timer[35] = \<const0> ;
  assign rxphy_correction_timer[34] = \<const0> ;
  assign rxphy_correction_timer[33] = \<const0> ;
  assign rxphy_correction_timer[32] = \<const0> ;
  assign rxphy_correction_timer[31] = \<const0> ;
  assign rxphy_correction_timer[30] = \<const0> ;
  assign rxphy_correction_timer[29] = \<const0> ;
  assign rxphy_correction_timer[28] = \<const0> ;
  assign rxphy_correction_timer[27] = \<const0> ;
  assign rxphy_correction_timer[26] = \<const0> ;
  assign rxphy_correction_timer[25] = \<const0> ;
  assign rxphy_correction_timer[24] = \<const0> ;
  assign rxphy_correction_timer[23] = \<const0> ;
  assign rxphy_correction_timer[22] = \<const0> ;
  assign rxphy_correction_timer[21] = \<const0> ;
  assign rxphy_correction_timer[20] = \<const0> ;
  assign rxphy_correction_timer[19] = \<const0> ;
  assign rxphy_correction_timer[18] = \<const0> ;
  assign rxphy_correction_timer[17] = \<const0> ;
  assign rxphy_correction_timer[16] = \<const0> ;
  assign rxphy_correction_timer[15] = \<const0> ;
  assign rxphy_correction_timer[14] = \<const0> ;
  assign rxphy_correction_timer[13] = \<const0> ;
  assign rxphy_correction_timer[12] = \<const0> ;
  assign rxphy_correction_timer[11] = \<const0> ;
  assign rxphy_correction_timer[10] = \<const0> ;
  assign rxphy_correction_timer[9] = \<const0> ;
  assign rxphy_correction_timer[8] = \<const0> ;
  assign rxphy_correction_timer[7] = \<const0> ;
  assign rxphy_correction_timer[6] = \<const0> ;
  assign rxphy_correction_timer[5] = \<const0> ;
  assign rxphy_correction_timer[4] = \<const0> ;
  assign rxphy_correction_timer[3] = \<const0> ;
  assign rxphy_correction_timer[2] = \<const0> ;
  assign rxphy_correction_timer[1] = \<const0> ;
  assign rxphy_correction_timer[0] = \<const0> ;
  assign rxphy_ns_field[31] = \<const0> ;
  assign rxphy_ns_field[30] = \<const0> ;
  assign rxphy_ns_field[29] = \<const0> ;
  assign rxphy_ns_field[28] = \<const0> ;
  assign rxphy_ns_field[27] = \<const0> ;
  assign rxphy_ns_field[26] = \<const0> ;
  assign rxphy_ns_field[25] = \<const0> ;
  assign rxphy_ns_field[24] = \<const0> ;
  assign rxphy_ns_field[23] = \<const0> ;
  assign rxphy_ns_field[22] = \<const0> ;
  assign rxphy_ns_field[21] = \<const0> ;
  assign rxphy_ns_field[20] = \<const0> ;
  assign rxphy_ns_field[19] = \<const0> ;
  assign rxphy_ns_field[18] = \<const0> ;
  assign rxphy_ns_field[17] = \<const0> ;
  assign rxphy_ns_field[16] = \<const0> ;
  assign rxphy_ns_field[15] = \<const0> ;
  assign rxphy_ns_field[14] = \<const0> ;
  assign rxphy_ns_field[13] = \<const0> ;
  assign rxphy_ns_field[12] = \<const0> ;
  assign rxphy_ns_field[11] = \<const0> ;
  assign rxphy_ns_field[10] = \<const0> ;
  assign rxphy_ns_field[9] = \<const0> ;
  assign rxphy_ns_field[8] = \<const0> ;
  assign rxphy_ns_field[7] = \<const0> ;
  assign rxphy_ns_field[6] = \<const0> ;
  assign rxphy_ns_field[5] = \<const0> ;
  assign rxphy_ns_field[4] = \<const0> ;
  assign rxphy_ns_field[3] = \<const0> ;
  assign rxphy_ns_field[2] = \<const0> ;
  assign rxphy_ns_field[1] = \<const0> ;
  assign rxphy_ns_field[0] = \<const0> ;
  assign rxphy_s_field[47] = \<const0> ;
  assign rxphy_s_field[46] = \<const0> ;
  assign rxphy_s_field[45] = \<const0> ;
  assign rxphy_s_field[44] = \<const0> ;
  assign rxphy_s_field[43] = \<const0> ;
  assign rxphy_s_field[42] = \<const0> ;
  assign rxphy_s_field[41] = \<const0> ;
  assign rxphy_s_field[40] = \<const0> ;
  assign rxphy_s_field[39] = \<const0> ;
  assign rxphy_s_field[38] = \<const0> ;
  assign rxphy_s_field[37] = \<const0> ;
  assign rxphy_s_field[36] = \<const0> ;
  assign rxphy_s_field[35] = \<const0> ;
  assign rxphy_s_field[34] = \<const0> ;
  assign rxphy_s_field[33] = \<const0> ;
  assign rxphy_s_field[32] = \<const0> ;
  assign rxphy_s_field[31] = \<const0> ;
  assign rxphy_s_field[30] = \<const0> ;
  assign rxphy_s_field[29] = \<const0> ;
  assign rxphy_s_field[28] = \<const0> ;
  assign rxphy_s_field[27] = \<const0> ;
  assign rxphy_s_field[26] = \<const0> ;
  assign rxphy_s_field[25] = \<const0> ;
  assign rxphy_s_field[24] = \<const0> ;
  assign rxphy_s_field[23] = \<const0> ;
  assign rxphy_s_field[22] = \<const0> ;
  assign rxphy_s_field[21] = \<const0> ;
  assign rxphy_s_field[20] = \<const0> ;
  assign rxphy_s_field[19] = \<const0> ;
  assign rxphy_s_field[18] = \<const0> ;
  assign rxphy_s_field[17] = \<const0> ;
  assign rxphy_s_field[16] = \<const0> ;
  assign rxphy_s_field[15] = \<const0> ;
  assign rxphy_s_field[14] = \<const0> ;
  assign rxphy_s_field[13] = \<const0> ;
  assign rxphy_s_field[12] = \<const0> ;
  assign rxphy_s_field[11] = \<const0> ;
  assign rxphy_s_field[10] = \<const0> ;
  assign rxphy_s_field[9] = \<const0> ;
  assign rxphy_s_field[8] = \<const0> ;
  assign rxphy_s_field[7] = \<const0> ;
  assign rxphy_s_field[6] = \<const0> ;
  assign rxphy_s_field[5] = \<const0> ;
  assign rxphy_s_field[4] = \<const0> ;
  assign rxphy_s_field[3] = \<const0> ;
  assign rxphy_s_field[2] = \<const0> ;
  assign rxphy_s_field[1] = \<const0> ;
  assign rxphy_s_field[0] = \<const0> ;
  assign speed_selection[1] = \<const1> ;
  assign speed_selection[0] = \<const0> ;
  assign status_vector[15] = \<const0> ;
  assign status_vector[14] = \<const0> ;
  assign status_vector[13] = \<const0> ;
  assign status_vector[12] = \<const0> ;
  assign status_vector[11] = \<const0> ;
  assign status_vector[10] = \<const0> ;
  assign status_vector[9] = \<const0> ;
  assign status_vector[8] = \<const0> ;
  assign status_vector[7] = \<const0> ;
  assign status_vector[6:0] = \^status_vector [6:0];
  assign tx_code_group[9] = \<const0> ;
  assign tx_code_group[8] = \<const0> ;
  assign tx_code_group[7] = \<const0> ;
  assign tx_code_group[6] = \<const0> ;
  assign tx_code_group[5] = \<const0> ;
  assign tx_code_group[4] = \<const0> ;
  assign tx_code_group[3] = \<const0> ;
  assign tx_code_group[2] = \<const0> ;
  assign tx_code_group[1] = \<const0> ;
  assign tx_code_group[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  gig_ethernet_pcs_pma_1_GPCS_PMA_GEN gpcs_pma_inst
       (.MGT_RX_RESET(mgt_rx_reset),
        .MGT_TX_RESET(mgt_tx_reset),
        .configuration_vector(configuration_vector[3:1]),
        .dcm_locked(dcm_locked),
        .enablealign(enablealign),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .reset(reset),
        .reset_done(reset_done),
        .rxbufstatus(rxbufstatus[1]),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxclkcorcnt(rxclkcorcnt),
        .rxdata(rxdata),
        .rxdisperr(rxdisperr),
        .rxnotintable(rxnotintable),
        .rxpowerdown_reg_reg(powerdown),
        .signal_detect(signal_detect),
        .status_vector(\^status_vector ),
        .txbuferr(txbuferr),
        .txchardispmode(txchardispmode),
        .txchardispval(txchardispval),
        .txcharisk(txcharisk),
        .txdata(txdata),
        .userclk(userclk),
        .userclk2(userclk2));
endmodule

(* ORIG_REF_NAME = "reset_sync_block" *) 
module gig_ethernet_pcs_pma_1_reset_sync_block
   (\MGT_RESET.RESET_INT_PIPE_reg ,
    dcm_locked,
    userclk,
    reset);
  output \MGT_RESET.RESET_INT_PIPE_reg ;
  input dcm_locked;
  input userclk;
  input reset;

  wire \MGT_RESET.RESET_INT_PIPE_reg ;
  wire dcm_locked;
  wire reset;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;
  wire userclk;

  LUT2 #(
    .INIT(4'hB)) 
    \MGT_RESET.RESET_INT_PIPE_i_1 
       (.I0(reset_out),
        .I1(dcm_locked),
        .O(\MGT_RESET.RESET_INT_PIPE_reg ));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(userclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(reset),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(reset),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(reset),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(reset),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "sync_block" *) 
module gig_ethernet_pcs_pma_1_sync_block
   (SIGNAL_DETECT_MOD,
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2] ,
    signal_detect,
    userclk2);
  output SIGNAL_DETECT_MOD;
  input \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2] ;
  input signal_detect;
  input userclk2;

  wire \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2] ;
  wire SIGNAL_DETECT_MOD;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire signal_detect;
  wire userclk2;

  LUT2 #(
    .INIT(4'h2)) 
    SIGNAL_DETECT_REG_i_1
       (.I0(data_out),
        .I1(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2] ),
        .O(SIGNAL_DETECT_MOD));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(signal_detect),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
