module dff(
		input d,
		input rstn,
		input clk,
		output q
	);

	reg q;
	always @ (posedge clk) begin
		if (!rstn) q <= 0;
		else q <= d;
	end
endmodule
