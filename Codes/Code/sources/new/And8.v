`timescale 1ns / 1ps








   module And8( input [7:0] A,B, output reg [7:0] out);
     integer i;// cho 1 bi?n ki?u s� nguy�n �? ch?y
     always @(*) begin
       // Ban �?u ch�ng ta s? cho 8 bit �?u ra l� 1
         out = {8{1'b1}}; 
        // �?u v�o 8 bit n�n ta s? cho v?ng l?p ch?y t? 0->7
          for (i = 0; i < 8; i = i + 1) begin 
        // m?t trong 2 gi� tr? �?u v�o l� 0 th? �?u ra l� 0
            if (A[i] == 1'b0 || B[i] == 1'b0) begin 
                 out[i] = 1'b0; 
             end
            end
         end
      endmodule