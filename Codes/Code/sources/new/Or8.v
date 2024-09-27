`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 09:40:16 PM
// Design Name: 
// Module Name: Or8
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


     module Or8( input [7:0] A,B, output reg [7:0] out );
        integer i;// cho 1 bi?n ki?u s� nguy�n �? ch?y
        always @(*) begin
        // Ban �?u ch�ng ta s? cho 8 bit �?uu ra l� 0
             out = {8{1'b0}}; 
        // �?u v�o 8 bit n�n ta s? cho v?ng l?p ch?y t? 0->7
             for (i = 0; i < 8; i = i + 1) begin
         // m?t trong 2 gi� tr? �?u v�o l� 1 th? �?u ra l� 1
                 if (A[i] == 1'b1 || B[i] == 1'b1) begin 
                      out[i] = 1'b1; 
                       end
                end
               end
      endmodule

