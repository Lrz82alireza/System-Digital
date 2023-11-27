module _4_to_1_MUX_l (input [3:0] A, input [1:0] S, input en, output W);
    assign W = (en == 1'b1) ? 1'bz:
        (S == 2'b00) ? A[0]:
        (S == 2'b01) ? A[1]:
        (S == 2'b10) ? A[2]:
        (S == 2'b11) ? A[3]:
        1'bx;
endmodule

module _4_to_1_MUX_h (input [3:0] A, input [1:0] S, input en, output W);
    assign W = (en == 1'b0) ? 1'bz:
        (S == 2'b00) ? A[0]:
        (S == 2'b01) ? A[1]:
        (S == 2'b10) ? A[2]:
        (S == 2'b11) ? A[3]:
        1'bx;
endmodule