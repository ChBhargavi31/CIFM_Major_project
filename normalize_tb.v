`timescale 1ns / 1ps
module normalize_tb;
	// Inputs
	reg [47:0] prdt;
	// Outputs
	wire [22:0] adj_mantissa;
	wire norm_flag;
	// Instantiate the Unit Under Test (UUT)
	normalize uut (
		.adj_mantissa(adj_mantissa), 
		.norm_flag(norm_flag), 
		.prdt(prdt)
	);
	initial begin
		// Initialize Inputs
		prdt = 48'b101101010010110110010101101010101100110101011001;
		#200;
	end
endmodule

