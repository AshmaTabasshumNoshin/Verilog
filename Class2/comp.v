module comp
(
    input wire x,y,
    output wire z

);
assign z = (~x)&(~y)| x&y;
endmodule