// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Apr  7 08:36:42 2019
// Host        : ubeluga running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lewiz/sambashare/KIRATEY/RELEASE/LMAC_ETH_1G/LMAC_ETH_1G.srcs/sources_1/bd/LMAC_ETH_1G/ip/LMAC_ETH_1G_c_counter_binary_0_0/LMAC_ETH_1G_c_counter_binary_0_0_sim_netlist.v
// Design      : LMAC_ETH_1G_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu15eg-ffvb1156-2-e
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
SDqHry98mQydDdQB4LxNLaEymJTtPbjdA5KsA81s2lcOjykIxqJKa/hbYHIaxjKEMYom2j4q2rQh
DvYgmye5lCstyDuebLwekWhbQ/cA0b8KYCda0UUsl4QawWjjUo0qqDHOaoKrU7a5CXQOUd38HQVY
anzTic0/rNbRR+HxI9WWlErPBnNrfY5UfC/T5wBW256DLslKRtlWUuqONaskXQxBX9xm016KpRpb
sKp1HlWx5WQbWOmexr7mx8gmBNIMbK/96Dc8W5ZScfzHIBVEeUBUspCCkKg95rqyYGurVO+h4SEm
n03jFiAoNZkN2RflWpQWd0JurmRD9V6lQMlTTw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PT65cONespGIhhZEd4Tgy3rv3yzqv5J19miygn1U63zMJY8EKTDJ3HxP7d7GSzH01ehMAE1mbeLV
S6blSrIhubCoQ8KwhozSRe822/Cv9Ir1p94iq59789N39E7yJYpk+c+1GLsyejw9+79jp1Dkj/Hw
fSeHvU67yGT9de8jnzwyvNqWoC5x/jOtypFklrYfjsjUFla1g4JKRyuu7tYwt+qEr/zgSSfxx6Sj
gd0hx68f5mjXTxppCAwPybQehjsP63U5rKfE28d9qU3muz87M84Y//iUZ8wYpOq/NhEKxs/IFdrM
yn72spNJMZzG/kiY1maLNbQzn9aubr657MaAeA==

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
