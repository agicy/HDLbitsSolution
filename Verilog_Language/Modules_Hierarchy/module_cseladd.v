module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire sel;
    add16 add_l( .a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(sel) );
    wire[31:16] sumh0, sumh1;
    add16 add_h0( .a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(sumh0), .cout() );
    add16 add_h1( .a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(sumh1), .cout() );
    always @(*) begin
        case (sel)
            1'b0: sum[31:16] = sumh0;
            1'b1: sum[31:16] = sumh1;
        endcase
    end
endmodule
