`timescale 1ns / 1ps
module sign_bit_tb;
  reg [31:0] in1;
  reg [31:0] in2;
  wire sign;
  // Instantiate the sign_bit module
  sign_bit sign_bit_inst (.sign(sign),
    .in1(in1),.in2(in2));
initial begin
    in1 = 32'h00000001;
    in2 = 32'h00000002;
    #100;
    in1 = 32'hFFFFFFF0;
    in2 = 32'h00000003;
    #100;
    in1 = 32'h00000004;
    in2 = 32'hFFFFFFF5;
    #100;
    in1 = 32'hFFFFFFF6;
    in2 = 32'hFFFFFFF7;
    #100;
  end
endmodule
