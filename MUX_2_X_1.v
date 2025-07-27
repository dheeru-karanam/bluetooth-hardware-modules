module MUX_2_X_1(
	input A,
	input B,
	input sel,
	output reg out
	);
	always @(*) begin
		case(sel)
			1'b0: out <= A;
			1'b1: out <= B;
		endcase	
	end
endmodule
