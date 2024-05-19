`timescale 1ns / 1ps
module row_tb;
	// Inputs
	reg [23:0] min;
	reg [23:0] ppi;
	reg q;
	// Outputs
	wire [23:0] ppo;
	wire [23:0] mout;
	wire sum;
	// Instantiate the Unit Under Test (UUT)
	row uut (.ppo(ppo), .mout(mout), .sum(sum), 
		.min(min), .ppi(ppi), .q(q));
	initial begin
		// Initialize Inputs
	 min = 24'b110011001100110011001100; // Example value for min
    ppi = 24'b101010101010101010101010; // Example value for ppi
    q = 1'b1;
		#100;
	end
endmodule
