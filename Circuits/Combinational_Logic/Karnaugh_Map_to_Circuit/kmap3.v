module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  );
    assign out = a & c | a & d | ~ b & c | a & ~ c;
endmodule
