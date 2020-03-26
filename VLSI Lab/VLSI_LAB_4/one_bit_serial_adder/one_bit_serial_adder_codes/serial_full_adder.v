`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:45:01 10/17/2019 
// Design Name: 
// Module Name:    serial_ful_adder 
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
module serial_full_adder(clk,rst,a,b,c_in,S,c_out);
input a,b,c_in,clk,rst;
output reg S;
output reg c_out;
wire p;
assign p = a^b;
always@(posedge clk or posedge rst)
begin
if(rst)
begin
S <= 1'd0;
c_out <= 1'd0;
end
else
begin
S <= p^c_in;
c_out <= (p&c_in)|(a&b);
end
end
endmodule
