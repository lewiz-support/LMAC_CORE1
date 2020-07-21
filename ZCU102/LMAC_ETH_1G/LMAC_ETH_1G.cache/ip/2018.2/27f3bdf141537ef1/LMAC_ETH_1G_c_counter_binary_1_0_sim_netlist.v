// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Apr  7 14:39:22 2019
// Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LMAC_ETH_1G_c_counter_binary_1_0_sim_netlist.v
// Design      : LMAC_ETH_1G_c_counter_binary_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
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
HoShICVJ0GL3F3c7kmV2WsOM5xToTMoSN0i1YKT596n+vcJ7TL9P1QadmVyF49cmCm1NT41cVus2
QJe7H4h3Ns9U8ziTUF5KZvobakO2eDYcG1So28ESAL7CDDNpFR4W6/qEajw6qhlAz1o7SrNLq4f1
OzZnOSq283xWYNy6nD8VhVhFKQiwW5ZNfPWhqwlAj7/SPdeYqvasifZp5Yp3g+ne3Tf10HczBveT
N40ia1fKxaBasyS3Dz5BUU6EI7jP5oMopiVqzUpcLKZi6rtC6wNdXp75ANpCzNhLYGyvigfy3VnU
uok81Bx3RL89UOWgSJrIPayu3tLHu3xQOPgq0w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
neK/5it/g19xBYzCssGL6MAyFJneTeSAhM3AT6oBUHvPhxKsmnO+yET+gqGagObZXnjTzVT0rYUs
+a2BsQXs+2Al7/hip0Bo+8e0mdvCW3kTnUaHs01EJq5V27voh+NgkX90r2JPv8QKeFLQ4q5eyb2I
Qk4jcpA5E4JzAd9LTWMaTIQKFFaoifTa/f67m7A68sdOK3KJOHskmKe4cTaqEydmvZeOZ1FBqITg
A2dFQfyCLqgNY/enPaKF9JO1CUR5FpO/b0Hyf8+WB1eja6NhOWWcCacaXOOz6rZa8wXpKYLl+plF
zzpCinFSSVYqbgL2/DLTVcEIfybPH+pP6rcsKA==

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
