`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:39:31 09/14/2019 
// Design Name: 
// Module Name:    l2encoder 
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
module l2encoder(
    input x0,
    input x1,
    input x2,
    input x3,
    input x4,
    input x5,
    input x6,
    input x7,
    input e,
    output y0,
    output y1,
    output y2,
	 output v
    );
	 
	 assign y0 = e & (( (~x6) &( ( (~x4)&(~x2)&x1) | ((~x4)&x3) | x5 ) )|x7) ;
	 assign y1 = e & (((~x5)&(~x4)&(x2|x3)) | x6 | x7);
    assign y2 = e & (x4|x5|x6|x7);
	 assign v = x0|x1|x2|x3|x4|x5|x6|x7;
	 
endmodule
