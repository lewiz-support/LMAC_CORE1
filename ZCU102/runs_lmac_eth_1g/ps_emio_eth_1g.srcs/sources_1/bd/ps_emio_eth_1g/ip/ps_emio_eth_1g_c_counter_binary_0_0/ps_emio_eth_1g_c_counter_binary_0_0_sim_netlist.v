// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Apr  7 11:10:18 2019
// Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top ps_emio_eth_1g_c_counter_binary_0_0 -prefix
//               ps_emio_eth_1g_c_counter_binary_0_0_ ps_emio_eth_1g_c_counter_binary_0_0_sim_netlist.v
// Design      : ps_emio_eth_1g_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_emio_eth_1g_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module ps_emio_eth_1g_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 125000000, PHASE 0, CLK_DOMAIN ps_emio_eth_1g_gig_ethernet_pcs_pma_0_0_userclk2_out" *) input CLK;
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
  ps_emio_eth_1g_c_counter_binary_0_0_c_counter_binary_v12_0_12 U0
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
module ps_emio_eth_1g_c_counter_binary_0_0_c_counter_binary_v12_0_12
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
  ps_emio_eth_1g_c_counter_binary_0_0_c_counter_binary_v12_0_12_viv i_synth
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
ZD5fCfV6ms9sUQ8Hf7al2ZMbKbsxhv4bZ2fp1cVf7GGC6uYA7Fa5IYrkSET1kzap6e8Nl4Zjiua9
oYAw79FA12jbtXCyrI/AvSPPcRygqzCoMmspY7VxnASGDBhsHZghfiEXN0Eh8xKz1ni63sBxcsrk
U0P/dYWBRdejqMPLeKXt/PCklDxRqR4f/9zScQZ7Xr+Pd8FD4lm67TbtdCtFpc5Y1RZNTtZV6mOC
z9b4s3UEs+OKJ2zuHHKRDmm6bpuZ8qT/ddLW+utUg2Z8hKlyLAhmYlMXSeIX4iDnBER54+W0SPyi
i4yA+8O8uT1Ahjw48noiVuDmpg8M7S/sNsGIBQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zxlskOMgUP8xHPN1fHqguPprhyGhH+QbA5qm5NXeo6gSCpUrtvHDVvxJv+u8bFvfVqmr/w3TLPmj
chbynZd4LyUAhoIeNAoXpPmccTpdarG9TUpUKATUDFWN7oEfw77SSxbVQNqezZBzEf1WbK+YYe+J
0kjowPyaNsuxjWFRExRk3r77A94El8kwpMvsaj4nfmGszrv8YK1sfaZLkvM18oXsNgXcgQFj+1eK
JhDOjE8meJrWfnA9MJa/qj7Pv1GaMfnDwgYwDRoxnwCGiqMVyh8l1pwmCH8/nXguWlrlaaYIQi6c
U+lZ72tRSzB1YAiscLMrsvkdg42vQpvglZSWOw==

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
