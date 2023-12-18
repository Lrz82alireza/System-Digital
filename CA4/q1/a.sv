module SR_2_input (input S, R, output Q, QB);
    nand #8 (QB, ~S, Q);
    nand #8 (Q, ~R, QB);
endmodule

module SR_3_input (input S, PS, R, PR,  output Q, QB);

    nand #12 (QB, PS, ~S, Q);
    nand #12 (Q, PR, ~R, QB);

endmodule