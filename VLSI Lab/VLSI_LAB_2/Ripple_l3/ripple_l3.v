`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:42:17 09/27/2019 
// Design Name: 
// Module Name:    ripple_l3 
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
module ob_FA(input a_i, input b_i, input carry_in, output sum, inout carry_out);
assign x = a_i^b_i;
assign sum = x^carry_in;
assign carry_out =  (a_i&b_i)|(x&carry_in);
endmodule

module fbra(input [3:0]m, input [3:0]n, input car_in, inout car_out, output [3:0]y);
ob_FA level_0(m[0], n[0], car_in, y[0], car_level_1);
ob_FA level_1(m[1], n[1], car_level_1, y[1], car_level_2);
ob_FA level_2(m[2], n[2], car_level_2, y[2], car_level_3);
ob_FA level_3(m[3], n[3], car_level_3, y[3], car_out);
endmodule


module ripple_l3(
    input [15:0]a,
    input [15:0]b,
    output c_out_four,
    input c_in,
    output c_out,
    output [15:0]s
    );
	 
fbra fb_0(a[3:0], b[3:0], c_in, alpha, s[3:0]);
assign c_out_four = alpha;
fbra fb_1(a[7:4], b[7:4], alpha, beta, s[7:4]);
fbra fb_2(a[11:8], b[11:8], beta, delta, s[11:8]);	 
fbra fb_3(a[15:12], b[15:12], delta, c_out, s[15:12]);
endmodule
