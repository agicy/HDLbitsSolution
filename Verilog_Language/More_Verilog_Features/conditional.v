module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);
    wire tmp1, tmp2;
    assign tmp1 = (a < b) ? a : b;
    assign tmp2 = (c < d) ? c : d;
    assign min = (tmp1 < tmp2) ? tmp1 : tmp2;
endmodule
