`include "shifter.v"
module shiftertb;
    reg [15:0] A; 
    reg [3:0] S; 
    wire [15:0] Y;

    leftshifter shift0(A, S, Y);// change left to right for shifting bits in right direction
    initial
    begin
        A = 16'b0000101011111010;
        S = 4'b0110;
    end

    initial
        $monitor("A = %b, S = %b, Y = %b", A, S, Y);
endmodule