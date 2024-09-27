`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 09:42:59 PM
// Design Name: 
// Module Name: Mux2to1
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


    module Mux2to1(input [7:0]G,H,input Op,output wire [7:0] Y);
           assign Y = (Op == 1'b0)? G: H;
    endmodule
