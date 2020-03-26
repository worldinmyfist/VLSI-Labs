`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:24:14 09/27/2019 
// Design Name: 
// Module Name:    LA_l3 
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
module fbla(input [3:0]m, input [3:0]n, input c0, output car_out, output [3:0]y);
assign p0 = m[0]^n[0];
assign p1 = m[1]^n[1];
assign p2 = m[2]^n[2];
assign p3 = m[3]^n[3];
assign g0 = m[0]&n[0];
assign g1 = m[1]&n[1];
assign g2 = m[2]&n[2];
assign g3 = m[3]&n[3];

assign c1 = g0 | (p0&c0);
assign c2 = g1 | (p1&g0) | (p1&p0&c0);
assign c3 = g2 | (p2&g1) | (p2&p1&g0) | (p2&p1&p0&c0);
assign car_out = g3 | (p3&g2) | (p3&p2&g1) | (p3&p2&p1&g0) | (p3&p2&p1&p0&c0);

assign y[0] = p0^c0;
assign y[1] = p1^c1;
assign y[2] = p2^c2;
assign y[3] = p3^c3;
endmodule



module LA_l3(
    input [15:0]a,
    input [15:0]b,
    input c_in,
    output c_out,
    output [15:0]s,
    output c_out_four
    );
	 
fbla level_1(a[3:0],b[3:0],c_in,alpha,s[3:0]);
assign c_out_four = alpha;
fbla level_2(a[7:4],b[7:4],alpha,beta,s[7:4]);
fbla level_3(a[11:8],b[11:8],beta,delta,s[11:8]);
fbla level_4(a[15:12],b[15:12],delta,c_out,s[15:12]);


endmodule
