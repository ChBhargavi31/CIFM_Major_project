`timescale 1ns / 1ps
module control_tb;
	// Inputs
	reg [31:0] inp1;
	reg [31:0] inp2;
	// Outputs
	wire [31:0] out;
	wire underflow;
	wire overflow;
	// Instantiate the Unit Under Test (UUT)
	control uut (.inp1(inp1), .inp2(inp2), .out(out), 
		.underflow(underflow), .overflow(overflow));
initial begin
$dumpfile("control_power.vcd");
	$dumpvars();
inp1 = 32'b01000010110111010110001010110010;
inp2 = 32'b01000011001001100111010110110110;
//product1 = 0 10001101 00011111111001111001010
#200;
inp1 = 32'b11010110110110100101011101000110;
inp2 = 32'b01001010101110100101110001110010;
//product2 = 1 11000100 00111101111001001000001
#200;
inp1 = 32'b01000101010100100100011110001010;
inp2= 32'b01001001101001011010001110110001;
#200;
inp1 = 32'b01000000001000000000000000000000; // 2.5 in IEEE-754 format
inp2 = 32'b01000000001000000000000000000000;#200;

	end    
endmodule

