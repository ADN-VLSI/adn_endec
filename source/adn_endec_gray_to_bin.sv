module adn_endec_gray_to_bin #(
    parameter int WIDTH = 8  // Width of the Gray/binary code
) (
    input  logic [WIDTH-1:0] gray_i,  // Gray code input
    output logic [WIDTH-1:0] bin_o    // Binary code output
);

  // Gray to Binary conversion:
  // - MSB of binary = MSB of Gray
  // - Each subsequent binary bit = XOR of next higher binary bit and current Gray bit
  //   bin[i] = bin[i+1] ^ gray[i]
  always_comb begin
    bin_o[WIDTH-1] = gray_i[WIDTH-1];                    // MSB is the same
    for (int i = WIDTH - 2; i >= 0; i--) begin           // Process remaining bits
      bin_o[i] = bin_o[i+1] ^ gray_i[i];                 // XOR with next higher binary bit
    end
  end

endmodule
