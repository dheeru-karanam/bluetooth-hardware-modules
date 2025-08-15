module hopEngine(
	input [4:0] x,
	input [4:0] A,
	input [3:0] B,
	input [4:0] C,
	input [8:0] D,
	input [6:0] E,
	input [6:0] F,
	input Y1,
	input [4:0] Y2,
	output [6:0] hopOut);
	wire [4:0] adder3_out;
	wire [4:0] xor1_out;
	wire [4:0] xor2_out;
	wire [4:0] perm_out;
	wire [13:0] perm_in;
	wire [6:0] adder4_out;
	Adder(A, X, adder3_out);	
	XOR(adder3_out, B, xor1_out);
	XOR2(Y1, C, xor2_out);
	assign perm_in[8:0] = D;
	assign perm_in[13:9] = xor2_out;
	Perm(xor1_out, perm_in, perm_out);
	Adder2(E, F, adder_out, Y2, adder4_out);
	mod(adder4_out, hopOut);
endmodule