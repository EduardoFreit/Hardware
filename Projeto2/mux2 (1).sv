module mux2 #(parameter W = 32) (input logic [W-1:0] primeiro, segundo, input logic selecao, output logic [W-1:0] saida);
	always_comb begin
		case (selecao)
			1'b0: saida = primeiro;
			1'b1: saida = segundo;
			default: saida = primeiro;
		endcase
	end
endmodule: mux2