// Code your design here
module hamming_detection (
  input logic [6:0] dataRaw,
  output logic [2:0] posError
);
  always_comb begin
    posError[0] = dataRaw[0]^dataRaw[2]^dataRaw[4]^dataRaw[6];
    posError[1] = dataRaw[1]^dataRaw[2]^dataRaw[5]^dataRaw[6];
    posError[2] = dataRaw[3]^dataRaw[4]^dataRaw[5]^dataRaw[6];
  end
endmodule