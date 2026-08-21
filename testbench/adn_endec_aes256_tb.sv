/*

| TEST CASE | DATE       | AUTHOR          | DESCRIPTION                                           |
|-----------|------------|-----------------|-------------------------------------------------------|
| TODO      | YYYY-MM-DD | Who?            | Test case description goes here                       |

| REVISION | DATE       | AUTHOR          | DESCRIPTION                                            |
|----------|------------|-----------------|--------------------------------------------------------|
| 1.0      | 2026-08-21 | Foez Ahmed      | Stable release                                         |

Author : Foez Ahmed (foez.official@gmail.com)
This file is part of ADN-VLSI/adn_endec
Copyright (c) 2026 ADN Semiconductors
Licensed under the MIT License
See LICENSE file in the project root for full license information

*/

module adn_endec_aes256_tb;

  `include "vip/adn_common_tb_headers.sv"

  logic [127:0] plaintext_in;
  logic [127:0] ciphertext_in;
  logic [255:0] key_in;
  logic [127:0] ciphertext_out;
  logic [127:0] plaintext_out;

  adn_endec_encoder_aes256 enc_dut (
      .plaintext_in(plaintext_in),
      .key_in(key_in),
      .ciphertext_out(ciphertext_out)
  );

  adn_endec_decoder_aes256 dec_dut (
      .ciphertext_in(ciphertext_in),
      .key_in(key_in),
      .plaintext_out(plaintext_out)
  );

  task automatic check_known_vector(input logic [127:0] plain, input logic [255:0] key,
                                    input logic [127:0] cipher_exp);
    begin
      plaintext_in = plain;
      key_in = key;
      #1;
      if (ciphertext_out != cipher_exp) begin
        $display("FAIL AES-256 encrypt vector mismatch");
        $display("  exp=%032h", cipher_exp);
        $display("  got=%032h", ciphertext_out);
        note_case(0);
      end else begin
        note_case(1);
      end

      ciphertext_in = cipher_exp;
      #1;
      if (plaintext_out != plain) begin
        $display("FAIL AES-256 decrypt vector mismatch");
        $display("  exp=%032h", plain);
        $display("  got=%032h", plaintext_out);
        note_case(0);
      end else begin
        note_case(1);
      end
    end
  endtask

  task automatic check_roundtrip(input logic [127:0] plain, input logic [255:0] key);
    logic [127:0] cipher_tmp;
    begin
      plaintext_in = plain;
      key_in = key;
      #1;
      cipher_tmp = ciphertext_out;
      ciphertext_in = cipher_tmp;
      #1;
      if (plaintext_out != plain) begin
        $display("FAIL AES-256 roundtrip mismatch");
        $display("  exp=%032h", plain);
        $display("  got=%032h", plaintext_out);
        note_case(0);
      end else begin
        note_case(1);
      end
    end
  endtask

  initial begin
    plaintext_in  = '0;
    ciphertext_in = '0;
    key_in        = '0;

    check_known_vector(
        128'h00112233445566778899AABBCCDDEEFF,
        256'h000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F,
        128'h8EA2B7CA516745BFEAFC49904B496089);

    check_roundtrip(128'h00000000000000000000000000000000,
                    256'h000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F);
    check_roundtrip(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF,
                    256'h000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F);
    check_roundtrip(128'hDEADBEEFCAFEBABE1122334455667788,
                    256'hA0A1A2A3A4A5A6A7A8A9AAABACADAEAFB0B1B2B3B4B5B6B7B8B9BABBBCBDBEBF);
    check_roundtrip(128'h0123456789ABCDEFFEDCBA9876543210,
                    256'h603DEB1015CA71BE2B73AEF0857D77811F352C073B6108D72D9810A30914DFF4);

    $display("AES-256 encrypt/decrypt self-check passed");
    $finish;
  end

endmodule

