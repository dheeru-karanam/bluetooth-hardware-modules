module Adder(
	input [4:0] adder_in_1,
	input [4:0] adder_in_2,
	output reg [4:0] adder_out);

	always @(*) begin
		adder_out <= adder_in_1 + adder_in_2 ;	
	end
endmodule
