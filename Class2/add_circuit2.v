module add_circuit_2
(
    input wire [7:0] x,
    input wire [7:0] y,
    output wire [7:0] z,
    output wire cout

);
wire [8:0] temp;
assign temp = {1'b0,x}+{1'b0,y};
assign z=temp[7:0];
assign cout=temp[8];
endmodule