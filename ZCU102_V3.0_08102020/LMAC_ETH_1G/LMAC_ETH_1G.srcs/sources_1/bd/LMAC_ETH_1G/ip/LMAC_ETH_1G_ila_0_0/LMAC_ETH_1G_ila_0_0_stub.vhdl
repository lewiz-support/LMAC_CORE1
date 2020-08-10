-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Sun Apr  7 10:08:11 2019
-- Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/lewiz2/lewiz2-sambashare/KIRATEY/LMAC_ETH_1G_NEW_BRIDGE/LMAC_ETH_1G.srcs/sources_1/bd/LMAC_ETH_1G/ip/LMAC_ETH_1G_ila_0_0/LMAC_ETH_1G_ila_0_0_stub.vhdl
-- Design      : LMAC_ETH_1G_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu15eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LMAC_ETH_1G_ila_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );

end LMAC_ETH_1G_ila_0_0;

architecture stub of LMAC_ETH_1G_ila_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[7:0],probe1[0:0],probe2[7:0],probe3[0:0],probe4[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ila,Vivado 2018.2";
begin
end;
