// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Apr  7 08:36:40 2019
// Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LMAC_ETH_1G_c_counter_binary_0_0_sim_netlist.v
// Design      : LMAC_ETH_1G_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu15eg-ffvb1156-2-e
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
P1tbt7tSnobGoct0vKOdkAh8UzWl+6ZmrQ8bbfFxmTguHe9rjqiIvz//vwrt65LtkkpueqUo8tnW
wlTznjqLCCtUoeFcM4sHuAC741UDuWrKNCC7VRZHKFirDE8bOtPnZDrF7XPMk0svIo8Bn55Frvi1
+Vet0v860sfA4wysTr5eoDD1j2iFilcyBrIud6tA/pFRyCUnK7Nt2iFlQGwUSmc4/zSgQ9RT3ZUv
vjNYgP350l9o9P+hcEwca1Sq0Vlio40OmaFlyp0pipjqvMD0OxD3F38uiH5vXGUHZjmd1iypMyWK
b9+zVJYrIy/Z6KIfIvUHjb2DT+UUYPwHsTbr6w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gRzcNNM+N9T50MYTCNbRdZNt/esYEEiC+jfDGanjUytR+oiEgrc5B7aHvMJ1932wyzIEtrRgS2y2
3bx3ndnNLXplJiCIQIW+pRC/8zr9GWw5/oNUBkotlCxXFLYlf4JNUVPkkg5LvtJzNPmPQSJ7F9zE
0lw2qejZsNq55Slgkp/BXoGpfkzY1a9iaI0tofhu8+LGV7AxntVIsa0U/35ZqKdEfFinmmc2HUj8
37x2CougvBZ3XRnGzhgQ9gatvgjWAA539ZH4KTo3y1pWOQhvIrbLZlFoYAQgtmL8vRt1aPTj7U14
C+BZ4eaGEAyPNGmsqUmd7eR+ik9TSkwCAyxL6A==

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
