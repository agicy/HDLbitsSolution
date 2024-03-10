module top_module(
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    always @(*) begin
        f = 1'b0;
        case ({x3, x2, x1})
            3'b000: f = 1'b0;
            3'b001: f = 1'b0;
            3'b010: f = 1'b1;
            3'b011: f = 1'b1;
            3'b100: f = 1'b0;
            3'b101: f = 1'b1;
            3'b110: f = 1'b0;
            3'b111: f = 1'b1;
        endcase
    end
endmodule
