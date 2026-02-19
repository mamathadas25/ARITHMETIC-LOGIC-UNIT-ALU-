module alu (
    input [3:0] A, B,      // 4-bit input data
    input [2:0] opcode,    // 3-bit control signal to choose operation
    output reg [3:0] ALU_Out // 4-bit result
);

    always @(*) begin
        case(opcode)
            3'b000: ALU_Out = A + B;       // Addition
            3'b001: ALU_Out = A - B;       // Subtraction
            3'b010: ALU_Out = A & B;       // Logical AND
            3'b011: ALU_Out = A | B;       // Logical OR
            3'b100: ALU_Out = ~(A);        // Logical NOT (on input A)
            default: ALU_Out = 4'b0000;    // Default case
        endcase
    end
endmodule
