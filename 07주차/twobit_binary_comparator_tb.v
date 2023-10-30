`timescale 1ns / 1ps
module twobit_binary_comparator_tb;
    reg a1, a2, b1, b2;
    wire f1, f2, f3;
    crumb_comparator DUT (.a1(a1), .a2(a2), .b1(b1), .b2(b2), .f1(f1), .f2(f2), .f3(f3));
    initial begin
	a1 = 0; a2 = 0; b1 = 0; b2 = 0; #20;        a1 = 1; a2 = 0; b1 = 0; b2 = 0; #20;
        a1 = 0; a2 = 0; b1 = 0; b2 = 1; #20;        a1 = 1; a2 = 0; b1 = 0; b2 = 1; #20;
        a1 = 0; a2 = 0; b1 = 1; b2 = 0; #20;        a1 = 1; a2 = 0; b1 = 1; b2 = 0; #20;
        a1 = 0; a2 = 0; b1 = 1; b2 = 1; #20;        a1 = 1; a2 = 0; b1 = 1; b2 = 1; #20;
        a1 = 0; a2 = 1; b1 = 0; b2 = 0; #20;        a1 = 1; a2 = 1; b1 = 0; b2 = 0; #20;
        a1 = 0; a2 = 1; b1 = 0; b2 = 1; #20;        a1 = 1; a2 = 1; b1 = 0; b2 = 1; #20;
        a1 = 0; a2 = 1; b1 = 1; b2 = 0; #20;        a1 = 1; a2 = 1; b1 = 1; b2 = 0; #20;
        a1 = 0; a2 = 1; b1 = 1; b2 = 1; #20;        a1 = 1; a2 = 1; b1 = 1; b2 = 1; #20;
        $finish;
    end
endmodule