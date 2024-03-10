module top_module(
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    generate
        genvar i;
        full_adder add0( .a(a[0]), .b(b[0]), .cin(cin), .cout(cout[0]), .sum(sum[0]) );
        for (i = 1; i <= 2 ; i = i + 1) begin : full_adder
            full_adder addi( .a(a[i]), .b(b[i]), .cin(cout[i - 1]), .cout(cout[i]), .sum(sum[i]));
        end
    endgenerate
endmodule

module full_adder(
    input a, b, cin,
    output cout, sum );
    assign cout = a & b | a & cin | b & cin;
    assign sum = a ^ b ^ cin;
endmodule
