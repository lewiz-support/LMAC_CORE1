// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Apr  7 11:19:55 2019
// Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top ps_emio_eth_1g_c_counter_binary_0_1 -prefix
//               ps_emio_eth_1g_c_counter_binary_0_1_ ps_emio_eth_1g_c_counter_binary_0_1_sim_netlist.v
// Design      : ps_emio_eth_1g_c_counter_binary_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_emio_eth_1g_c_counter_binary_0_1,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module ps_emio_eth_1g_c_counter_binary_0_1
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ps_emio_eth_1g_util_ds_buf_0_0_IBUF_OUT" *) input CLK;
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
  ps_emio_eth_1g_c_counter_binary_0_1_c_counter_binary_v12_0_12 U0
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
module ps_emio_eth_1g_c_counter_binary_0_1_c_counter_binary_v12_0_12
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
  ps_emio_eth_1g_c_counter_binary_0_1_c_counter_binary_v12_0_12_viv i_synth
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
G1mV3DJoJyFmuPfVPlyXkZ1L5c65qALMiFkXAFEeLOKieplEtoId/YopvqOb9lI44P9qVFHP1ovJ
eKNt3V80/lvMcUbKWjhxUgOi9/x0i1+84pMa6eP5afi+UFHKGLkDo215edcjXrxVJZnu0tGAyR+z
LCII5avXrcxZP9K/cBgGJegzxOgJTG9k5yBQcVkSdGbmd+3NlmFABA/P2qe8npjwIOjyvntF7DwY
j4z76gVnCqHBFSRLJ7mfYeVSy4D3If5iYrrv1QwTtMLrvTn5WDgWdkA9ADsxvIPFA1jlkemx11mx
nmJyQH7vqYVfrFNhrGHRGvEvJKKUzOUgFsY6gQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pRUPEIFgrSYnVCw2kGZqFfQuPHpFQXfrwfwjZyVDYdn406yC+zFC3Ebw/yh+XcIMly1XVHI9Z6CU
0zJFS8WidSvSzPEnauvjpAuZOWz90SsCKOTe9Q9HBgadsfRe3FvcK/+Qac6Jd0c8VBMf+BJsLsaG
kGnQv/zh7v5dxXShLhPmjKOF8/HdzrnwulmyLVps+LTvY59P+6hKaVby9lMa+TptGdffHXHXh5Ss
pPmYbW+/oQIVe3w4MqifxW8vLWL1csMBwqYNtPlmRc8iPBkcP70D5PtqDYrJOrZrgeQWPGDIavKx
DmWK2l98qCG5Xjr/GxcJ4cOokVXYMBL5paBC1A==

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
