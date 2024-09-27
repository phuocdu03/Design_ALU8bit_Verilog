`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2023 03:13:50 PM
// Design Name: 


           module Chia8( input [7:0] A, B, output reg [7:0] quotient, remainder );
             integer i;
             reg [7:0] divisor_copy, dividend_copy;
             reg [7:0] temp;// thanh ghi l�u tr? c�c ph�p t�nh trung gian
             always @(B or A)
               begin
	           divisor_copy = B; // g�n s? chia v�o thanh ghi divisor_copy
	           dividend_copy = A;// g�n s? b? chia v�o thanh ghi dividend_copy v� l�u tr? gi� tr? th��ng
	           temp = 0; 
	           for(i = 0;i < 8;i = i + 1)
	             begin
	              // D?ch tr�i t?ng bit(MSB) dividend_copy v�o temp
		             temp = {temp[6:0], dividend_copy[7]};
		             dividend_copy[7:1] = dividend_copy[6:0];
		          //Tr? Thanh ghi s? chia kh?i Thanh ghi s? d� v� ghi k?t qu? v�o thanh ghi s? d�
		             temp = temp - divisor_copy; 
		          // So s�nh temp ? divisor_copy
		            if(temp[7] == 1) // temp<0 t?c c� ngh?a temp < divisor_copy 
		                begin
		                 	dividend_copy[0] = 0;
			                temp = temp + divisor_copy; // tr? l?i gi� tr? c?a temp tr�?c khi temp - divisor_copy
			            end
		            else // temp? 0 t?c c� ngh?a temp ? divisor_copy
		                begin
		                   	dividend_copy[0] = 1;
		                end
	            end
	           quotient = dividend_copy; // th��ng c?a ph�p chia
	           remainder = temp;// ph?n d� c?a ph�p chia
              end
              endmodule