module shifter_n_b #(parameter n = 4) (input clk, S, rst, Pi, input [count - 1 : 0] load, output logic [count - 1 : 0] W, output logic Po);

    always @(posedge clk, posedge rst) begin
        
        if (rst) W <= count'b0;
        else if (S) {W, Po} <= {Pi, W};
        else W <= load;

    end

endmodule