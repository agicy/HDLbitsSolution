module top_module(
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );
    integer i;
    always @(*) begin
        for (i = 0; i <= 2; i = i + 1) begin
            out_both[i] = in[i] & in[i + 1];
        end
        for (i = 1; i <= 3; i = i + 1) begin
            out_any[i] = in[i] | in[i - 1];
        end
        for (i = 0; i <= 2; i = i + 1) begin
            out_different[i] = in[i] ^ in[i + 1];
        end
        out_different[3] = in[3] ^ in[0];
    end
endmodule
