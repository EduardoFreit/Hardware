module complemento2 (input logic[31:0] entrada, output logic [31:0] saida );
	always_comb begin
		if (entrada[31] == 1'b1)begin
			saida = ~(entrada) + 31'd1;
		end
		else
			saida = entrada;
	end
endmodule: complemento2