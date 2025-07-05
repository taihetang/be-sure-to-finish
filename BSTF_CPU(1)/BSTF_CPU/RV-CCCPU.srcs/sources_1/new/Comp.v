`include "define.v"
 module Comp(
            input   wire [31: 0]    A,
            input   wire [31: 0]    B,
            input   wire            unsigned_Sel,
            output  wire [1: 0]     out
        );

            wire [31: 0] Ain;
            wire [31: 0] Bin;
            wire equal;
            wire less;

            reg [1: 0] reg_out;
 
 // 有�?�号数转�?为移�?
           assign Ain[30: 0] = A[30: 0];
           assign Ain[31]    = (unsigned_Sel == 1) ? A[31] : ~A[31];
           assign Bin[30: 0] = B[30: 0];
           assign Bin[31]    = (unsigned_Sel == 1) ? B[31] : ~B[31];
 
 // 比较运算
           assign equal = ($unsigned(Ain) == $unsigned(Bin)) ? 1'b1 : 1'b0;
           assign less  = ($unsigned(Ain) < $unsigned(Bin)) ? 1'b1 : 1'b0;

           assign out = reg_out;
 
           always @(*) 
           begin
            if(equal)
            reg_out = 2'b00;
            else if(less)
            reg_out = 2'b01;
            else
            reg_out = 2'b10;
           end

 endmodule  