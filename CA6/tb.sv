`timescale 1ns/1ns
module my_tb ();

    logic [15:0] inX;
    logic [7:0] inY;
    logic clk, rst, start;

    wire [15:0] out;
    wire done;

    cos_x cc (clk, rst, start, inX, inY, out, done);

    initial {clk, rst, start} = 3'b0;

    always #100 clk = ~clk;

    initial begin

        inX = 16'b0000000100010100;
        inY = 8'b0010000;
        
        #200 start = 1;
        #200 start = 0;

        #50000 $stop;
    end

endmodule