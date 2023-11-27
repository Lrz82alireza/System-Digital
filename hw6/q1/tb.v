`timescale 1ns/1ns
module tb ();
    reg [7:0] a;
    wire [7:0] w;

    comp_1_b cmb(.A(a), .W(w));
    initial begin
        #100 a = 8'b00010111;
        #100;
    end
endmodule