module A_sync (input clk, Cen, T, output logic W);

    always @(posedge clk) begin
        if (~ Cen && T) W <= ~ W;
    end

endmodule


module B_sync (input clk, Cen, output logic [7 : 0] W);

    genvar i;

    generate
        A_sync (clk(clk), Cen(Cen), T(~ Cen), W[0]);

        for (i = 1; i < 8; i = i + 1) begin
            A_sync (clk(w[i - 1]), Cen(Cen), T(~ Cen), W(W[i]));
        end
    endgenerate

endmodule   

module C_sync (input clk, Cen, Tin, output logic W, Cout);

    A_sync (clk(clk), Cen(Cen), T(Tin), W(W));
    assign Cout = W & Tin;

endmodule

module D_sync (input clk, Cen, Tin, output logic [7 : 0] W, output Cout);

    wire [8 : 0] wi;
    genvar i;

    assign wi[0] = Tin;
    assign Cout = wi[8];

    generate
        for (i = 0; i < 8; i + 1) begin
            C_sync (clk(clk), Cen(Cen), Tin(wi[i]), W(W[i]), Cout(wi[i + 1]));
        end
    endgenerate

endmodule
