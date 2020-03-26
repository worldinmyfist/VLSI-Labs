`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:58:52 11/01/2019 
// Design Name: 
// Module Name:    radix_4_fft 
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
module radix_4_fft(
input [3:0] x,
output  [2:0] real_y_0,
output  [2:0] real_y_1,
output  [2:0] real_y_2,
output  [2:0] real_y_3,
output  [2:0] complex_y_0,
output  [2:0] complex_y_1,
output  [2:0] complex_y_2,
output  [2:0] complex_y_3
);
	
assign real_y_0 = x[0]+x[1]+x[2]+x[3];
assign complex_y_0 = 0;
assign real_y_1 = x[0]-x[2];
assign complex_y_1 = x[3]-x[1];
assign real_y_2 = x[0]-x[1]+x[2]-x[3];
assign complex_y_2 = 0;
assign real_y_3 = x[0]-x[2];
assign complex_y_3 = x[1]-x[3];

endmodule
