module seq_det_pre (input clk, rst, serIn, output w);
    logic [2:0] ps,ns;
    parameter [2:0] A = 3'd0, B = 3'd1, C = 3'd2, D = 3'd3, E = 3'd4, F = 3'd5, G = 3'd6, H = 3'd7;

    always @(ps, serIn) begin
        ns = A;
        case (ps)
            A: ns = serIn ? A : B;  
            B: ns = serIn ? C : B; 
            C: ns = serIn ? D : B;
            D: ns = serIn ? E : B; 
            E: ns = serIn ? F : B; 
            F: ns = serIn ? G : B; 
            G: ns = serIn ? A : H;
            H: ns = serIn ? C : B;
            default: ns = A;
        endcase

    end

    assign w = (ps == H) ? 1'b1 : 1'b0;

    always @(posedge clk, posedge rst) begin
        if (rst)
            ps <= A;
        else
            ps <= ns;
    end

endmodule