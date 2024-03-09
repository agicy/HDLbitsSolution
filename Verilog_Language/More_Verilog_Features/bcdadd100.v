module top_module(
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    wire[99:0] carry;
    bcd_fadd instance0( .a(a[3:0]), .b(b[3:0]), .cin(cin), .cout(carry[0]), .sum(sum[3:0]) );
    generate
        genvar i;
        for (i = 1; i < 100; i = i + 1) begin : bcd_fadd
            bcd_fadd instancei( .a(a[4 * i + 3 : 4 * i]), .b(b[4 * i + 3 : 4 * i]), .cin(carry[i-1]), .cout(carry[i]), .sum(sum[4 * i + 3 : 4 * i]) );
        end
    endgenerate
    assign cout = carry[99];
endmodule
