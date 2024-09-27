`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 09:38:09 PM
// Design Name: 
// Module Name: Nhan8
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


module Nhan8(
input [7:0] A,B,
output [15:0] out,
output reg do);

 wire [7:0] mo;
 wire [8:0] m1;
 wire [9:0] m2;
 wire [10:0] m3;
 wire [11:0] m4;
 wire [12:0] m5;
 wire [13:0] m6;
 wire [14:0] m7;

wire [15:0] s1,s2,s3,s4,s5,s6,s7; 
assign mo= {8{A[0]}} & B[7:0];
assign m1= {8{A[1]}} & B[7:0];
assign m2= {8{A[2]}} & B[7:0];
assign m3= {8{A[3]}} & B[7:0];
assign m4= {8{A[4]}} & B[7:0];
assign m5= {8{A[5]}} & B[7:0];
assign m6= {8{A[6]}} & B[7:0];
assign m7= {8{A[7]}} & B[7:0];
  
assign s1= mo +(m1<<1);
assign s2= s1 +(m2<<2);
assign s3= s2 +(m3<<3);
assign s4= s3 +(m4<<4);
assign s5= s4 +(m5<<5);
assign s6= s5 +(m6<<6);
assign s7= s6 +(m7<<7);
assign out=s7;
//          12345678
//         123456780 
//        1234567800
//       12345678000
//      123456780000
//     1234567800000
//    12345678000000
//   123456780000000
always@(*) begin
    do = (out[15:8] != 8'b00000000) ? 1'b1 : 1'b0; 
   end
endmodule
