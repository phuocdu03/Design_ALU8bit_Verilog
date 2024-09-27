`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 09:36:50 PM
// Design Name: 
// Module Name: Tru8
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


module Tru8(
input wire [7:0] A, B,
input wire bin,
output [7:0] D,
output wire bo);
wire b1, b2, b3, b4, b5, b6, b7;
Tru  F0 ( A[0],  B[0], bin , D[0], b1);
Tru  F1 ( A[1],  B[1], b1 , D[1], b2);
Tru  F2 ( A[2],  B[2], b2 , D[2], b3);
Tru  F3 ( A[3],  B[3], b3 , D[3], b4);
Tru  F4 ( A[4],  B[4], b4, D[4], b5);
Tru  F5 ( A[5],  B[5], b5, D[5], b6);
Tru  F6 ( A[6],  B[6], b6 , D[6], b7);
Tru  F7 ( A[7],  B[7], b7, D[7], bo);
endmodule
