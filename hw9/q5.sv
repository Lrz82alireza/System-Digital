module unknown (input Si, clk, output logic So, output logic [3:0] out = 0);

    wire [3:0] xi;
    wire logic [2:0] Q;

    always @(posedge clk) begin

        out <= {Si, out[0] ^ Si, out[2], out[0] ^ out[1]};

    end
    
    assign So = out[0];

endmodule