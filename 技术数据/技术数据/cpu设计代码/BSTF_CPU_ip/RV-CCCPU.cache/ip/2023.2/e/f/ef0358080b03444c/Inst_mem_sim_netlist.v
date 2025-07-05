// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed May  7 17:25:02 2025
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
  wire [27:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [31:2]NLW_U0_spo_UNCONNECTED;

  assign spo[31] = \<const0> ;
  assign spo[30] = \<const0> ;
  assign spo[29] = \<const0> ;
  assign spo[28] = \<const0> ;
  assign spo[27:20] = \^spo [27:20];
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17] = \<const0> ;
  assign spo[16:7] = \^spo [16:7];
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
        .spo({NLW_U0_spo_UNCONNECTED[31:28],\^spo }),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10480)
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
