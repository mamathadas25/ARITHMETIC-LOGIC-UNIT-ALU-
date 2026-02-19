module alu_tb;
    reg [3:0] A, B;
    reg [2:0] opcode;
    wire [3:0] ALU_Out;

    // Instantiate the ALU
    alu uut (
        .A(A), 
        .B(B), 
        .opcode(opcode), 
        .ALU_Out(ALU_Out)
    );

    initial begin
        // Display headers for the simulation output
        $display("A | B | Op | Result");
        $monitor("%b | %b | %b | %b", A, B, opcode, ALU_Out);

        // Test Addition
        A = 4'b0010; B = 4'b0001; opcode = 3'b000; #10;
        
        // Test Subtraction
        A = 4'b0110; B = 4'b0010; opcode = 3'b001; #10;
        
        // Test AND
        A = 4'b1010; B = 4'b1100; opcode = 3'b010; #10;

        $finish; // End simulation
    end
endmodule
