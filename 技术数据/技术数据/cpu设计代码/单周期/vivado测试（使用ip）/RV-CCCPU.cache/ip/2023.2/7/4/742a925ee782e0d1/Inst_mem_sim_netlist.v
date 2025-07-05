// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue May  6 19:31:53 2025
// Host        : thedongzi running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Inst_mem_sim_netlist.v
// Design      : Inst_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Inst_mem,dist_mem_gen_v8_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_14,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [13:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [13:0]a;
  wire [31:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [19:2]NLW_U0_spo_UNCONNECTED;

  assign spo[31:20] = \^spo [31:20];
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17:15] = \^spo [17:15];
  assign spo[14] = \<const0> ;
  assign spo[13] = \<const0> ;
  assign spo[12] = \<const0> ;
  assign spo[11] = \<const0> ;
  assign spo[10:7] = \^spo [10:7];
  assign spo[6] = \<const0> ;
  assign spo[5:4] = \^spo [5:4];
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1:0] = \^spo [1:0];
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "14" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16384" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "Inst_mem.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_14 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(\^spo ),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uwBH4JaTzmENPjp1VK18+NmHqz3idKCCPayqakkK6bYDVk0JtRfycJYNxbcnLmlw5yuLTcDXBBKk
FqBPE2n7wWKg9tfz2Y8PrWAvnbsIFMfxBK8sfWUf8PPnz8vUwwMHjbXUWcgCgvtygj/TbB+jcZ8Z
CjYnBZ8tNdKOO1iDLpQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ff7o4KDFniNgPFT3cDZtw4HhiKzFbOFtLXtuci0MZhgQ8oZ15BcuowAfxUJXngU8JkWI9cbWKkG8
h/PODwnWEt4eK4VDKRk6Hw3QkZiKAa1N3QupC8D5bR7vJ/+RhJwSayz9t2JpdZaEhKgCgqTcX6oZ
4fCEOmSTUWVob+DXV4UfaMyfVm5VI0wxZ7q0mjFx+pdkt56PuNREX9kH4a9Ma1P0sYo8XaTpANLa
JC6eXOuUQlp40M9F/NL1Xajpys0YfGx8AveMAFEyfRmHZs+NbXmny/79vednrm+FhwtS9LveegmF
NZW9jiiR+9Igeraaz+QXPc6JO/nCDTr4Fuwusg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
enb/INzHPP7GNdz8dyyqgVCJiMs9JXcjMywZXhzPersGm0A258UOUwtOqcF1rO7lnrKwTeWbNFVN
dO3BxXBpzGnYWUqDda208CYV9hTWFhfySQdX58qn1Z8QY5G7KniMCVjaGuPPCfToPOOdbAxR9XUp
XbMr0vrZKWxz8nBhGYc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RKZNANfa63/n14iwmSxsB/UeV76BNqjEiYgjlZ2LdFWOArCv6D+jhC4sjGMiaz8GJ8J5kQeiWB0Y
e1+zdHflgzODs6eVC82MlEcfgP0vdDIBn0PP8rVDg5O31eQuJ7n5zn4XJu+vzjpkvJIHKrktAsP4
jg+LRxcTOu0dILImk7Vwgyuwhi8OxNN+jBVbLVxdNj0l5aQMgRZlU/8FVh3u958SH7z/fHnwGaOw
P8QgNv0ZZblWvpxa8TJIwlgVb9354a0eyD9XsKy5VfuUG03nmputxNzUuIUmGtBGCqx+4D4pyCch
j/ixD5iiKRmeKD1/RtGzxmrJap7SAHMuzic1Hw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OQMD0qoDy+4W8+jfTV63GDTwmjWvJILCTofeYJTZqWc2KhrzQXwVMW48dTyIriC6bA4bmXD5BwcB
W2gGbVUvY1Y1+wEFEwYIC0LiPrJO0DhpM1JhP2vkxnTEwaODiEp5x3XqHgsiys0I2/9mE4z4Hlbl
jzftQ/8sVSYokhMp9eaIHk3HNCSBllv90qeBfH3fOdVI2gA1r/22PktttbkyKji24r7jM5o4aMIc
Sp6u0DCnD2cSPCuCuMW3A9sFRuTKbXiLAeeymFIAXHKYQgWXXOqmbKHrk4GviHQyz31C9d+hm6dh
RMtaCyWnhqo3QE/QxP0TsYk3CgkjDCU+KK/ozA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uV1eryjGs1SHbpKIAk5r3BY2SLKX9RlfGw6gbw/UtzBYt4U7vTBIy+x767ojEcmbGLos8kr8vilV
cnNOnsbu7vOAUIe+1PgpaPaCkv2OTPXaE0tfps6+Q6D3zB6j2a2FE1gRIPOniwAdlIn69jL2tuWD
M2BN1efQhi0lZHuKtTgzBOVXIg+zbTiH2k2kHWThOi6WayoBEny+g88wRi6pUBeB6aW3ezFYNmsl
zeOY9xmt+UhRMcr87DCcZdmjsIk6VrsIKF60y93pM0IoQ56iWpQ2OKZK+Ng9qC+pNHBEYEhiMQFb
kUesHtcFOIS7Ok6S9O9SMgf7lMQFOh9w0L31UA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GM2VxmvaiVBg1DsqOLewt6rcWtfH/Gj1QS7fUSMudF5qJ2fn+TXd8kcCwwrxdcXNXjoVi2As5jmL
yw1/NZreemrkS1YCJJDxmnE8CW2q9/4N4a79kApF1VfD5XdpaULhVn+Eb+jXCQFG+GEEOvnPb0Me
bbfRkfc0DAIWgtG2D81EQ28mg7KAWtsDpdUCi+BKdIAj8RXoTiQbFbiBeT7EiRIrz2PQF9nhQBfF
FjlrCNwDP4hRQJQeZcf/1Pl8SFyKGQb6iVF+VhhCVCunL7VBmzaCOW/gowPM7hRM2dvzmxcgeKfs
dZx/fy2rk1iokUi+3B+Jc6CycMWbHu8EfCh7iQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
NSZoNMCco4gpYPcg8pb9mtee1JxEWDcDzt6wnS0LeSPMi2upLvQXnSQKMvJGGOKStJOcu1eu7x33
4Xa3ApbjbfZ+lgs1PYlyY4V+B2Lio1EEo1uzZVWFrVFvmknOZwj6Gcmj5N/osaiqKaeIw7NTTbyX
HNHOabVsQJ540qnP4u/nzS/h/AQcm0PFLadGZtHJZEzyQDSSdghD/y/OLprdBcInfQDwAxQuJpCy
ExX4lD2WMrCkymNBS9NMH0vYh4kvpYKRO/oHuGcOZVg0p8vfMmz/BJDHuxTcS3FpLT0WxGVcmUIk
cuqKQFiVwwgnW9AfYkbsMrwfl9po2pofaAY2JC5ZTMyO1qEfSu4fxTRJNnDRvW65KkMdJhZFa36p
82hcDlaYvBowndZfMc42Sxt+ZULFDTFN0HT50iteAG1yEvJ9jKBiJla+kDQJB0VD0kj4+k8aBug3
uPKVykvf1/Uaw8NoW591pML42qlh8v1RzAm6aDnPRdsDaCc5Dq9QDPuE

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oRNld8VrAuP/xHUguZzkh8+wROOItnvw1FQUP5KHjxeh8nudEYH2PGefTPsV73QyEruJanGifjCR
m8XHiIxqAY9fk4CAm+2n67YLFUEHjC1Qri9htrL4W5fnj7OIdzcwttvmGEuGOuYOFA98RcnR0jSL
Nyqq5u/eILCh2MiKiELfsBjRv/WckpboJ+gzO1btduECvdBGjsIcjjHiIzPwNSGxnX3G6zG9OiWq
hXP2Jh0Ril7rGbajit90p+gJpDpuLee/aOh0BUXbYYLU0YIXK8bskgMir7D6cfu5oWDKwYH6/YRR
tFjIhRzFsqwjtmaxUnGTZzxsWGazk+uFfHXl7w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9728)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
