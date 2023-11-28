module comprator_8 (input [7:0] a , b, input l , g , e , output lt , eq , gt);

    genvar i;

    wire [7:0] wl, wg, we;

    comprator_1 m(.a(a[7]), .b(b[7]), .l(l), .g(g), .e(e), .lt(wl[7]), .gt(wg[7]), .eq(we[7]));
    generate
        for (i = 6; i >= 0; i = i - 1) begin
            comprator_1 mi(.a(a[i]), .b(b[i]), .l(wl[i + 1]), .g(wg[i + 1]), .e(we[i + 1]), .lt(wl[i]), .gt(wg[i]), .eq(we[i]));
        end
    endgenerate

    assign {lt, eq, gt} = {wl[0], we[0], wg[0]};

endmodule