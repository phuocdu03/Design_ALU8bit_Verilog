`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 09:42:25 PM
// Design Name: 
// Module Name: Alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Alu(
input [7:0] A,B,
input S1,S0,Op,
input Carry_in, 
output [7:0]Result,
output Overflow_flag,
output [7:0] Remainder);

wire [7:0] G,H,Du;
wire Overflow;

Khoitinhtoan unit0(.A(A),.B(B),.S1(S1),.S0(S0),.Cin(Carry_in),.G(G),.Overflow(Overflow_flag),.Du(Remainder));
Khoilogic unit1(.A(A),.B(B),.S1(S1),.S0(S0),.H(H));
Mux2to1 mux(.G(G),.H(H),.Op(Op),.Y(Result));

endmodule

