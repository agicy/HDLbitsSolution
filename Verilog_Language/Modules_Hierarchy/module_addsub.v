module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire carry;
    wire[31:0] tmp = b ^ { 32 {sub} };
    add16 add_l( .a(a[15:0]), .b(tmp[15:0]), .cin(sub), .sum(sum[15:0]), .cout(carry) );
    add16 add_h( .a(a[31:16]), .b(tmp[31:16]), .cin(carry), .sum(sum[31:16]), .cout() );
endmodule
