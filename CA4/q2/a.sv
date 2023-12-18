module SR_2_input (input S, R, output Q, QB);
    nand #8 (Q, S, QB);
    nand #8 (QB, R, Q);
endmodule

module SR_3_input (input S, PS, R, PR,  output Q, QB);

    nand #12 (Q, PS, S, QB);
    nand #12 (QB, PR, R, Q);

endmodule

module D_flip_flop (input D, clk, output Q, QB);

wire w1, w2, w3, w4;

SR_2_input L1 (w4, clk, w1, w2);
SR_3_input L2 (w2, clk, D, 1'b1, w3, w4);
SR_2_input L3 (w2, w3, Q, QB);
    
endmodule