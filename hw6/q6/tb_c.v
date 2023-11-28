`timescale 1ns/1ns
module tb_c ();
    reg [4:0] s;
    wire w;

    func_c ffff(.S(s), .W(w));
    initial begin

        s = 5'b00010;  // out = e
        #100;
        
        // s = 5'b00000;  // out = e
        // #100;
        // s = 5'b00001;  // out = e
        // #100;
        // s = 5'b11000;  // out = ~e
        // #100;
        // s = 5'b11001;  // out = ~e
        // #100;
        // s = 5'b00010;  // out = e
        // #100;
        // s = 5'b00011;  // out = e
        // #200;
        
        // s = 5'b00010;
        // #100;
        // s[0] = 1'b1;
        // #100;

        // s = 5'b11101;   // out = e
        // #100;
        // s = 5'b11100;   // out = e
        // #100;

        // s = 5'b11110;   // out = 1
        // #100;
        // s = 5'b01101;   // out = 0
        // #100;
        // s = 5'b01100;   // out = 0
        // #100;
    end
endmodule