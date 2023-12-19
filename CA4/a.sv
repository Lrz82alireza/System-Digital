module SR_2_input (input S, R, output Q, QB);
    nand #8 (Q, S, QB);
    nand #8 (QB, R, Q);
endmodule

module SR_3_input (input S, PS, R, PR,  output Q, QB);

    nand #12 (Q, PS, S, QB);
    nand #12 (QB, PR, R, Q);

endmodule

module D_flip_flop_PR (input D, clk, PRE, CLR,  output Q, QB);

    wire wi[3:0];

    SR_3_input L1 (wi[3], ~ PRE, clk, ~ CLR, wi[0], wi[1]);
    SR_3_input L2 (wi[1], wi[clk], D, ~CLR, wi[2], wi[3]);
    SR_3_input L3 (~ PRE, wi[1], ~ CLR, wi[2], Q, QB);

endmodule