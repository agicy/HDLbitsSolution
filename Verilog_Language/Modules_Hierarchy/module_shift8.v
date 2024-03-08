module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire[7:0] tmp1, tmp2, tmp3;
    my_dff8 dff1( .clk(clk), .d(d), .q(tmp1) );
    my_dff8 dff2( .clk(clk), .d(tmp1), .q(tmp2) );
    my_dff8 dff3( .clk(clk), .d(tmp2), .q(tmp3) );
    always @(*) begin
        case (sel)
            2'b00: q = d;
            2'b01: q = tmp1;
            2'b10: q = tmp2;
            2'b11: q = tmp3;
        endcase
    end
endmodule
