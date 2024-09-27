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
             reg [7:0] temp;// thanh ghi lýu tr? các phép tính trung gian
             always @(B or A)
               begin
	           divisor_copy = B; // gán s? chia vào thanh ghi divisor_copy
	           dividend_copy = A;// gán s? b? chia vào thanh ghi dividend_copy và lýu tr? giá tr? thýõng
	           temp = 0; 
	           for(i = 0;i < 8;i = i + 1)
	             begin
	              // D?ch trái t?ng bit(MSB) dividend_copy vào temp
		             temp = {temp[6:0], dividend_copy[7]};
		             dividend_copy[7:1] = dividend_copy[6:0];
		          //Tr? Thanh ghi s? chia kh?i Thanh ghi s? dý và ghi k?t qu? vào thanh ghi s? dý
		             temp = temp - divisor_copy; 
		          // So sánh temp ? divisor_copy
		            if(temp[7] == 1) // temp<0 t?c có ngh?a temp < divisor_copy 
		                begin
		                 	dividend_copy[0] = 0;
			                temp = temp + divisor_copy; // tr? l?i giá tr? c?a temp trý?c khi temp - divisor_copy
			            end
		            else // temp? 0 t?c có ngh?a temp ? divisor_copy
		                begin
		                   	dividend_copy[0] = 1;
		                end
	            end
	           quotient = dividend_copy; // thýõng c?a phép chia
	           remainder = temp;// ph?n dý c?a phép chia
              end
              endmodule