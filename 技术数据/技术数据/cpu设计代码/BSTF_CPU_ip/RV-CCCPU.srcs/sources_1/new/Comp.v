`include "define.v"
module Comp(
    input   wire [31: 0]    A,
    input   wire [31: 0]    B,
    input   wire            unsigned_Sel,
    output  reg  [1: 0]     out
);

    wire equal_flag;
    assign equal_flag = (A == B) ? 1'b1 : 1'b0;

    reg  less_flag;
    always @(*) 
    begin
        if (unsigned_Sel == 1'b1) 
            less_flag = (A < B)? 1'b1 : 1'b0;
        else
        begin
            if (A[31] > B[31]) 
                less_flag = 1'b1;
            else if (A[31] < B[31]) 
                less_flag = 1'b0;
            else 
            begin
            if (A[31] == 1'b1)  
                less_flag = (A[30:0] < B[30:0]) ? 1'b1 : 1'b0;  
            else  
                less_flag = (A < B) ? 1'b1 : 1'b0;
            end
        end
    end

    wire great_flag;
    assign great_flag = ~(equal_flag|less_flag)?1'b1:1'b0;

    always @(*) 
    begin
    if(equal_flag)
    out = 2'b01;
    else if(less_flag)
    out = 2'b10;
    else if(great_flag)
    out = 2'b11;
    else
    out = 2'b00;   
    end

endmodule  