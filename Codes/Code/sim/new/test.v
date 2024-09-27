`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 09:43:57 PM
// Design Name: 
// Module Name: test
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


module test;
reg [7:0] A,B;
reg S1,S0,Op;
reg Carry_in;
wire [7:0]Result, Remainder;
wire Overflow_flag;

Alu alu(.A(A),.B(B),.Op(Op),.S1(S1),.S0(S0),.Carry_in(Carry_in),.Result(Result),.Overflow_flag(Overflow_flag),.Remainder(Remainder));
initial begin
    Op=1'b0;
    S1=1'b0;
    S0=1'b0;
    A=8'd90;
    B=8'd33;
    Carry_in=0;
    #20;
    
    Op=1'b0;
    S1=1'b0;
    S0=1'b0;
    A=8'd90;
    B=8'd33;
    Carry_in=1;
    #20;
    
    Op=1'b0;
    S1=1'b0;
    S0=1'b0;
    A=8'd254;
    B=8'd5;
    Carry_in=0;
    #20;
    
    Op=1'b0;
    S1=1'b0;
    S0=1'b0;
    A=8'd254;
    B=8'd5;
    Carry_in=1;
    #20;
    
    Op=1'b0;
    S1=1'b0;
    S0=1'b1;
    A=8'd90;
    B=8'd33;
    Carry_in=0;
    #20;
    
    Op=1'b0;
    S1=1'b0;
    S0=1'b1;
    A=8'd90;
    B=8'd33;
    Carry_in=1;
    #20;
    
    Op=1'b0;
    S1=1'b0;
    S0=1'b1;
    A=8'd254;
    B=8'd255;
    Carry_in=0;
    #20;
    
    Op=1'b0;
    S1=1'b0;
    S0=1'b1;
    A=8'd254;
    B=8'd255;
    Carry_in=1;
    #20;
    
    Op=1'b0;
    S1=1'b1;
    S0=1'b0;
    A=8'd13;
    B=8'd10;
    #20;
    
    Op=1'b0;
    S1=1'b1;
    S0=1'b0;
    A=8'd23;
    B=8'd13;
    #20;
    
    Op=1'b0;
    S1=1'b1;
    S0=1'b1;
    A=8'd80;
    B=8'd40;
    #20;
    
    Op=1'b0;
    S1=1'b1;
    S0=1'b1;
    A=8'd245;
    B=8'd75;
    #20;
    
    Op=1'b1;
    S1=1'b0;
    S0=1'b0;
    A=8'd13;
    B=8'd10;
    #20;
    
    Op=1'b1;
    S1=1'b0;
    S0=1'b1;
    A=8'd13;
    B=8'd10;
    $finish;
end
endmodule