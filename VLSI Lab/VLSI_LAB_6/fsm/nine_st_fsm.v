module nine_st_fsm(CLK, RESET, ONE, ZERO, OUT);
    input CLK, RESET, ONE, ZERO;
    output OUT;
    reg [3:0] st=4'b0000;
    reg previous_input_for_zero=1, previous_input_for_one=1;
		
    always @(negedge ZERO) begin previous_input_for_zero <= 1; end
    always @(negedge ONE) begin previous_input_for_one <= 1; end
    
	assign OUT = (st == 8);
	 
    always @(posedge CLK) begin
        if (RESET == 1) begin
            st <= 0;
            previous_input_for_zero <= 0;
            previous_input_for_one <= 0;
        end
        else begin
			if (st == 4'b0000) begin 
				if (previous_input_for_zero & ZERO) begin 
					previous_input_for_zero <= 0; st <= 4'b0011; 
				end
				else if (previous_input_for_one & ONE) begin 
					previous_input_for_one <= 0; st <= 4'b0001; 
				end
			end
			else if (st == 4'b0011) begin 
				if (previous_input_for_zero & ZERO) begin 
					previous_input_for_zero <= 0; st <= 4'b0110; 
				end
				else if (previous_input_for_one & ONE) begin 
					previous_input_for_one <= 0; st <= 4'b0100; 
				end
			end
			else if (st == 4'b0001) begin 
				if (previous_input_for_zero & ZERO) begin 
					previous_input_for_zero <= 0; st <= 4'b0100; 
				end
				else if (previous_input_for_one & ONE) begin 
					previous_input_for_one <= 0; st <= 4'b0010; 
				end
			end
			else if (st == 4'b0110) begin 
				if (previous_input_for_zero & ZERO) begin 
					previous_input_for_zero <= 0; st <= 4'b0110; 
				end
				else if (previous_input_for_one & ONE) begin 
					previous_input_for_one <= 0; st <= 4'b0111; 
				end
			end
			else if (st == 4'b0100) begin 
				if (previous_input_for_zero & ZERO) begin 
					previous_input_for_zero <= 0; st <= 4'b0111; 
				end
				else if (previous_input_for_one & ONE) begin 
					previous_input_for_one <= 0; st <= 4'b0101; 
				end
			end
			else if (st == 4'b0010) begin 
				if (previous_input_for_zero & ZERO) begin 
					previous_input_for_zero <= 0; st <= 4'b0101; 
				end
				else if (previous_input_for_one & ONE) begin 
					previous_input_for_one <= 0; st <= 4'b0010; 
				end
			end
			else if (st == 4'b0111) begin 
				if (previous_input_for_zero & ZERO) begin 
					previous_input_for_zero <= 0; st <= 4'b0111; 
				end
				else if (previous_input_for_one & ONE) begin 
					previous_input_for_one <= 0; st <= 4'b1000; 
				end
			end
			else if (st == 4'b0101) begin 
				if (previous_input_for_zero & ZERO) begin 
					previous_input_for_zero <= 0; st <= 4'b1000; 
				end
				else if (previous_input_for_one & ONE) begin 
					previous_input_for_one <= 0; st <= 4'b0101; 
				end
			end
		end
    end    
endmodule


