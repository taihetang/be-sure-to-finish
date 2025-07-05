module myCPU (
    input  wire         cpu_rst,
    input  wire         cpu_clk,
    
    // IROM接口
    output wire [31:0] irom_addr,
    input  wire [31:0] irom_data,
    
    // DRAM接口 
    output wire [31:0] perip_addr,
    output wire        perip_wen,
    output wire [31:0] perip_wdata,
    output wire [1:0]  perip_mask,
    input  wire [31:0] perip_rdata
    
);

        wire cpu_rst_n = ~cpu_rst;
//IF
        wire [31:0] pc_branch;
        wire [31:0] pc;        
        wire [31:0] pc4;        

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
        wire [31:0] wd_extend;
        wire [31:0] MEM_out;
//WB    
        wire [31:0] WB_data;
//control 
        wire [5:0]  inst_type;
        wire        pc_Sel;     
        wire [2:0]  Imm_Sel;    
        wire        we_reg;     
        wire [3:0]  ALU_Sel;
        wire [1:0]  Comp_Sel;    
        wire        unsigned_Sel;
        wire        we_dram;    
        wire [1:0]  dram_extend;
        wire [1:0]  WB_type;    
        wire        rd1_pc_Sel; 
        wire        rd2_Imm_Sel;
    // 指令地址生成
    assign irom_addr = pc;  

    // 存储器接口连接
    assign perip_addr = {ALU_out[31:2],2'b0}; 
    assign perip_wen = we_dram;       
    assign perip_wdata = wd_extend;
    assign perip_mask =  funct3[1:0];       


        IF_unit IF(
            .clk(cpu_clk),
            .rst_n(cpu_rst_n),
            .pc_branch(ALU_out), 
            .pc_Sel(pc_Sel),
            .pc(pc),
            .pc4(pc4)
        );

        ID_unit ID(
            .clk(cpu_clk),
            .rst_n(cpu_rst_n),
            .inst(irom_data),
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
            .Comp_Sel(Comp_Sel),   
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
            .clk(cpu_clk),
            .rst_n(cpu_rst_n),
            .ALU_out(ALU_out),      
            .wd(rd2),               
            .we_dram(we_dram),      
            .unsigned_Sel(unsigned_Sel),
            .dram_extend(dram_extend),
            .MEM_out(MEM_out),
            .wd_extend(wd_extend),
            .rd(perip_rdata)       
        );

        WB_unit WB(
            .pc4(pc4),              
            .Comp_out(Comp_out),    
            .ALU_out(ALU_out),       
            .Dram_out(MEM_out),     
            .WB_type(WB_type), 
            .Comp_Sel(Comp_Sel),       
            .WB_data(WB_data)       
        );



endmodule
