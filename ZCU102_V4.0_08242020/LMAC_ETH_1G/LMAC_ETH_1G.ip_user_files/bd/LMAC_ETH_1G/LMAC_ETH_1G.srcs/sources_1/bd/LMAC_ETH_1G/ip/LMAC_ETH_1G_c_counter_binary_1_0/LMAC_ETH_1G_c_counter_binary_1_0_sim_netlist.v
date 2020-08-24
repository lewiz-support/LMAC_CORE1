// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Apr  7 10:06:45 2019
// Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lewiz2/lewiz2-sambashare/KIRATEY/LMAC_ETH_1G_NEW_BRIDGE/LMAC_ETH_1G.srcs/sources_1/bd/LMAC_ETH_1G/ip/LMAC_ETH_1G_c_counter_binary_1_0/LMAC_ETH_1G_c_counter_binary_1_0_sim_netlist.v
// Design      : LMAC_ETH_1G_c_counter_binary_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu15eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LMAC_ETH_1G_c_counter_binary_1_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module LMAC_ETH_1G_c_counter_binary_1_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN LMAC_ETH_1G_util_ds_buf_0_0_IBUF_OUT" *) input CLK;
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
  LMAC_ETH_1G_c_counter_binary_1_0_c_counter_binary_v12_0_12 U0
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
module LMAC_ETH_1G_c_counter_binary_1_0_c_counter_binary_v12_0_12
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
  LMAC_ETH_1G_c_counter_binary_1_0_c_counter_binary_v12_0_12_viv i_synth
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
ftViZF4vQvb2IRvGkoAiHFzeL79jlMRJfkJdq/JUTOVFDwtXHnrEMOhK6KbplD3EmObEqhbOnuAW
ZMffDpx+4YE8CtPiS7+9PbzH+8WusUbqRg2lLiEePDf6XQ1J/UCKjDOZGynjnrwWrZihAztUd0fD
DHtMH1rjfNZfX6EV8H8WoVE7K3eJBAXpuJRCOHaaHwoZCMndm3viOjE9H/Qq05mwT9mIsMgYiS5A
cHJ4BDhNze8t4Vnq9RUNCIWV1bcgfBqPNizgaIU7KVkXdMdF19PI/x9VozLvvrlBKkVzMtC8SIRi
90D4W7FNifzJj7MDTf7SzqRG1L+dvnx5qAiNZg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
buAiKJstp9DhEiZJUxfeSgHItn6ddxvaxNcymnTozoiiAtLyyr09FnIUehn4NrtjOOmFWXKak+nq
DdPO+ryJDAmOl4FBQqlsF89xMSaeoQp63HzH2uwW16Eze4JwnJLF26dAqWQkbEly8ZDUEe9Yz6sr
e8Qa4xVmnr6lDh33v+BAHi0TWNncJ+IVlGIm0U10HR6jL5cTPmPzXiF7e96KVYCml2znfa1I+o4M
7hb7qj1J6CmninEFU11ea/LUuGRhWhkpRdpPwJINbGbxUNPmI6pjFGAmZSfQ4a6ntKXc2QhkyI/U
06bZK6c7E6veNlJq4xktWgn+K91NNJuUPLKpvQ==

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
