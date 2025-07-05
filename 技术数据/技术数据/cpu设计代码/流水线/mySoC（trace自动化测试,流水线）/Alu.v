`include "define.v"
module ALU(
    input  wire [31:0] A,
    input  wire [31:0] B,
    input  wire [3:0]  ALU_Sel,
    input  wire        unsigned_Sel,
    output reg  [31:0] out
    );
 
    wire [32: 0]        addOut;
    wire [31: 0]        subOut;
    wire [31: 0]        andOut;
    wire [31: 0]        orOut;
    wire [31: 0]        xorOut;
    wire [31: 0]        sllOut;
    wire [31: 0]        srlOut;
    wire [31: 0]        sraOut;


    assign addOut  [32:0]               =    (ALU_Sel == `SUB) ? ({1'b0, A} + {1'b0, ~B} + 33'd1) : ({1'b0, A} + {1'b0, B});
    //加一位防止溢出错�?�?33'd1�?为了防�?�识�?错�??�?33'd1变成11111...1111111
    assign andOut  [31:0]               =    A[31: 0] & B[31: 0];
    assign orOut   [31:0]               =    A[31: 0] | B[31: 0];
    assign xorOut  [31:0]               =    A[31: 0] ^ B[31: 0];
    assign sllOut  [31:0]               =    (unsigned_Sel == 1) ? B[31: 0] : A[31: 0] << $unsigned(B[4: 0]);  
    // �?法：sll rd, rs1, rs2，作用是将rs1左移rs2�?(�?5位有�?)，空出的位补0，结果写�?rd寄存�?；Lui指令特殊处理
    assign srlOut  [31:0]               =    A[31: 0] >> $unsigned(B[4: 0]);
    assign sraOut  [31:0]               =    $signed(A[31: 0]) >>> $unsigned(B[4: 0]);


    always @(*) begin
    case (ALU_Sel)
        `AND:       out[31:0] = andOut[31:0];
        `OR:        out[31:0] = orOut[31:0];
        `XOR:       out[31:0] = xorOut[31:0];
        `SLL:       out[31:0] = sllOut[31:0];
        `SRL:       out[31:0] = srlOut[31:0];
        `SRA:       out[31:0] = sraOut[31:0];
        default:    out[31:0] = addOut[31:0]; // ADD or SUB
    endcase
end


 endmodule

