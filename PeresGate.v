
module PeresGate (
  input a,
  input b,
  input c,
  output o1,
  output o2,
  output o3
);
  assign o1 = a;
  assign o2 = a^b;
  assign o3 = ((a&b)^c);
endmodule
