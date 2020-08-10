// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Apr  7 10:06:43 2019
// Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LMAC_ETH_1G_c_counter_binary_1_0_sim_netlist.v
// Design      : LMAC_ETH_1G_c_counter_binary_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu15eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LMAC_ETH_1G_c_counter_binary_1_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
jcG9ISII7RmdFc8J5gPj+XD/XxPMvta+x+iF3pk/852EDMUdtQQ25ibrKpj6oI/YKBBqOZf30Ci1
LoqIJeEQelBN77RZk221h/ldWF1U+kWtNfu1HR5SlgfqommwfT1uQ8yiOOXfE3+Jd1bj8THv8gXb
qnieyWEe7lFuZBFjBdQDhXUaVIjk9NlTF4LbKFw+jy47sUavDykFlDeHGMumNiz9RK1fjzzUPSON
8EL47QHkeu+zRepjVFvWiSVB5oq7gR+QsSWtpTBRUyiC6/GqS/VwLxzbo+BRQQbF+TPDkBY8W620
P34Vz29FatCfs0YrvmLvKTFIRvz8HhCLANBEqw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ncLvwItPiKsC9mQcxK2IoCPusbwuP5E70Sh9jBNY7c1M3SR1qMx9PkX+SAUzEB4KTEyJdIwdU013
LxH489P+rSS+fpuNgP/OEQfq9ns7SmU7oRNX3KSvCvThaRJxM8EDhDOZAiJJ3HnMIpDRQPGI50Qd
iWNuTyAtXfmVlGVmF2d6dQjX19khdNFml7f/KGbfk9UEmcOno6hNEONWoj1Y5bIpkNk/c5hFVJsV
epOwFU5RW5Z2LuldKaapiQeeeUISO6GJ92BiR7y1mp2vtsWGADhFAsP1v9bChUwbD+h6zB2N3oKk
ucXKiuMS6BPz2MbXJU/4IhikIa6ZHYHwBcwJdg==

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
