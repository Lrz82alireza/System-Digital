module main_state (input clk, rst, co, serIn, output load, S, shift_en, counter_en, serOutValid);
    logic [2:0] ps, ns;
    logic start;
    parameter [2:0] START_SEQUENCE = 3'd0, COUNT_8 = 3'd1, C = 3'd2, D = 3'd3, E = 3'd4, F = 3'd5, G = 3'd6, H = 3'd7;

    seq_det_pre start_seq(clk, rst, serIn, start);

    always @(ps, co, start) begin
        ns = START_SEQUENCE;
        case (ps)
            START_SEQUENCE: begin
                ns = start ? COUNT_8 : START_SEQUENCE;
                serOutValid = 1'b0;
                S = 1'b1;
                load = 1'b1;
            end 
            
            COUNT_8: begin
                ns = co ? C ? COUNT_8;
                shift_en = 1'b1;
                S = 1'b0;
                load = 1'b0;
            end

            

            default: 
        endcase
        
    end
endmodule