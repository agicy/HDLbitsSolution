module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    wire mid, d, q;
    assign mid = E ? w : q;
    assign d = L ? R : mid;
    always @(posedge clk) begin
        q = d;
    end
    assign Q = q;
endmodule
