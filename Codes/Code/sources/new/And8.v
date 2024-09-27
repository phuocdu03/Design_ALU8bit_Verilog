`timescale 1ns / 1ps








   module And8( input [7:0] A,B, output reg [7:0] out);
     integer i;// cho 1 bi?n ki?u sô nguyên ð? ch?y
     always @(*) begin
       // Ban ð?u chúng ta s? cho 8 bit ð?u ra là 1
         out = {8{1'b1}}; 
        // ð?u vào 8 bit nên ta s? cho v?ng l?p ch?y t? 0->7
          for (i = 0; i < 8; i = i + 1) begin 
        // m?t trong 2 giá tr? ð?u vào là 0 th? ð?u ra là 0
            if (A[i] == 1'b0 || B[i] == 1'b0) begin 
                 out[i] = 1'b0; 
             end
            end
         end
      endmodule