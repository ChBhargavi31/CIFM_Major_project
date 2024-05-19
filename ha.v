//`include "PeresGate.v"
module ha (
  input a,
  input b,
  output sum,
  output carry
);
  wire o1, o2, o3;
  PeresGate half_adder (
    .a(a),
    .b(b),
    .c(1'b0), // c is set to 0 for the half adder
    .o1(o1),
    .o2(o2),
    .o3(o3)
  );
  assign sum = o2;
  assign carry = o3;
endmodule
