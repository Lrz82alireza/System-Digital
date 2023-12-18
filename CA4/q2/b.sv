module tb_b_q2 ();
    `timescale 1ns/1ns

    logic D, clk;
    wire Q, QB;

    D_flip_flop my_ff(D, clk, Q, QB);

    initial D = 1'b0;
    initial clk = 1'b0;

    initial repeat (10) #100 clk = ~clk;
    initial repeat (20) #180 D += 1;


endmodule