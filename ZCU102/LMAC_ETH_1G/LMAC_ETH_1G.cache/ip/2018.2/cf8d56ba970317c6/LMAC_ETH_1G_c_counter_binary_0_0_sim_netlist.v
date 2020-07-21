// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Apr  7 14:36:04 2019
// Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LMAC_ETH_1G_c_counter_binary_0_0_sim_netlist.v
// Design      : LMAC_ETH_1G_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LMAC_ETH_1G_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 125000000, PHASE 0, CLK_DOMAIN LMAC_ETH_1G_gig_ethernet_pcs_pma_0_0_userclk2_out" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 32}" *) output [31:0]Q;

  wire CLK;
  wire [31:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "32" *) 
(* C_XDEVICEFAMILY = "zynquplus" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [31:0]L;
  output THRESH0;
  output [31:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [31:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
RhedCTftnR/lFLJouqVu00X8CC4TkDlMiW/WeWJSYDyQHVO1xW1z9+hmgAziXI4s3uGElBs9cXRS
4yVMV7QH0w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qX90FYlZfOA3sZpcv0rrvWRKCSlr3skWpeAe5OSxHcZPsVQFyY0hhWVDtP/vB+dV9hIUwAN29Fn9
+L9OEXYMlIw5gH6s9NmquAs3lmPRLTrrpKJWdvf6+b+LeG9CPwLz87bXAk4qQW80zUHBaDKDLV3q
pd/gEf8Y3st+mLOGjNU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
chpH3Rj5RAirYZHkpJvTu4EJpydPPSy15v646y2lN/1w3bwHI+M8EpLMBjimx8uIWRJZ6dDWPR8E
zkwK1TMroEKFaL8IkFMSHPyzqbrH9l1jxYFs0ee8Itp8Rg8qenv5RXM+h4JRTtRmzHk1A8s8zeKY
MgXzIBCAzBa/vSgzDuDaUnO8r8f/5KtRjmE28JLNXXAxyijBrMTCiIHMRJZL5/+LgUyVq7/Zr5yx
7kuNGWv7Q0wESEqhsQbK6UNel5ak1cor7647dYJgIxnNZ6jGVJPkqi8ydAIZ0z0Dy4txBvVaMyP6
2kYYnbVN6S6q6yr/QcJHEOgefF59B/8JuWzdoQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z2XauOF3/9FUIv1kEFfEtdy93+zHY5q9dH1pJCNLytoWWhhJBfCI5Uc2w/fQLrvVw2Ivy0/rs9qH
9fomTNECWeCphNDVpWGNcFDGE51jt6SDWt7FmgfZq4iXN7XWrfmkQa4DB7QbtSBHCMcBT53TKbDH
suKNhAWMV0htWeNEgN4Y0biiz8U4RLT1stdsMMtEzfYVhtrTmFWLihJ/9gJ01pm/kv4OB2cJEslg
sjbxCE2B4Y1uSj93tnBAw4/f2RYGfPcSrkaXkNgOYK2dc5NQgd82XvP8siAK/ETcZQ1lBK367Rxv
nlr6QUMwKALmjLVe/IThpCRGbOSy3QykkwnpHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/mF2RV90mf5PFUZZUjMej6jQS+Qx16uCeiDQxUX+H+O2yjP6UECegDbtLmGk9algbDuGBCE0KgZ
HzSxX5pMwDq1J7nFyBsu1dGyu8NeJxfu0fFA/qS/SYJSTtwnZ/eIj09mNLJ3w8wGR87ke1ETTRpx
4Ni9DzGJ/aaWFaUenL/x4UWS9yqlaNi5Utcpa4kcUHC6fW0asZsThZJBqpArO54TF40nxZAD+V82
6mBGFOKUzgmHqXNsbVif4JqUd63LG8YWxjrOeesq61xzyjw9caQMuA9v/5sQslCFaeSt2atgqyaA
y4mcm0kU60s6mYqJr4KZt8DWG7LPGoIjhjpnMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YNrNxIZl8p2OCPz+4Y4awQ09ZZ41X8EdKu2SX1gXfB3qoV3EOXf4eFHtYJ+bFIccfEIqPfZ+dnr7
udcSDAJMcxqZe+YNk5hTq+uX4PlnQH/IVlkgyYiDhQ7aRIS5pwtIRC3biXn80933ov4zlWLI+ZBq
bG8lodZjxKh6HZPWi7s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eWToRZf4bzAQhHTj44yEkOqolJ3BOvlBPKnKoDCpSvCHSrnRcJKgOd47PnboABTqLVstQenz8AFe
rWHBbaad7KOIh3LsEXBwDHKDdby7iDAB5nd3j2Wp7qiHOv7WpIJ5RG1GMQa8+QXHMVaV4jSvsdmt
d0D9H0WEVaqrSFW2ucpsMYNE0LnKcSJ1SejKOcgISzaGJgXcmEAOVAOnCDPc4slwc3dt7Jne1KvY
i66An36Mfhhd1b0RikMf4yqpM+uVrL5XWIP+TBtw3iQRE0ZkUSn3K0My73/2vKKBfwyV0c+M/Il+
aMxNaD44Gq+/f6zGjkelgMEI4BjB5rs1KRvSCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mXIZCTu/7aAnCywLsRA2e4plqME12XhjDq9s7u/0bWR7ZCa5XR+McPaMBclhkNilxydeXJ0jv/dT
hdSfw/UKZv0ynraHEP+PBb8vNUwdH7RSvXukyXJw1IW9l0OPLwbmGyWsXHWFdjmtBDwXZQV5/vn2
/TYLFmMvrY2+KoYxqo1cWPjNIvxfcPv13BY6HKENqXv1KUzF0OyeCKRGnycp0sl79+YMZLwD/cLO
3KkyMFlBwY93nGRRbjNO5jus1TEJw3G9CxQRKOvzSa++Hwxk/SdpaCu6ayjKHD/ba0ZZui42NugB
f6Xq1ldTxwKAINVRDWsReJ3kDmbZ571fX39dgA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xf4nYVedgHWekw+F/ekxYucntWDwZ5Erc9dBIMufOpnl22O7mUHHOGUTj69FGJINEbHr5UJcWJUD
GRNNh4+vqB5Dp/odLOLhu7l07zRfQBGMBuXEEGZLMPxsHVTxRXCXi8AFKZ9PT6SCrSYyBXFRfRwB
10uW6KobGvwwCr3BHB5AftTKd1hQRkCekTtsY0HBsig12FoDTrhtCCzqojPAuVBcqyxD0EqUNrhD
uRTN0My6lg+KK8DoN/qthOlA8a+JEC07V/sdhY0k0JyLErKNFjzjD8fs5G/QAhkNFi0IR3Us7IP4
Q7dljw0ah6OqtVuosRdBGLVuuQ1YzQvOfCXDGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16576)
`pragma protect data_block
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
`pragma protect end_protected
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
