// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue May  6 15:53:37 2025
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
