`timescale 1ns / 1ps
module pm32_tb;
// Inputs
	reg [31:0] a;
	reg [31:0] b;
	// Outputs
	wire [63:0] c;
	// Instantiate the Unit Under Test (UUT)
	pm32 uut (
		.a(a), 
		.b(b), 
		.c(c)
	);
	initial begin
	$dumpfile("pm32_power.vcd");
	$dumpvars();
    a = 32'h00000001; // 1
    b = 32'h00000002; // 2
    #100;  
    a = 32'h00000064; // 100
    b = 32'h000000c8; // 200
    #100;
    a = 32'h0000ffff; // 65535
    b = 32'h0000ffff; // 65535
    #100;
    a = 32'b11010101010110010110010011001010; // 12345678
    b = 32'b01010011011001000111010100110011; // 87654321
    #100;
	 a = 32'hffffffff; // 65535
    b = 32'hffffffff; // 65535
    #100;
	end
endmodule

