module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
);
    wire[7:0] carry;
    generate
        genvar i;
        full_adder add0( .a(a[0]), .b(b[0]), .cin(1'b0), .cout(carry[0]), .sum(s[0]) );
        for (i = 1; i <= 7 ; i = i + 1) begin : full_adder
            full_adder addi( .a(a[i]), .b(b[i]), .cin(carry[i - 1]), .cout(carry[i]), .sum(s[i]));
        end
    endgenerate
    assign overflow = (~ (a[7] ^ b[7])) & (a[7] ^ s[7]);
endmodule

module full_adder(
    input a, b, cin,
    output cout, sum );
    assign cout = a & b | a & cin | b & cin;
    assign sum = a ^ b ^ cin;
endmodule
