module stomach
(
	clk,
	reset_n,
	activate,
	icc
);
	parameter	NUM_OF_RINGS = 9;
	parameter	ICC_PER_RING = 4;
	parameter	RING_PROPAGATION_CYCLES = 20;
	
	parameter	CYCLES_BETWEEM_ICC = RING_PROPAGATION_CYCLES / ICC_PER_RING;
	parameter	TOTAL_ICC = ICC_PER_RING * NUM_OF_RINGS;
	
	input clk, reset_n;
	input activate;
	output [TOTAL_ICC - 1:0] icc;
	
	genvar i;
	generate
		for (i = 0; i < NUM_OF_RINGS; i = i + 1)
		begin : ring
			ring #(	
				.ICC_PER_RING(ICC_PER_RING),
				.RING_PROPAGATION_CYCLES(RING_PROPAGATION_CYCLES),
				.CYCLES_BETWEEM_ICC(CYCLES_BETWEEM_ICC)
			)
			ring (
				.clk(clk),
				.reset_n(reset_n),
				.activate( (i == 0) ? activate : icc[ICC_PER_RING*i - 1]),//
				.icc(icc[ ICC_PER_RING*(i + 1) - 1 : ICC_PER_RING*i]) // 0 to 35
			);
		end 
	endgenerate
	
endmodule
