module XOR(
	input [4:0] xor4_in_1,
	input [3:0] xor3_in_2,
	output reg [4:0] xor_out);

	always @(*) begin
		xor_out[4] <= xor4_in_1[4];
		xor_out[3] <= xor4_in_1[3] ^ xor3_in_2[3];
		xor_out[2] <= xor4_in_1[2] ^ xor3_in_2[2];
		xor_out[1] <= xor4_in_1[1] ^ xor3_in_2[1];
		xor_out[0] <= xor4_in_1[0] ^ xor3_in_2[0];	
	end

endmodule
