// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Apr  7 14:36:05 2019
// Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lewiz/sambashare/KIRATEY/RELEASE/LMAC_ETH_1G_xczu9eg/LMAC_ETH_1G.srcs/sources_1/bd/LMAC_ETH_1G/ip/LMAC_ETH_1G_c_counter_binary_0_0/LMAC_ETH_1G_c_counter_binary_0_0_sim_netlist.v
// Design      : LMAC_ETH_1G_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LMAC_ETH_1G_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module LMAC_ETH_1G_c_counter_binary_0_0
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
  LMAC_ETH_1G_c_counter_binary_0_0_c_counter_binary_v12_0_12 U0
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
(* C_XDEVICEFAMILY = "zynquplus" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module LMAC_ETH_1G_c_counter_binary_0_0_c_counter_binary_v12_0_12
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
  LMAC_ETH_1G_c_counter_binary_0_0_c_counter_binary_v12_0_12_viv i_synth
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
U+MM2OJisg81/OydVWeoN1cHNNaG95ZSuBjrtwpeFvUDEUIa2f2XxZbyJt6ClgSQQqCH5jwm82Dj
hqC1gFuD6vP1XWpM+UfOYGnUDaN6Fv3liAuZuf76lj8NrMF3qw1/MGx/5VLNVmNnmWUEs8qzTe9P
UFNYE0H+h8hdXeITV9vSlhWfKjkjo3xsfDzVmPNjhDfrYuo/6GaAAYId1vXPL6+2ue8mW4kcsPiO
9M8zW8mLGI4+r08JEcA5n/OCCG4di5Ce+W4JWGcpU0rmabbWxrEfkWRUymNU3/ETSJ4yA5NhtbnX
gT35R+BB6D0bj4lnIZw3V3zTWiPfeSmb+nHa2Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rJ7D1jdxVmnYXa7MNNNWqvz/N7CAa+mcEmpkYUMwm7rzgwp+HCi2ERd4sxHj6VEfnRheVCUbUvWE
R8/z6q01FBkr+Ttn1bxTtqdmhEOOeCVcn+WWD8Phw70ecSJVPdE4rPQ0SAQ871KRQp0hC15Kyu1m
CiF/YSDvFmoeAb+dYGeaJcanZZZLQ5w40bOJCgE2nnKyg3+ymXspWRw0C5l4qDPas0mWNg4Jv5hl
ktiz3OuQ+cnUTiKEgMYV4TlvTIe5I1dlSqZKK2HvmA+GPdeQbVEPmR3ZouicrTmBGTTkgjDV2GCB
4KQwSCGOWh/lUmFb66/uj5o4A0TX4r62U4LwoQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16800)
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
