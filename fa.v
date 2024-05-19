//`include "ha.v"
module fa (input a,input b,input cin,
output sum,output carry);
wire h1_sum, h1_carry, h2_carry;
ha half_adder1 (.a(a),.b(b),
 .sum(h1_sum),.carry(h1_carry));
ha half_adder2 (.a(h1_sum),.b(cin),
 .sum(sum),.carry(h2_carry));
Ror carry_or_gate (
        .a(h1_carry), .b(h2_carry),
        .o1(temp_carry), .o2(carry)
    );
//assign carry = h1_carry | h2_carry;
endmodule
