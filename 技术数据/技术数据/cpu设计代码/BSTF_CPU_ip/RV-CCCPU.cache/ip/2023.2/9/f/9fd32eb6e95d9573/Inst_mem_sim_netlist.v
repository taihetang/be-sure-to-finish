// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri May  9 09:47:42 2025
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
  assign spo[13:7] = \^spo [13:7];
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9840)
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
