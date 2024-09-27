`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 09:36:35 PM
// Design Name: 
// Module Name: Cong8
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


module Cong8(
input wire [7:0] A,B,
input wire cin,
output wire cout,
output [7:0] S);
wire c1, c2, c3, c4, c5, c6, c7;
Cong  F0( A[0],  B[0], cin , S[0],  c1);
Cong  F1( A[1],  B[1], c1 , S[1],  c2);
Cong  F2( A[2],  B[2], c2 , S[2],  c3);
Cong  F3( A[3],  B[3], c3 , S[3],  c4);
Cong  F4( A[4],  B[4], c4 , S[4],  c5);
Cong  F5( A[5],  B[5], c5 , S[5],  c6);
Cong  F6( A[6],  B[6], c6 , S[6],  c7);
Cong  F7( A[7],  B[7], c7 , S[7],  cout);
endmodule