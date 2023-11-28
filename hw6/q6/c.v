module func_c (input [4:0] S, output W);

    wire e = S[0];
    // wire [15:0] A;
    // assign A = {1'b1, e, ~e, ~e, ~e, ~e, e, e, 1'b1, 1'b0, ~e, 1'b1, 1'b0, 1'b1, e, e};

    _16_to_1_MUX mux (.A({1'b1, e, ~e, ~e, ~e, ~e, e, e, 1'b1, 1'b0, ~e, 1'b1, 1'b0, 1'b1, e, e}), .S(S[4:1]), .en(1'b1), .W(W));

endmodule