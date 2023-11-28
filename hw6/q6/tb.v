`timescale 1ns/1ns
module tb ();
    reg [15:0] a;
    reg [3:0] s;
    reg en1;
    wire w;

    _16_to_1_MUX my_mux(.A(a), .S(s), .en(en1), .W(w));
    initial begin
        en1 = 1'b1;
        a = 16'b0001010000111000;
        s = 4'b1111;
        #1000 s = 4'b0100;

        en1 = 1'b1;
        s = 4'b1111;
        a = 16'b1000000000000000;
        #200;
        s = 4'b0;
        a = 16'b0000000000000001;
        #200;
        a[0] = 0;
        #200;
    end
endmodule