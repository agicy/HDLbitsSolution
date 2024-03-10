module top_module(
    input a, b, sel,
    output out );
    assign out = ((~ sel) & a) | (sel & b);
endmodule
