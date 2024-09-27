`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 09:38:54 PM
// Design Name: 
// Module Name: Khoitinhtoan
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


module Khoitinhtoan(
input wire[7:0] A,B,
input S1,S0,
input wire Cin,
output reg  [7:0] G,
output reg Overflow,
output reg [7:0] Du );
wire [7:0]m,n,k,f,fo;
wire cout,bo,do;

Cong8 cong(.A(A),.B(B),.cin(Cin),.cout(cout),.S(m));
Tru8 tru(.A(A),.B(B),.bin(Cin),.D(n),.bo(bo));
Nhan8 nhan(.A(A),.B(B),.out(k),.do(do));
Chia8 chia(.A(A),.B(B),.quotient(f),.remainder(fo));
always @(*) begin
  case({S1,S0}) 
      2'b00: begin
      G=m; 
      Overflow=cout;
      Du=1'b0; end
      2'b01: begin
      G=n; 
      Overflow=bo;
      Du=1'b0; end
      2'b10: begin
      G=k;
      Overflow=do;
      Du=1'b0; end
      2'b11: begin
      G=f;
      Overflow=1'b0;
      Du=fo; end
  endcase
end
endmodule