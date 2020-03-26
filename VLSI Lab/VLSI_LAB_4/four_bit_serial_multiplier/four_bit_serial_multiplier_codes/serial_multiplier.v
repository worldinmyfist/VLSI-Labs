`timescale 1ns / 1ps
module serial_multiplier(input clk,input rst,input [3:0] a,input [3:0] b,P);
output reg[7:0] P;
reg [3:0] x;
reg [2:0] i;
reg [7:0] z;
wire [3:0] gio;
wire [3:0] c;
wire [3:0] s;
assign gio = ({4{x[0]}}&b)&z[7:4];
assign s = ({4{x[0]}}&b)^z[7:4];
assign c[0] = gio[0];
assign c[1] = gio[1]|(s[1]&gio[0])|(s[1]&s[0]&c[0]);
assign c[2] = gio[2]|(s[2]&gio[1])|(s[2]&s[1]&gio[0])|(s[2]&s[1]&s[0]&c[0]);
assign c[3] = gio[3]|(s[3]&gio[2])|(s[3]&s[2]&gio[1])|(s[3]&s[2]&s[1]&gio[0])|(s[3]&s[2]&s[1]&s[0]&c[0]);
always@(posedge clk or negedge rst)
begin
if(!rst)
begin
x <= a;
i <= 0;
z <= 0;
end
else
begin
if(i==4)                                                           
begin
P <= z[7:0];
end
z[7:0] <= {c[3],s[3]^c[2],s[2]^c[1],s[1]^c[0],s[0],z[3:1]};
x[3:0] <= {x[0],x[3:1]};
i <= i+1;
end
end
endmodule
