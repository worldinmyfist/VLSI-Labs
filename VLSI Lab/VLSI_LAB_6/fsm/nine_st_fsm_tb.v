module nine_st_fsm_tb;

	// Inputs
	reg CLK;
	reg RESET;
	reg ONE;
	reg ZERO;

	// Outputs
	wire OUT;

	// Instantiate the Unit Under Test (UUT)
	nine_st_fsm uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.ONE(ONE), 
		.ZERO(ZERO), 
		.OUT(OUT)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 0;
		ONE = 0;
		ZERO = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		RESET = 0;
        
		// Add stimulus here
		#2;
		ZERO = 1;
		#2;
		ZERO = 0;
		ONE = 1;
		#2;
		ONE = 0;
		#2;
		ZERO = 1;
		ONE = 1;
		#5;
		RESET = 1;
		#2;
		RESET = 0;
		
		#2;
		ONE = 0;
		ZERO = 0;
		#2;
		ONE = 1;
		#2;
		ZERO = 1;
		#2;
		ZERO = 0;
		#2;
		ZERO = 1;
		#2;
		ONE = 0;
		#2;
		ZERO = 0;
		#2;
		ONE = 1;
		#2;
		ONE = 0;
	end
   always #1 CLK = ~CLK;
endmodule

