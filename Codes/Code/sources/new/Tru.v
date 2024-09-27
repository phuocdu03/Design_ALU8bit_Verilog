`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 09:35:53 PM
// Design Name: 
// Module Name: Tru
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


module Tru(
input wire a,b,bi,
output wire D,bo);
assign D=a^b^bi;
assign bo=~a&b | ((~a | b)&bi);
endmodule
