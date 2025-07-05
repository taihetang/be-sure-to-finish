`include "define.v"
module Control_unit(
    input  wire [1:0]       Comp_out,
    input  wire [6:0]       opcode,
    input  wire [2:0]       funct3,
    input  wire [6:0]       funct7,
    output reg  [5:0]       inst_type,
    output reg              pc_Sel,             //pc       
    output reg  [2:0]       Imm_Sel,            //IMM_Gen     
    output reg              we_reg,             //register
    output reg              rd2_Imm_Sel,     
    output reg              rd1_pc_Sel,
    output reg  [3:0]       ALU_Sel,            //ALU
    output reg  [1:0]       Comp_Sel,    
    output reg              unsigned_Sel,       //unsigned          
    output reg              we_dram, 
    output reg  [1:0]       WB_type,
    output reg  [1:0]       dram_extend
    );

    // Instruction type classification
    always@(*) 
    begin
        case(opcode)
            `R_type:    inst_type = `R_real_type;
            `S_type:    inst_type = `S_real_type;
            `B_type:    inst_type = `B_real_type;
            `lui:       inst_type = `U_real_type;
            `auipc:     inst_type = `U_real_type;
            `jal:       inst_type = `J_real_type;
            `jalr:      inst_type = `I_real_type;
            `load:      inst_type = `I_real_type;
            `I_type:    inst_type = `I_real_type;
            default:    inst_type = `default_real_type;
        endcase
    end

    // PC selection logic
    always@(*) 
    begin
        case(opcode)
            `B_type: 
            begin
                casez(funct3)
                    3'b000:     pc_Sel = (Comp_out == 2'b01) ? 1'b1 : 1'b0;  // beq
                    3'b001:     pc_Sel = ~(Comp_out == 2'b01) ? 1'b1 : 1'b0; // bne
                    3'b1?0:     pc_Sel = (Comp_out == 2'b10) ? 1'b1 : 1'b0;   // blt/bltu
                    3'b1?1:     pc_Sel = ((Comp_out == 2'b11)||(Comp_out == 2'b01)) ? 1'b1 : 1'b0;   // bge/bgeu
                    default:    pc_Sel = 1'b0;
                endcase
            end
            `jal:    pc_Sel = 1'b1;
            `jalr:   pc_Sel = 1'b1;
            default: pc_Sel = 1'b0;
        endcase 
    end

    // Immediate selection
    always@(*) 
    begin
        case (inst_type)
            `S_real_type: Imm_Sel = `Imm_S;
            `B_real_type: Imm_Sel = `Imm_B;
            `U_real_type: Imm_Sel = `Imm_U;
            `J_real_type: Imm_Sel = `Imm_J;
            `I_real_type: Imm_Sel = `Imm_I;
            default:      Imm_Sel = `Imm_default;
        endcase
    end

    // Register write enable
    always@(*) 
    begin
        case (inst_type)
            `B_real_type: we_reg = 1'b0;
            `S_real_type: we_reg = 1'b0;
            default:      we_reg = 1'b1;
        endcase
    end

    // RD1 PC selection
    always@(*) 
    begin
        case (opcode)
            `R_type: 
            begin
                case (funct3)
                    3'b011:     rd1_pc_Sel = 1'b1;  // sltu
                    3'b010:     rd1_pc_Sel = 1'b1;  // slt
                    default:    rd1_pc_Sel = 1'b0;
                endcase
            end
            `I_type: 
            begin
                casez (funct3)
                    3'b01?:     rd1_pc_Sel = 1'b1;  // slti/sltiu
                    default:    rd1_pc_Sel = 1'b0;
                endcase
            end
            `jalr:   rd1_pc_Sel = 1'b0;
            `jal:    rd1_pc_Sel = 1'b1;
            `B_type: rd1_pc_Sel = 1'b1;
            `auipc:  rd1_pc_Sel = 1'b1;
            default: rd1_pc_Sel = 1'b0;
        endcase
    end

    // RD2 Immediate selection
    always@(*) 
    begin
        case (opcode)
            `R_type: 
            begin
                casez (funct3)
                    3'b01?: rd2_Imm_Sel = 1'b1;
                    default: rd2_Imm_Sel = 1'b0;
                endcase
            end
            `I_type:
            begin
            	casez (funct3)
                    3'b01?:rd2_Imm_Sel = 1'b0;  //slti
                    default: rd2_Imm_Sel = 1'b1;
                endcase
            end
            default:      rd2_Imm_Sel = 1'b1;
        endcase
    end

    // ALU operation selection
    always @(*) 
    begin
        casez ({funct7[5], funct3, opcode[6:2]})
            9'b11010?100: ALU_Sel = `SRA;
            9'b01010?100: ALU_Sel = `SRL;
            9'b00010?100: ALU_Sel = `SLL;
            9'b?10000100: ALU_Sel = `XOR;
            9'b010001100: ALU_Sel = `XOR;
            9'b?11000100: ALU_Sel = `OR;
            9'b011001100: ALU_Sel = `OR;
            9'b?11100100: ALU_Sel = `AND;
            9'b011101100: ALU_Sel = `AND;
            9'b????01101: ALU_Sel = `SLL;  // lui by sll
            9'b100001100: ALU_Sel = `SUB;
            default:      ALU_Sel = `ADD;
        endcase  
    end
    //Comp selection
    always @(*) 
    begin
        case (opcode)
            `R_type:
            begin
                casez (funct3)
                    3'b01?:Comp_Sel = 2'b10;
                    default: Comp_Sel = 2'b00;
                endcase
            end
            `I_type:
            begin
                casez (funct3)
                    3'b01?: Comp_Sel = 2'b10;
                    default: Comp_Sel = 2'b00;
                endcase
            end
            `B_type: 
            begin
                casez (funct3)
                    3'b000: Comp_Sel = 2'b01;
                    3'b001: Comp_Sel = 2'b00; //not equal
                    3'b1?0: Comp_Sel = 2'b10;
                    3'b1?1: Comp_Sel = 2'b11;
                    default: Comp_Sel = 2'b00;
                endcase
            end
            default: Comp_Sel = 2'b00;
        endcase   
    end
    // Unsigned operation selection
    always @(*) 
    begin
        case (opcode)
            `R_type: 
            begin
                case (funct3)
                    3'b101: unsigned_Sel = 1'b1;  // sra
                    3'b011: unsigned_Sel = 1'b1;  // sltu
                    default: unsigned_Sel = 1'b0;
                endcase
            end
            `I_type: 
            begin
                case (funct3)
                    3'b101: unsigned_Sel = 1'b1;  // srai
                    3'b011: unsigned_Sel = 1'b1;  // sltiu
                    default: unsigned_Sel = 1'b0;
                endcase
            end
            `load: 
            begin
                case (funct3)
                    3'b101:     unsigned_Sel = 1'b1;  // lhu
                    3'b100:     unsigned_Sel = 1'b1;  // lbu
                    default:    unsigned_Sel = 1'b0;
                endcase
            end
            `B_type: 
            begin
                case (funct3)
                    3'b110:     unsigned_Sel = 1'b1;  // bltu
                    3'b111:     unsigned_Sel = 1'b1;  // bgeu
                    default:    unsigned_Sel = 1'b0;
                endcase
            end
            `lui:       unsigned_Sel = 1'b1;
            default:    unsigned_Sel = 1'b0;
        endcase    
    end

    // DRAM write enable
    always @(*) 
    begin
        case (inst_type)
            `S_real_type: we_dram = 1'b1;
            default:      we_dram = 1'b0;
        endcase
    end

    // Writeback type
    always @(*) 
    begin
        case (opcode)
            `R_type: 
            begin
                case (funct3)
                    3'b011:     WB_type = 2'b01;
                    3'b010:     WB_type = 2'b01;
                    default:    WB_type = 2'b00;
                endcase
            end
            `I_type: 
            begin
                case (funct3)
                    3'b011:     WB_type = 2'b01;
                    3'b010:     WB_type = 2'b01;
                    default:    WB_type = 2'b00;
                endcase
            end
            `load:      WB_type = 2'b11;
            `jalr:      WB_type = 2'b10;
            `jal:       WB_type = 2'b10;
            default:    WB_type = 2'b00;
        endcase
    end

    // DRAM extension type
    always @(*) 
    begin
        case (opcode)
            `load: 
            begin
                case (funct3[1:0])
                    2'b00:      dram_extend = 2'b00;
                    2'b01:      dram_extend = 2'b01;
                    default:    dram_extend = 2'b10;
                endcase
            end
            `S_type: 
            begin
                case (funct3[1:0])
                    2'b00:      dram_extend = 2'b00;
                    2'b01:      dram_extend = 2'b01;
                    default:    dram_extend = 2'b10;
                endcase
            end
            default: dram_extend = 2'b10;
        endcase
    end

endmodule
