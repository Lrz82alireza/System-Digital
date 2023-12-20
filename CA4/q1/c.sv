module tb_c();
`timescale 1ns/1ns

logic SS, RR, PSS, PRR;
wire wq2, wqb2, wq3, wqb3;

SR_2_input L2i(SS, RR, wq2, wqb2);
SR_3_input L3i(SS, PSS, RR, PRR, wq3, wqb3);


initial {SS, RR, PSS, PRR} = 4'b1011;

// initial repeat (8) #100 {SS, RR} += 1'b1;
initial begin
    #100 {SS, RR} = 2'b01;
    #100 {SS, RR} = 2'b11;
    #100 {SS, RR} = 2'b10;
    #100 {SS, RR} = 2'b00;
    #100 $stop;
end


endmodule