module baud_rate_gen (
	input wire clk,
	output tick
);

parameter BAUD_RATE 9000; // 9000 b/s
parameter CLOCK_FREQ = 50_000_000; // 50 MHz
localparam CYCLES_PER_BIT = (1_000_000_000 / BAUD_RATE) * (1 / (1_000_000_000 / CLOCK_FREQ)); // for current params, about 5555
reg [15:0]cycle_counter;

always @(posedge clk) begin
	if( cycle_counter ==  )
end

endmodule
