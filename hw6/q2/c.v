module full_adder_c (input [3:0] a, b, input ci, output [3:0] w, output co);
    wire [4:0] wc;
    assign wc[0] = ci;
    genvar i;
    
    generate
        for (i = 0; i < 4; i = i + 1) begin
        adder_a myadder(.a(a[i]), .b(b[i]), .ci(wc[i]), .co(wc[i + 1]), .sum(w[i]));    
        end
    endgenerate

    assign co = wc[4];
endmodule