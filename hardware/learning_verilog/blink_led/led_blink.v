module led_blink (
	input clk,
	output reg led 
);

reg [31:0]count;

always @(posedge clk) begin
	// clock at how much?
	// the testbench clock is running a cycle every 5ns
	// so that's 100,000,000 = 100 MHz
	// 
	if(count == 99999999) begin
		// so on the second it should switch the led
		count <= 0;
		led <= ~led;
	end else begin
		count <= count + 1;
	end
end
initial begin
	count = 0;
	led = 0;
end
endmodule


