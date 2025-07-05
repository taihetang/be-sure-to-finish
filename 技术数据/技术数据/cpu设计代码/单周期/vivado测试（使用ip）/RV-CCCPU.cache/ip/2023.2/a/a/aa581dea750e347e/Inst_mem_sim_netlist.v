// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed May  7 16:15:56 2025
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

  wire [13:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

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
        .spo(spo),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19152)
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
