module comprator_8 (input [7:0] a , b, input l , g , e , output lt , eq , gt);

    genvar i;

    wire [3:0] wl, wg, we;

    comprator_2_bit m(.a(a[3]), .b(b[3]), .l(l), .g(g), .e(e), .lt(wl[3]), .gt(wg[3]), .eq(we[3]));
    generate
        for (i = 2; i >= 0; i = i - 1) begin
            comprator_2_bit mi(.a(a[i]), .b(b[i]), .l(wl[i + 1]), .g(wg[i + 1]), .e(we[i + 1]), .lt(wl[i]), .gt(wg[i]), .eq(we[i]));
        end
    endgenerate

    assign {lt, eq, gt} = {wl[0], we[0], wg[0]};

endmodule