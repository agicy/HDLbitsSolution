module top_module (
    input clk,
    input in,
    output out);
    wire d, q;
    assign d = q ^ in;
    always @(posedge clk) begin
        q = d;
    end
    assign out = q;
endmodule
