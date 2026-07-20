module adn_endec_bin_to_gray #(
    parameter int WIDTH = 8  // Width of the binary/Gray code
) (
    input  logic [WIDTH-1:0] bin_i,  // Binary input
    output logic [WIDTH-1:0] gray_o  // Gray code output
);

  // Binary to Gray code conversion: G = B ^ (B >> 1)
  // Each Gray code bit is XOR of corresponding binary bit and the next higher bit
  always_comb gray_o = bin_i ^ (bin_i >> 1);

endmodule
