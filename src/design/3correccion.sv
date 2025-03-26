// Code your design here
module correccion_error(
  input  logic [6:0] dataRaw,
  input  logic [2:0] sindrome,
  output logic [6:0] correccion,
  output logic [3:0] dataCorrecta
);
  always_comb begin
    correccion = dataRaw;
    if (sindrome != 3'b000) begin
        case (sindrome)
            3'b001: correccion[0] = ~correccion[0]; // Bit 1
            3'b010: correccion[1] = ~correccion[1]; // Bit 2
            3'b011: correccion[2] = ~correccion[2]; 
            3'b100: correccion[3] = ~correccion[3];
            3'b101: correccion[4] = ~correccion[4];
            3'b110: correccion[5] = ~correccion[5];
            3'b111: correccion[6] = ~correccion[6];
            default: /* no action */;
        endcase
    end
    
    dataCorrecta[3] = correccion[6];
    dataCorrecta[2] = correccion[5];
    dataCorrecta[1] = correccion[4];
    dataCorrecta[0] = correccion[2];
  end
endmodule