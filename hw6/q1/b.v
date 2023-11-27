module comp_1_b (input [7:0] A, output [7:0] W);
    
    genvar  i;
    wire [7:0] C;

    // Half adder
    assign W[0] = ~A[0] ^ 1'b1;
    assign C[0] = ~A[0] & 1'b1;

    generate
        for (i = 1; i < 8; i = i + 1) begin
            assign W[i] = ~A[i] ^ C[i - 1];
            assign C[i] = ~A[i] & C[i - 1];
        end
    endgenerate

endmodule