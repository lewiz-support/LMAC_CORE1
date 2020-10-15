-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Sat Apr 20 10:28:40 2019
-- Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/lewiz/sambashare/KIRATEY/LMAC1_INTEGRATED/LMAC_ETH_1G/LMAC_ETH_1G.srcs/sources_1/bd/LMAC_ETH_1G/ip/LMAC_ETH_1G_AXIS_LMAC_IP_0_0/LMAC_ETH_1G_AXIS_LMAC_IP_0_0_stub.vhdl
-- Design      : LMAC_ETH_1G_AXIS_LMAC_IP_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu15eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LMAC_ETH_1G_AXIS_LMAC_IP_0_0 is
  Port ( 
    dclk : in STD_LOGIC;
    lclk : in STD_LOGIC;
    \rst_\ : in STD_LOGIC;
    fmac_speed : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gmii_txd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : out STD_LOGIC;
    gmii_tx_er : out STD_LOGIC;
    gmii_rxd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_er : in STD_LOGIC;
    gmii_rx_dv : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    rdempty_wf : out STD_LOGIC;
    rdempty_wcf : out STD_LOGIC;
    dataout_wf : out STD_LOGIC_VECTOR ( 63 downto 0 );
    dataout_wcf : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rden_wf : out STD_LOGIC;
    rden_wcf : out STD_LOGIC;
    rdempty_rf : out STD_LOGIC;
    rdempty_rcf : out STD_LOGIC;
    dataout_rf : out STD_LOGIC_VECTOR ( 63 downto 0 );
    dataout_rcf : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rden_rf : out STD_LOGIC;
    rden_rcf : out STD_LOGIC;
    txdata_wrfull : out STD_LOGIC;
    txdata_wrusedw : out STD_LOGIC_VECTOR ( 8 downto 0 );
    axis2fib_txctrl_st : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_mac_wr_reg : out STD_LOGIC;
    tx_mac_data_reg : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_mac_usedw_reg : out STD_LOGIC_VECTOR ( 12 downto 0 );
    fib2fmac_txctrl_st : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_mac_empty_reg : out STD_LOGIC;
    cs_fifo_empty_reg : out STD_LOGIC;
    bcnt_more_than_1500 : out STD_LOGIC;
    axis2fib_ar_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fmac2fib_ar_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wr2_txwbcnt_fifo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    txwbcnt_wrreq : out STD_LOGIC;
    txwbcnt_wrempty : out STD_LOGIC;
    txwbcnt_wrusedw : out STD_LOGIC_VECTOR ( 2 downto 0 );
    wr2_txdata_fifo : out STD_LOGIC_VECTOR ( 63 downto 0 );
    txdata_wrempty : out STD_LOGIC;
    txdata_wrreq : out STD_LOGIC
  );

end LMAC_ETH_1G_AXIS_LMAC_IP_0_0;

architecture stub of LMAC_ETH_1G_AXIS_LMAC_IP_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dclk,lclk,\rst_\,fmac_speed[1:0],gmii_txd[7:0],gmii_tx_en,gmii_tx_er,gmii_rxd[7:0],gmii_rx_er,gmii_rx_dv,s_axis_tvalid,s_axis_tready,s_axis_tdata[63:0],s_axis_tkeep[7:0],s_axis_tlast,m_axis_tvalid,m_axis_tready,m_axis_tdata[63:0],m_axis_tkeep[7:0],m_axis_tlast,rdempty_wf,rdempty_wcf,dataout_wf[63:0],dataout_wcf[31:0],rden_wf,rden_wcf,rdempty_rf,rdempty_rcf,dataout_rf[63:0],dataout_rcf[31:0],rden_rf,rden_rcf,txdata_wrfull,txdata_wrusedw[8:0],axis2fib_txctrl_st[3:0],tx_mac_wr_reg,tx_mac_data_reg[63:0],tx_mac_usedw_reg[12:0],fib2fmac_txctrl_st[3:0],rx_mac_empty_reg,cs_fifo_empty_reg,bcnt_more_than_1500,axis2fib_ar_state[3:0],fmac2fib_ar_state[3:0],wr2_txwbcnt_fifo[31:0],txwbcnt_wrreq,txwbcnt_wrempty,txwbcnt_wrusedw[2:0],wr2_txdata_fifo[63:0],txdata_wrempty,txdata_wrreq";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "AXIS_LMAC_TOP,Vivado 2018.2";
begin
end;
