// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Apr  7 08:39:57 2019
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
rGnxW9fKSEn6YRvIyReJYX8Dfa9FxXAmqxDeNdv3WyE8JLn0qN8I/nqx1NTWzZyFqIyLblm5g8pE
89TiTF7GXzjzEYpc8r54nt6zcjsk1SS/aqQSz9qyIUVBTtKxVgQ5Di5axO1OMfw7jNKTeSwbYHD8
KEB3ODjRI32zazG9iY/YFjpavhbqxnrlrgoHxLl68nE/AB5zijPlnpwqkYhKpHZMW/kUpiy7M4pf
cqPfub55FnZTTTzRPI4hLN90T/dBaL5SNPOJ/Tf8esYgyuwstAsKgDJOIdwVBKisFLjOH9d+FYua
bLaa2YYCebeCdoNXftdnnIZtSoxjCs3fpKh/wQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JVi0UK/1GfDZ+V6fYGiEzZRmNt6m5X8ZJdMY4Amqlx6TR0apBJ9RaSGyrJ7REYJFzNWsKez5dvYI
3pnxaTD/OU2ImkthUoKwYcMg649GFDYkLAtwGEeq5WxDUGyJbSQLQXXO8QIKvyUkX+M/Nfl81pRu
dnWcLjS3tQHdvWOD9JeX1wUiDBcE4+DJa57068HUOKnbPjDEeJHkDVudd9OkvbxRQk7NdjirTkZ5
RcC5JX9T7H3AgdwzyEqrLWMe9sHRrNuOyDdl1v+j75mf3/UTSydovQs36zI5tr+Ix2actAkVtCVW
aQzMYsFtiRO4TpsvSw5m+YvPGGBv9K+LClxB+w==

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
