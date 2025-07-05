 `include "define.v"
 module BSTF_CPU (
            input wire           clk,
            input wire           rst_n,
            output reg [7:0] debug_out
        );

//IF
        wire [31:0] pc_branch;
        wire [31:0] pc;        
        wire [31:0] pc4;        
        wire [31:0] inst;

//ID    
        wire [31:0] wd;
        wire [6:0]  opcode;
        wire [4:0]  wr;
        wire [2:0]  funct3;
        wire [4:0]  rs1;
        wire [4:0]  rs2;
        wire [6:0]  funct7;
        wire [31:0] rd1;
        wire [31:0] rd2;
        wire [31:0] Imm_out; 

//EX
        wire [31:0] ALU_out;     
        wire [1:0]  Comp_out;

//MEM        
        wire [31:0] MEM_out;
//WB    
        wire [31:0] WB_data;
//control 
        wire [5:0]  inst_type;
        wire        pc_Sel;     
        wire [2:0]  Imm_Sel;    
        wire        we_reg;     
        wire [3:0]  ALU_Sel;    
        wire        unsigned_Sel;
        wire        we_dram;    
        wire [1:0]  dram_extend;
        wire [1:0]  WB_type;    
        wire        rd1_pc_Sel; 
        wire        rd2_Imm_Sel;

        IF_unit IF(
            .clk(clk),
            .rst_n(rst_n),
            .pc_branch(ALU_out), 
            .pc_Sel(pc_Sel),
            .inst(inst),
            .pc(pc),
            .pc4(pc4)
        );

        ID_unit ID(
            .clk(clk),
            .rst_n(rst_n),
            .inst(inst),
            .Imm_Sel(Imm_Sel),
            .we_reg(we_reg),
            .wd(WB_data),
            .Imm_out(Imm_out),
            .rd1(rd1),
            .rd2(rd2),
            .opcode(opcode),
            .wr(wr),          
            .funct3(funct3),  
            .rs1(rs1),        
            .rs2(rs2),        
            .funct7(funct7)
        );

        Control_unit Control(
            .opcode(opcode),       
            .funct3(funct3),     
            .funct7(funct7),          
            .Comp_out(Comp_out),  
            .inst_type(inst_type),
            .pc_Sel(pc_Sel),      
            .Imm_Sel(Imm_Sel),    
            .we_reg(we_reg),      
            .rd2_Imm_Sel(rd2_Imm_Sel), 
            .rd1_pc_Sel(rd1_pc_Sel),   
            .ALU_Sel(ALU_Sel),    
            .unsigned_Sel(unsigned_Sel), 
            .we_dram(we_dram),    
            .WB_type(WB_type),    
            .dram_extend(dram_extend) 
        );

        EX_unit EX(
            .rd1(rd1),            
            .rd2(rd2),            
            .Imm_out(Imm_out),        
            .pc(pc),              
            .rd1_pc_Sel(rd1_pc_Sel), 
            .rd2_Imm_Sel(rd2_Imm_Sel), 
            .ALU_Sel(ALU_Sel),    
            .unsigned_Sel(unsigned_Sel), 
            .Comp_out(Comp_out),  
            .ALU_out(ALU_out)       
        );

        MEM_unit MEM(
            .clk(clk),
            .rst_n(rst_n),
            .ALU_out(ALU_out),      
            .wd(rd2),               
            .we_dram(we_dram),      
            .unsigned_Sel(unsigned_Sel),
            .dram_extend(dram_extend),
            .MEM_out(MEM_out)       
        );

        WB_unit WB(
            .pc4(pc4),              
            .Comp_out(Comp_out),    
            .ALU_out(ALU_out),       
            .Dram_out(MEM_out),     
            .WB_type(WB_type),      
            .WB_data(WB_data)       
        );

    
 endmodule