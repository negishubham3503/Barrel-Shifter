module mux16to1(out, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, S3, S2, S1, S0);
output reg out;
input  A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, S3, S2, S1, S0;
always@(S3, S2, S1, S0) begin
    if (S3 == 0 && S2 == 0 && S1 == 0 && S0 == 0)
        assign out = A0;
    else if (S3 == 0 && S2 == 0 && S1 == 0 && S0 == 1)
        assign out = A1;
    else if (S3 == 0 && S2 == 0 && S1 == 1 && S0 == 0)
        assign out = A2;
    else if (S3 == 0 && S2 == 0 && S1 == 1 && S0 == 1)
        assign out = A3;
    else if (S3 == 0 && S2 == 1 && S1 == 0 && S0 == 0)
        assign out = A4;
    else if (S3 == 0 && S2 == 1 && S1 == 0 && S0 == 1)
        assign out = A5;
    else if (S3 == 0 && S2 == 1 && S1 == 1 && S0 == 0)
        assign out = A6;
    else if (S3 == 0 && S2 == 1 && S1 == 1 && S0 == 1)
        assign out = A7;
    else if (S3 == 1 && S2 == 0 && S1 == 0 && S0 == 0)
        assign out = A8;
    else if (S3 == 1 && S2 == 0 && S1 == 0 && S0 == 1)
        assign out = A9;
    else if (S3 == 1 && S2 == 0 && S1 == 1 && S0 == 0)
        assign out = A10;
    else if (S3 == 1 && S2 == 0 && S1 == 1 && S0 == 1)
        assign out = A11;
    else if (S3 == 1 && S2 == 1 && S1 == 0 && S0 == 0)
        assign out = A12;
    else if (S3 == 1 && S2 == 1 && S1 == 0 && S0 == 1)
        assign out = A13;
    else if (S3 == 1 && S2 == 1 && S1 == 1 && S0 == 0)
        assign out = A14;
    else
        assign out = A15;
end
endmodule