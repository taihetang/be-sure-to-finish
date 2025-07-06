`define		zero_word		32'd0

//opcode
//U_type
`define		lui				7'b0110111  
`define		auipc			7'b0010111
//UJ_type
`define		jal				7'b1101111
//B_type
`define		B_type			7'b1100011
//S_type
`define		S_type			7'b0100011
//I_type
`define		jalr			7'b1100111
`define		load			7'b0000011
`define		I_type			7'b0010011
//R_type
`define		R_type			7'b0110011

//根据指令格式分类经过选择分类
//real_type
`define		R_real_type		        6'b000001
`define		I_real_type		        6'b000010
`define		S_real_type		        6'b000100
`define		B_real_type		        6'b001000
`define		U_real_type		        6'b010000
`define		J_real_type		        6'b100000
`define		default_real_type		6'b000000


//00xx   
`define 	ADD  			4'b0000    
`define 	SUB  			4'b0011

//11xx
`define 	SLL  			4'b1100 
`define 	SRL  			4'b1101
`define 	SRA  			4'b1110

//10xx
`define 	SLT  			4'b1001  
`define 	SLTU 			4'b1000

//01xx
`define 	XOR  			4'b0110  
`define 	OR   			4'b0101
`define 	AND  			4'b0100

//分类
`define    Imm_I            3'b000
`define    Imm_S            3'b001
`define    Imm_B            3'b010
`define    Imm_J            3'b011
`define    Imm_U            3'b101
`define    Imm_R            3'b110
`define    Imm_default      3'b111
