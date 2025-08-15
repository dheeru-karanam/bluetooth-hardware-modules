module XOR2(input Y1,
	input [4:0] C,
	output [4:0] XOR2_out);
	assign XOR2_out[4] = C[4]^Y1;
	assign XOR2_out[3] = C[3]^Y1;
	assign XOR2_out[2] = C[2]^Y1;
	assign XOR2_out[1] = C[1]^Y1;
	assign XOR2_out[0] = C[0]^Y1;
endmodule