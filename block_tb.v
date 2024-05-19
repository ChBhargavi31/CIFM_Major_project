`timescale 1ns / 1ps
module block_tb;
	// Inputs
	reg min;
	reg ppi;
	reg q;
	reg cin;
	// Outputs
	wire ppo;
	wire cout;
	wire mout;
	// Instantiate the Unit Under Test (UUT)
	block uut (.ppo(ppo), .cout(cout), .mout(mout), 
	.min(min), .ppi(ppi), .q(q), .cin(cin));
	initial begin
		// Initialize Inputs
		min = 1;
		ppi = 0;
		q = 1;
		cin = 1;
		#100;
	end  
endmodule

