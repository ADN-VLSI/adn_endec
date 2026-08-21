/*

# Purpose
This module implements AES-256 encryption for one 128-bit input block using a 256-bit key.

## Usage
Drive `plaintext_in` and `key_in`; the encrypted 128-bit result is produced on `ciphertext_out`.

| REVISION | DATE       | AUTHOR          | DESCRIPTION                                            |
|----------|------------|-----------------|--------------------------------------------------------|
| 1.0      | 2026-08-21 | Foez Ahmed      | Stable release                                         |

Author : Foez Ahmed (foez.official@gmail.com)
This file is part of ADN-VLSI/adn_endec
Copyright (c) 2026 ADN Semiconductors
Licensed under the MIT License
See LICENSE file in the project root for full license information

*/

module adn_endec_encoder_aes256 (
    input  logic [127:0] plaintext_in,   // 128-bit plaintext input block
    input  logic [255:0] key_in,         // 256-bit AES key
    output logic [127:0] ciphertext_out  // 128-bit encrypted output block
);

  `include "adn_endec_aes_functions.svh"

  logic [1919:0] round_keys;

  always_comb begin
    aes_expand_key(key_in, 8, 14, round_keys);
  end

  always_comb begin
    aes_encrypt_block_round_keys(plaintext_in, round_keys, 14, ciphertext_out);
  end

endmodule

