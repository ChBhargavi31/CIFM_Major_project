//`include "fa.v"
module block(
output wire ppo, //output partial product term
output wire cout, //output carry out
output wire mout, //output multiplicand term
input wire min, //input multiplicand term
input wire ppi, //input partial product term
input wire q, //input multiplier term
input wire cin );//input carry in 
wire temp,temp2,tempsum;
//and(temp,min,q);
ha HA_inst (.a(min),.b(q),.sum(tempsum),.carry(temp));

fa FA( .a(ppi),.b( temp),.cin(cin),.sum(ppo),.carry(cout)); 
//or (mout, min, 1'b0);
Ror Ror_inst ( .a(min), .b(1'b0),.o1(temp2),.o2(mout));
endmodule
