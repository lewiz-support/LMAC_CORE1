// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Apr  7 08:39:58 2019
// Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lewiz/sambashare/KIRATEY/RELEASE/LMAC_ETH_1G/LMAC_ETH_1G.srcs/sources_1/bd/LMAC_ETH_1G/ip/LMAC_ETH_1G_c_counter_binary_1_0/LMAC_ETH_1G_c_counter_binary_1_0_sim_netlist.v
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
Qoh5B76Ncipu0Hk1D9s90TBcbgtpLKUohmK1+7MLXZx1x/snRaUcN7+kanW4VhKScqA/95D6MVlC
6UxtgQCJipM5mqqQGJWXnbOnG92D/V/M0RiWV2oIfO7jt8mAlRoqC/AJgyLSIY8VC+H8Ue8yh1mg
jt1DpDgnkSvGuVBFrHxiEBAUJPlOHKlhjugXBdZgmP2ZM2XuRynOvIl6KW02+Whf8Q6s47xA7ycV
UWJgoVIZ7pN3c/XvrcMVKYZZ4LirAocnQwEXH1/YlKxw7Znn9INF3iCyd60LnU/wKuRJDjqSsIqC
2+JT22nQYU2vpeWOWX1ikw3GP7r3oP9CNTc8yg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qR/lxXXwCrcSmlysN0Ndv1j9MGn1601DPKjCnBAhNaw1hoSqVdhdyaRMGrqwHJ7/CuWo3xTrKTob
xEfpDYvV5+Kc/vYKLT67pg/GONgROVl4sdDD7B0m4bypF4gR1sZUMW3jpcI0QLzNgbzuUznX4ik3
BhbwjCaWNdyojcqzPYHTUvAdmZabC3LEtooqONLo8nx9A+O47sZF2HwXemxNKLGXOr9n8wY8PiEz
djsdHyz57W8DTxckUgsiHrPmqA87LzOyKbNrWDSjwHQxE7FR7KczGQ+ZDOPDecYebmV1CdIwpVXk
IPAbnG9psLdvOxSC0wTA2MDZKhCFBbAVMz4W/w==

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
