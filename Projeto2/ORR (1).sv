module ORR (input logic PCWrite, and_out, output logic or_out);	
		assign or_out = PCWrite | and_out;	
endmodule: ORR