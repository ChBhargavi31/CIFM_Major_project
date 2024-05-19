module normalize(
output wire [22:0] adj_mantissa, //adjusted mantissa (after extracting out required part)
output wire norm_flag, input wire [47:0] prdt ); //returns norm =1 if normalization needs to be done. 
and (norm_flag, prdt[47], 1'b1); 
wire [22:0] results[1:0];
assign results[0] = prdt [45:23];
assign results[1] = prdt [46:24];
assign adj_mantissa = {results[norm_flag+0]};
endmodule
