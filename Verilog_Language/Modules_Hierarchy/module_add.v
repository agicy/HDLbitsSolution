module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire carry;
    add16 add_l( .a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(carry) );
    add16 add_h( .a(a[31:16]), .b(b[31:16]), .cin(carry), .sum(sum[31:16]), .cout() );
endmodule
