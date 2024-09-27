`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 09:41:42 PM
// Design Name: 
// Module Name: Khoilogic
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


    module Khoilogic( input wire[7:0] A,B, input S1,S0, output reg [7:0]H );
        wire [7:0]Y1,Y2;
        // g?i module con b?ng phýõng pháp theo tên 
        And8 a8(.A(A),.B(B),.out(Y1));
        Or8 o8(.A(A),.B(B),.out(Y2));
        // dung hàm always l?a ch?n ng? ra c?a kh?i
        always @(*) begin
        case({S1,S0}) 
          2'b00: H=Y1;
          2'b01: H=Y2;
         endcase
        end
     endmodule
