module seq_det (input clk, rst, serIn, output w);
    logic [1:0] ps,ns;
    parameter [2:0] A = 3'b0, B = 3'b1, C = 3'b2, D = 3'b3, E = 3'b4, F = 3'b5, G = 3'b6, H = 3'b7;

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
            default: 
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