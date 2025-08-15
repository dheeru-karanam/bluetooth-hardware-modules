module Perm(
	input [4:0] perm_in_5,
	input [13:0] perm_in_13,
	output [4:0] perm_out
	);
	wire [4:0] ind_perm_out;
		butterfly(perm_in_13[13], perm_in_5[1], perm_in_5[2], perm_in_5[1], perm_in_5[2]);
		butterfly(perm_in_13[12], perm_in_5[0], perm_in_5[3], perm_in_5[0], perm_in_5[3]);

		butterfly(perm_in_13[11], perm_in_5[1], perm_in_5[3], perm_in_5[1], perm_in_5[3]);
		butterfly(perm_in_13[10], perm_in_5[2], perm_in_5[4], perm_in_5[2], perm_in_5[4]);

		butterfly(perm_in_13[9], perm_in_5[0], perm_in_5[3], perm_in_5[0], perm_in_5[3]);
		butterfly(perm_in_13[8], perm_in_5[1], perm_in_5[4], perm_in_5[1], perm_in_5[4]);

		butterfly(perm_in_13[7], perm_in_5[3], perm_in_5[4], perm_in_5[3], perm_in_5[4]);
		butterfly(perm_in_13[6], perm_in_5[0], perm_in_5[2], perm_in_5[0], perm_in_5[2]);

		butterfly(perm_in_13[5], perm_in_5[1], perm_in_5[3], perm_in_5[1], perm_in_5[3]);
		butterfly(perm_in_13[4], perm_in_5[0], perm_in_5[4], perm_in_5[0], perm_in_5[4]);

		butterfly(perm_in_13[3], perm_in_5[3], perm_in_5[4], perm_in_5[3], perm_in_5[4]);
		butterfly(perm_in_13[2], perm_in_5[1], perm_in_5[2], perm_in_5[1], perm_in_5[2]);

		butterfly(perm_in_13[1], perm_in_5[2], perm_in_5[3], perm_out[2], perm_out[3]);
		butterfly(perm_in_13[0], perm_in_5[0], perm_in_5[1], perm_out[0], perm_out[1]);
		assign perm_out[4] = perm_in_5[4];
endmodule
