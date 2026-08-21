/*

# Purpose
This module implements AES-256 decryption for one 128-bit input block using a 256-bit key.

## Usage
Drive `ciphertext_in` and `key_in`; the decrypted 128-bit result is produced on `plaintext_out`.

| REVISION | DATE       | AUTHOR          | DESCRIPTION                                            |
|----------|------------|-----------------|--------------------------------------------------------|
| 1.0      | 2026-08-21 | Foez Ahmed      | Stable release                                         |

Author : Foez Ahmed (foez.official@gmail.com)
This file is part of ADN-VLSI/adn_endec
Copyright (c) 2026 ADN Semiconductors
Licensed under the MIT License
See LICENSE file in the project root for full license information

*/

module adn_endec_decoder_aes256 (
    input  logic [127:0] ciphertext_in,  // 128-bit ciphertext input block
    input  logic [255:0] key_in,         // 256-bit AES key
    output logic [127:0] plaintext_out   // 128-bit decrypted output block
);

  `include "adn_endec_aes_functions.svh"

  logic [1919:0] round_keys;

  always_comb begin
    aes_expand_key(key_in, 8, 14, round_keys);
  end

  always_comb begin
    aes_decrypt_block_round_keys(ciphertext_in, round_keys, 14, plaintext_out);
  end

endmodule

