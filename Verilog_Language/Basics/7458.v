module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

	wire tl1, tl2;
    assign tl1 = p2a & p2b;
    assign tl2 = p2c & p2d;
    assign p2y = tl1 | tl2;

	wire tr1, tr2;
    assign tr1 = p1a & p1b & p1c;
    assign tr2 = p1d & p1e & p1f;
    assign p1y = tr1 | tr2;

endmodule