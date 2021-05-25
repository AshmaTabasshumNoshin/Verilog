module decoder(
input wire [1:0] a,
input wire en,
output reg [3:0] out
);
always @(*) begin
    if (en==1'b0)
    out=4'b0000;
    else if (a==2'b00)
    out=4'b0001;
     else if (a==2'b01)
    out=4'b0010;
     else if (a==2'b10)
    out=4'b0100;
    else out=4'b1000;

    
end
endmodule
