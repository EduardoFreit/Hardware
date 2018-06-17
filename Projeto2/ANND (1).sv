module ANND (input logic PCWriteCond, ZeRo, output logic and_out);
		assign and_out = PCWriteCond & ZeRo;
endmodule: ANND