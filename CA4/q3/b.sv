module tb_q3 ();
    `timescale 1ns/1ns

    logic D, clk, PRE, CLR;
    wire Q, QB;

    D_flip_flop_PR my_ff(D, clk, PRE, CLR, Q, QB);

    initial {D, clk, CLR, PRE} = 4'b0;

    initial repeat (30) #100 clk = ~clk;
    initial repeat (20) #180 D += 1;


endmodule