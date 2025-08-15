module mod(
	input [6:0] freq_in,	
	output [6:0] freq_out);
	assign freq_out = freq_in % 79;

endmodule