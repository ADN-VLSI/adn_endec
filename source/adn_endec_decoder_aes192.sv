/*

# Purpose
This module implements AES-192 decryption for one 128-bit input block using a 192-bit key.

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

module adn_endec_decoder_aes192 (
    input  logic [127:0] ciphertext_in,  // 128-bit ciphertext input block
    input  logic [191:0] key_in,         // 192-bit AES key
    output logic [127:0] plaintext_out   // 128-bit decrypted output block
);

  `include "adn_endec_aes_functions.svh"

  logic [255:0] key_ext;

  always_comb begin
    key_ext = 256'h0;
    key_ext[255-:192] = key_in;
    aes_decrypt_block(ciphertext_in, key_ext, 6, 12, plaintext_out);
  end

endmodule

