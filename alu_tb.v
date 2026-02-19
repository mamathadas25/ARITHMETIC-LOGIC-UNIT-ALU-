`timescale 1ns/1ps

module simple_alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [1:0] sel;
wire [3:0] result;

simple_alu uut(
    .A(A),
    .B(B),
    .sel(sel),
    .result(result)
);

initial begin
    $monitor("A=%b B=%b sel=%b result=%b", A, B, sel, result);

    A = 4'b0101; B = 4'b0011;

    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    $stop;
end

endmodule
