/*

@foez-bhai, write the purpose of this module in markdown format here. This is already in multi-line comment, so don't add any additional comment syntax.

@foez-bhai, describe the usage of this module in markdown format here. This is already in multi-line comment, so don't add any additional comment syntax.

| REVISION | DATE       | AUTHOR          | DESCRIPTION                                            |
|----------|------------|-----------------|--------------------------------------------------------|
| 1.0      | 2026-07-29 | Foez Ahmed      | Stable release                                         |

Author : Foez Ahmed (foez.official@gmail.com)
This file is part of ADN-VLSI/adn_endec
Copyright (c) 2026 ADN Semiconductors
Licensed under the MIT License
See LICENSE file in the project root for full license information

*/

// @foez-bhai, add comments to the parameters, ports
module adn_endec_encoder_8b10b (
    input  logic [7:0] data_in,
    input  logic       is_k,
    input  logic       rd_in,
    output logic [9:0] code_out,
    output logic       rd_out,
    output logic       code_err
);

  // @foez-bhai, add comments to the functional blocks, signals, and submodules

  `include "adn_endec_block_linecode_functions.svh"

  //////////////////////////////////////////////////////////////////////////////////////////////////
  // SIGNALS
  //////////////////////////////////////////////////////////////////////////////////////////////////

  logic       enc_valid;
  logic [9:0] enc_code;
  logic       enc_rd_out;

  //////////////////////////////////////////////////////////////////////////////////////////////////
  // ASSIGNMENTS
  //////////////////////////////////////////////////////////////////////////////////////////////////

  always_comb begin
    encode_symbol(data_in, is_k, rd_in, enc_valid, enc_code, enc_rd_out);
    code_out = enc_code;
    rd_out   = enc_rd_out;
    code_err = !enc_valid;
  end

endmodule
