module Adder2(
	input [6:0] adder_in_1,
	input [6:0] adder_in_2,
	input [4:0] adder_in_3,
	input [4:0] adder_in_4,
	output [6:0] adder_out
);

	assign adder_out = adder_in_1 + adder_in_2 + adder_in_3 + adder_in_4;

endmodule