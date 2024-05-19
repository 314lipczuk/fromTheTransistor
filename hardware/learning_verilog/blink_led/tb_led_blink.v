module tb_led_blink();

reg clk;
wire led;

led_blink uut (
	.clk(clk),
	.led(led)
);

always begin
	#5 clk = ~clk;
end

initial begin
	clk = 0;
	$monitor("Time %0t | LED: %d", $time, led);
	#2000000020;
	$finish;
end
endmodule
