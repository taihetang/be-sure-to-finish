`include "define.v"
module Imm_Gen(
    input  wire [31:0] inst,
    input  wire [2:0]  Imm_Sel,
    output wire [31:0] Imm_out
    );

    reg  [31: 0] Imm_out_reg;
    assign Imm_out = Imm_out_reg;

    wire [31:0] I_Imm;
	wire [31:0] U_Imm;
	wire [31:0] J_Imm;
	wire [31:0] B_Imm;
	wire [31:0] S_Imm;

    assign  I_Imm [31:0] ={{20{inst[31]}},inst[31:20]}; 
	assign  U_Imm [31:0] ={inst[31:12],{12{1'b0}}};
	assign  J_Imm [31:0] ={{12{inst[31]}},inst[19:12],inst[20],inst[30:21],1'b0};   
	assign  B_Imm [31:0] ={{20{inst[31]}},inst[7],inst[30:25],inst[11:8],1'b0};
	assign  S_Imm [31:0] ={{20{inst[31]}},inst[31:25],inst[11:7]}; 


    always @(*) 
    begin
        case (Imm_Sel)
         `Imm_I:        Imm_out_reg[31: 0] = I_Imm[31: 0];       
         `Imm_S:        Imm_out_reg[31: 0] = S_Imm[31: 0];
         `Imm_B:        Imm_out_reg[31: 0] = B_Imm[31: 0];     
         `Imm_J:        Imm_out_reg[31: 0] = J_Imm[31: 0];
         `Imm_U:        Imm_out_reg[31: 0] = U_Imm[31: 0];
         default:       Imm_out_reg[31: 0] = 32'b0;
        endcase
    end

endmodule
