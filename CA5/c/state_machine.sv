module main_staste (input clk, rst, co, serIn, output logic load, S, shift_en, counter_en, serOutValid);
    logic [2:0] ps, ns;
    wire start;
    parameter [2:0] START_SEQUENCE = 3'd0, COUNT_8 = 3'd1, COUNT_NT = 3'd2;

    seq_det_pre start_seq(clk, rst, serIn, start);

    always @(ps, co, start) begin
        ns = START_SEQUENCE;
        case (ps)
            START_SEQUENCE: begin
                ns = start ? COUNT_8 : START_SEQUENCE;
                serOutValid = 1'b0;
                S = 1'b1;
                counter_en = 1;
                load = 1'b1;
            end 
            
            COUNT_8: begin
                if (co == 1) begin
                    ns = COUNT_NT;
                    load = 1;
                    shift_en = 0;
                    serOutValid = 1;
                end
                else begin
                    ns = COUNT_8;
                    load = 1'b0;
                    shift_en = 1'b1;
                    S = 1'b0;
                end

            end
            COUNT_NT: begin
                ns = co ? START_SEQUENCE : COUNT_NT;
                serOutValid = 1;
                shift_en = 0;
                load = 0;
            end
            
            default: ns = START_SEQUENCE;
        endcase
        
    end

    always @(posedge clk, posedge rst) begin
        if (rst)
            ps <= START_SEQUENCE;
        else
            ps <= ns;
    end
endmodule