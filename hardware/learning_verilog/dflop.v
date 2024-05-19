module dflop
	(
		clk,
		in_1,
		in_rst,
		out_1
	);
	input clk;
	input in_1;
	input in_rst;
	output out_1;
	reg out_1;
	// impl
	always @ (posedge clk)
		begin
			if (in_rst)
				out_1 <= 1'b0;
			else
				out_1 <= in_1;
			end
endmodule

