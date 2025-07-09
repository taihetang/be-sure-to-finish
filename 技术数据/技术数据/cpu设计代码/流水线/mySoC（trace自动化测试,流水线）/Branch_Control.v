`include "define.v"
module Branch_Contorl (
    input   wire    [1:0]   Comp_out,
    input   wire    [2:0]   funct3,
    input   wire    [6:0]   opcode,
    output  reg             pc_Sel      
);
// PC selection logic
//将control模块中pc_Sel独立出来
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
endmodule