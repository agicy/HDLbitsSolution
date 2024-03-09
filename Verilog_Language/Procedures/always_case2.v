// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    always @(*) begin
        case (in)
            4'h0: pos = 0;
            4'h1: pos = 0;
            4'h2: pos = 1;
            4'h3: pos = 0;
            4'h4: pos = 2;
            4'h5: pos = 0;
            4'h6: pos = 1;
            4'h7: pos = 0;
            4'h8: pos = 3;
            4'h9: pos = 0;
            4'ha: pos = 1;
            4'hb: pos = 0;
            4'hc: pos = 2;
            4'hd: pos = 0;
            4'he: pos = 1;
            4'hf: pos = 0;
            default: pos = 0;
        endcase
    end
endmodule
