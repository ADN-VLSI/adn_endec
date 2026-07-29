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
module adn_endec_decoder_256b257b (
    input  logic [256:0] block_in,
    input  logic [ 22:0] scramble_state_in,
    output logic [255:0] payload_out,
    output logic         sync_bit_out,
    output logic [ 22:0] scramble_state_out,
    output logic         header_err
);

  // @foez-bhai, add comments to the functional blocks, signals, and submodules

  `include "adn_endec_block_linecode_functions.svh"

  //////////////////////////////////////////////////////////////////////////////////////////////////
  // ASSIGNMENTS
  //////////////////////////////////////////////////////////////////////////////////////////////////

  always_comb begin
    sync_bit_out = block_in[256];
    transform_256b257b_payload(block_in[255:0], scramble_state_in, payload_out, scramble_state_out);
    header_err = !valid_sync_bit(sync_bit_out);
  end

endmodule
