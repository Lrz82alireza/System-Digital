module tb_b_q2 ();
    `timescale 1ns/1ns

    logic D, clk;
    wire Q, QB;

    D_flip_flop my_ff(D, clk, Q, QB);

    initial {D, clk} = 2'b00;

    initial repeat (30) #100 clk = ~clk;
    // initial repeat (20) #98 D = ~D;

    initial begin
        #100
        repeat (20) #60 D = ~D;
        #80 D = ~D;
        #40 D = ~D;
    end


endmodule