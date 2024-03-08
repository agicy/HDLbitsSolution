module top_module ( input clk, input d, output q );
    wire tmp1, tmp2;
    my_dff dff1( .clk(clk), .d(d), .q(tmp1) );
    my_dff dff2( .clk(clk), .d(tmp1), .q(tmp2) );
    my_dff dff3( .clk(clk), .d(tmp2), .q(q) );
endmodule
