module top_module (
    input [3:0] x,
    input [3:0] y,
    output [4:0] sum);
    wire[3:0] carry;
    generate
        genvar i;
        full_adder add0( .a(x[0]), .b(y[0]), .cin(1'b0), .cout(carry[0]), .sum(sum[0]) );
        for (i = 1; i <= 3 ; i = i + 1) begin : full_adder
            full_adder addi( .a(x[i]), .b(y[i]), .cin(carry[i - 1]), .cout(carry[i]), .sum(sum[i]));
        end
    endgenerate
    assign sum[4] = carry[3];
endmodule

module full_adder(
    input a, b, cin,
    output cout, sum );
    assign cout = a & b | a & cin | b & cin;
    assign sum = a ^ b ^ cin;
endmodule
