// module declaration
module frequency_scaling (
    input clk_50M,
    output reg clk_3125KHz
);

// declaring registers
reg [3:0] counter = 0; // counts 0 to 7

initial begin
    clk_3125KHz = 0;
end

// sensitivity list -> trigger at positive edge of 50MHz clock
always @ (posedge clk_50M) begin
      counter = counter + 1;
		clk_3125KHz = counter[3];
end

endmodule