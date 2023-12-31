module comprator_8 (input [7:0] a , b, input l , g , e , output lt , eq , gt);

   wire [8:0] GT , EQ , LT;

    assign {GT[8] , EQ[8] , LT[8]} = {g , e , l};
    genvar i;
    generate
        for(i = 0 ; i < 8 ; i = i + 1)begin
            comprator_2_bit comp({a[i+1] , a[i]} , {b[i+1],b[i]} , LT[i+2] , GT[i+2] , EQ[i+2] , LT[i] , EQ[i] , GT[i]);
        end
    endgenerate
    assign {lt , eq , gt} = {LT[0] , EQ[0] , GT[0]}; 
endmodule