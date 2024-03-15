module top_module (
    input [2:0] a,
    output [15:0] q );
    always @(*) begin
        q = 16'h0000;
        case (a)
            3'o0: q = 16'h1232;
            3'o1: q = 16'haee0;
            3'o2: q = 16'h27d4;
            3'o3: q = 16'h5a0e;
            3'o4: q = 16'h2066;
            3'o5: q = 16'h64ce;
            3'o6: q = 16'hc526;
            3'o7: q = 16'h2f19;
        endcase
    end
endmodule
