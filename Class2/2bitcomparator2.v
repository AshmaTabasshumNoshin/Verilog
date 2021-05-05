module twobitcomptwo(
    input wire [1:0] x,y,
    output wire answer

);
wire p0,p1;
//ektar vitor arekta call kortesi
comp uut1(x[1],y[1],p0);
comp uut2(x[0],y[0],p1);
assign answer= p0 & p1;

endmodule