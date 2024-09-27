`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 09:26:04 PM
// Design Name: 
// Module Name: Cong
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


module Cong(
input a,b,cin,
output s,co);
assign s = a^b^cin;
assign co = (a&b)|((a^b)&cin);
endmodule