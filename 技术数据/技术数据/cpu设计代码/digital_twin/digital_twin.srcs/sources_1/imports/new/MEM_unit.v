`include "define.v"
module MEM_unit(
    input   wire            clk,
    input   wire            rst_n,
    input   wire [31:0]     ALU_out,
    input   wire [31:0]     wd,
    input   wire            we_dram,
    input   wire            unsigned_Sel,
    input   wire [1:0]      dram_extend,
    input   wire [31:0]     rd,
    output  reg  [31:0]     MEM_out,
    output  reg  [31:0]     wd_extend
    );

    

    always @(*)
    begin
        if (we_dram == 1'b1) 
        begin
            case (dram_extend)
                2'b00:
                begin
                    case (ALU_out[1:0])
                        2'b00:      wd_extend  = {rd[31:8],wd[7:0]};
                        2'b01:      wd_extend  = {rd[31:16],wd[7:0],rd[7:0]};   
                        2'b10:      wd_extend  = {rd[31:24],wd[7:0],rd[15:0]};
                        2'b11:      wd_extend  = {wd[7:0],rd[23:0]};
                    endcase
                end
                2'b01:
                begin
                    case (ALU_out[1])
                        1'b0:       wd_extend = {rd[31:16],wd[15:0]};
                        1'b1:       wd_extend = {wd[15:0],rd[15:0]};
                    endcase
                end
                2'b10:              wd_extend = wd;
                default:            wd_extend = 32'b0;
            endcase
        end
        else
        begin
            case (dram_extend)
                2'b00:
                begin
                    if (unsigned_Sel == 1'b1) 
                    begin
                        case (ALU_out[1:0])
                            2'b00:      MEM_out  = {24'b0,rd[7:0]};
                            2'b01:      MEM_out  = {24'b0,rd[15:8]};   
                            2'b10:      MEM_out  = {24'b0,rd[23:16]};
                            2'b11:      MEM_out  = {24'b0,rd[31:24]};
                        endcase
                    end
                    else
                    begin
                        case (ALU_out[1:0])
                            2'b00:      MEM_out  = {{24{rd[7]}},rd[7:0]};
                            2'b01:      MEM_out  = {{24{rd[15]}},rd[15:8]};   
                            2'b10:      MEM_out  = {{24{rd[23]}},rd[23:16]};
                            2'b11:      MEM_out  = {{24{rd[31]}},rd[31:24]};
                        endcase
                    end
                end 
                2'b01:
                begin
                    if (unsigned_Sel == 1'b1) 
                    begin
                        case (ALU_out[1])
                            1'b0:      MEM_out  = {16'b0,rd[15:0]};
                            1'b1:      MEM_out  = {16'b0,rd[31:16]};   
                        endcase
                    end
                    else
                    begin
                        case (ALU_out[1])
                            1'b0:      MEM_out  = {{16{rd[15]}},rd[15:0]};
                            1'b1:      MEM_out  = {{16{rd[31]}},rd[31:16]};   
                        endcase
                    end
                end
                2'b10:
                begin
                    MEM_out = rd;
                end
                default:
                begin
                    MEM_out = 32'b0;
                end
            endcase
        end
    end



endmodule
