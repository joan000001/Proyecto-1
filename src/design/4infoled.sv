// Code your design here
module display_7bits_leds (
  input  logic [6:0] coregido,
    output logic [6:0] led
);
    always_comb begin
        led[0] = coregido[0];
        led[1] = coregido[1];
        led[2] = coregido[2];
        led[3] = coregido[3];
        led[4] = coregido[4];
        led[5] = coregido[5];
        led[6] = coregido[6];
    end
endmodule