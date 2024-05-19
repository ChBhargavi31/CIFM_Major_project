module Feynmangate (
  input a,
  input b,
  output o1,
  output o2
);
  assign o1 = a;
  
  assign o2 = a^b;
endmodule
