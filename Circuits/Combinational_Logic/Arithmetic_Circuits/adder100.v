module top_module(
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    wire[99:0] carry;
    generate
        genvar i;
        full_adder add0( .a(a[0]), .b(b[0]), .cin(cin), .cout(carry[0]), .sum(sum[0]) );
        for (i = 1; i <= 99 ; i = i + 1) begin : full_adder
            full_adder addi( .a(a[i]), .b(b[i]), .cin(carry[i - 1]), .cout(carry[i]), .sum(sum[i]));
        end
    endgenerate
    assign cout = carry[99];
endmodule

module full_adder(
    input a, b, cin,
    output cout, sum );
    assign cout = a & b | a & cin | b & cin;
    assign sum = a ^ b ^ cin;
endmodule
