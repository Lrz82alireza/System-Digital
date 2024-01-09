module controller (input clk, rst, start, gt, lsb_counter, output logic counter_en, sel_1, sel_2, sel_x, sel_t, load_x, load_m, load_t, mode, done);
    logic [3:0] ps, ns;
    parameter [3:0] IDLE = 4'd0, INIT_X = 4'd1, LOAD_XT = 4'd2, LOAD_X2_IN_M = 4'd3, LOAD_X2 = 4'd4,
    INIT_FRAC = 4'd5, LOAD_FRAC = 4'd6, LOAD_SUB_ADD = 4'd7, LOAD_MULTI = 4'd8;   

    always @(ps, gt, lsb_counter, start) begin
        ns = IDLE;
        
        counter_en = 1'b0; load_m = 1'b0; load_x = 1'b0; load_t = 1'b0; mode = 1'b0; 

        case (ps)
            IDLE: ns = start ? INIT_X : IDLE;

            INIT_X: begin
                ns = start ? INIT_X : LOAD_XT;

                sel_x = 1'b0; sel_t = 1'b0; sel_1 = 1'b0; sel_2 = 1'b0;
                mode = 1'b0; done = 1'b0;
            end
             
            LOAD_XT: begin
                ns = LOAD_X2_IN_M;

                load_t = 1'b1; load_x = 1'b1;
            end

            LOAD_X2_IN_M: begin
                ns = LOAD_X2;

                load_m = 1'b1; sel_x = 1'b1;
            end

            LOAD_X2: begin
                ns = INIT_FRAC;

                load_x = 1'b1;
            end

            INIT_FRAC: begin
                ns = LOAD_FRAC;
            
                sel_1 = 1'b1; sel_2 = 1'b1; sel_t = 1'b0;
                counter_en = 1'b1;
            end

            LOAD_FRAC: begin
                ns = lsb_counter ? LOAD_SUB_ADD : INIT_FRAC;

                load_m = 1'b1;
            end

            LOAD_SUB_ADD: begin
                if (gt == 1'b0) begin
                    ns = IDLE;

                    done = 1'b1;
                end
                else
                    ns = LOAD_MULTI;

                load_t = 1'b1;
                sel_2 = 1'b0;
            end

            LOAD_MULTI: begin
                ns = INIT_FRAC;

                load_m = 1'b1;
                mode = ~mode;
            end

            default: ns = IDLE;
        endcase
    end

    always @(posedge clk, posedge rst) begin
        if (rst)
            ps <= IDLE;
        else
            ps <= ns;
    end

endmodule