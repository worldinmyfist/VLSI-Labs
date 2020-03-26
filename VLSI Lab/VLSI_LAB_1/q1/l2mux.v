`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:17 09/14/2019 
// Design Name: 
// Module Name:    l2mux 
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
//////////////////////////////////////////////////////////////////////////////////
module two(input a,input b, input s ,inout y);
assign y  = a&(~s)|(b&s);
endmodule

module four(input x1,input x2,input x3,input x4,input s1,input s2,inout f);
two level4_1_1(x1,x2,s1,alpha);
two level4_1_2(x3,x4,s1,beta);
two level4_2(alpha,beta,s2,f);
endmodule

module l2mux(
    input a1,
    input a2,
    input b1,
    input b2,
    input c1,
    input c2,
    input d1,
    input d2,
    input sabcd,
    input sxy,
    input sz,
	 output y4,
    output y8
    );
	 
	 four levele_1_1(a1,a2,b1,b2,sabcd,sxy,hello);
	 assign y4 = hello;
	 four levele_1_2(c1,c2,d1,d2,sabcd,sxy,world);
	 two levele_2(hello,world,sz,y8);
	 
	
endmodule