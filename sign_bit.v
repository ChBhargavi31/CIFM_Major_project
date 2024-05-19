//`include "Feynmangate.v"
module sign_bit (output wire sign,input wire [31:0] in1,
  input wire [31:0] in2);
wire [31:0] xor_result;
  genvar i;
  generate
    for (i = 0; i < 32; i = i + 1) begin
      Feynmangate feynman_gate_inst (
        .a(in1[i]),
        .b(in2[i]),
        .o1(),
        .o2(xor_result[i])
      );
    end
  endgenerate
  assign sign = xor_result[31];
endmodule
