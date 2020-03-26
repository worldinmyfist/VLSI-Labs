`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:19:25 11/11/2019 
// Design Name: 
// Module Name:    shift_reg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module shift_reg(
        input clk,
        input [3:0] p_in,
        input left_shift_inp,
        input right_shift_inp,
        input select1,
        input select0,
        output reg [3:0] p_out=0
);

always@(negedge clk) begin
        if (select1 == 1 && select0 == 1) begin
                p_out[3:0] <= p_in;

        end
        // left shift
        else if (select1 == 0 && select0 == 1) begin
                p_out <= {p_out[2:0], left_shift_inp};
        end
        // right shift
        else if (select1 == 1 && select0 == 0) begin
                p_out <= {right_shift_inp, p_out[3:1]};

        end
end
endmodule
