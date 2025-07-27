module butterfly(
	input sel,
	input A,
	input B,
	output A_out,
	output B_out
	);
	MUX_2_X_1(.A(A), .B(B), .sel(sel), .out(A_out));
	MUX_2_X_1(.A(B), .B(A), .sel(sel), .out(B_out));
endmodule
