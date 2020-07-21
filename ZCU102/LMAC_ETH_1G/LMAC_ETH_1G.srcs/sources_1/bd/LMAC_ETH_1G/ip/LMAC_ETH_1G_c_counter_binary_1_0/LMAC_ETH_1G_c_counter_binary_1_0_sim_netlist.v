// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Apr  7 14:39:24 2019
// Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lewiz/sambashare/KIRATEY/RELEASE/LMAC_ETH_1G_xczu9eg/LMAC_ETH_1G.srcs/sources_1/bd/LMAC_ETH_1G/ip/LMAC_ETH_1G_c_counter_binary_1_0/LMAC_ETH_1G_c_counter_binary_1_0_sim_netlist.v
// Design      : LMAC_ETH_1G_c_counter_binary_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LMAC_ETH_1G_c_counter_binary_1_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module LMAC_ETH_1G_c_counter_binary_1_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN LMAC_ETH_1G_util_ds_buf_0_0_IBUF_OUT" *) input CLK;
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
j+GxcRTm+/V5J1L27ryvSZi0gm7I7hSjF/ZCj1LFmEarYIpVb/OP/LUHSty6C7Kg9Zkw6p/+Zlpe
gzJ/FCLZlV3D//9x7F05PU9OyJObP020X1atA61MVNvEAnnBfih5JRRLHKjoU7yZIjaufb/qcheT
Z+JWKVa7qEBlulNG2V6VkXOk3+6oRxkuUZCtIMV1khJL1zFsxdfQhivi60wi9idkqSkCRFvifZDw
HS3TE0S0oDLVjdCobWSE0ibW68D0LGY47WxZmtuWjisIyGjcVpvmH+juMOs4oY3JFJlT7WKpc5Wn
m0IbTroCHdWOu4kYrLGjecRSr5VKc/AVx8SmxA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JyP9OZlz1koR9mK6V/vuxcgybERGXqj0lFsp9f//wmj1Ql+YAM9jP9VUcljoXP3RNDTeO35zUO5y
Xtwnm8Eg25FyEYdnYFfzdODQ1wx6QQZTL67CzGG5ejzjkS3ogKoI6InYKxU2BQRRzEzEuJXpovn2
CViMwzgOBiWKgQjuiwyU0xLTCBfONpSQtyRqX/dNTaHfbZhYIwQVFmMDg2Jm5Tdk4+IEPCrae+Cc
3jUU8vtuXP2R/A3ZpMqj1jk6cALtorufr4sjHnewzllucXc7DRCzKyZRd4Uf4KjkEUjCMnkQNwH5
YgqONIuLGm8nh1pkCWZDS4uSDPZ3B8FTFLu5eg==

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
