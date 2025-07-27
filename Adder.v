module Adder(
	input [4:0] adder_in_1,
	input [4:0] adder_in_2,
	input [4:0] adder_in_3,
	output reg [4:0] adder_out);

	always @(*) begin
		adder_out <= adder_in_1 + adder_in_2 + adder_in_3;	
	end
endmodule
