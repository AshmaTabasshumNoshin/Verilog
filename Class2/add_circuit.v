module add_circuit
(
    input wire x,y,cin,
    output wire z,
    output wire cout

);
wire [1:0] temp;
assign temp = {1'b0,x}+{1'b0,y}+{1'b0,cin};
assign z=temp[0];
assign cout=temp[1];
endmodule