module _16_to_1_MUX (input [15:0] A, input [3:0] S, input en, output W);
    wire [3:0] wr;

    _4_to_1_MUX_h mux0(.A(A[3:0]), .S(S[1:0]), .en(en), .W(wr[0]));
    _4_to_1_MUX_h mux1(.A(A[7:4]), .S(S[1:0]), .en(en), .W(wr[1]));
    _4_to_1_MUX_h mux2(.A(A[11:8]), .S(S[1:0]), .en(en), .W(wr[2]));
    _4_to_1_MUX_h mux3(.A(A[15:9]), .S(S[1:0]), .en(en), .W(wr[3]));

    _4_to_1_MUX_h mux4(.A(wr), .S(S[3:2]), .en(en), .W(W));

endmodule