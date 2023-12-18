module SR_2_input (input S, R, output Q, QB);
    nand #8 (Q, S, QB);
    nand #8 (QB, R, Q);
endmodule

module SR_3_input (input S, PS, R, PR,  output Q, QB);

    nand #12 (Q, PS, S, QB);
    nand #12 (QB, PR, R, Q);

endmodule