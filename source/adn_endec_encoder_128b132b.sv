/*

@foez---bhai, write the purpose of this module in markdown format here. This is already in multi-line comment, so don't add any additional comment syntax.

@foez---bhai, describe the usage of this module in markdown format here. This is already in multi-line comment, so don't add any additional comment syntax.

| REVISION | DATE       | AUTHOR          | DESCRIPTION                                            |
|----------|------------|-----------------|--------------------------------------------------------|
| 1.0      | 2026-07-29 | Foez Ahmed      | Stable release                                         |

Author : Foez Ahmed (foez.official@gmail.com)
This file is part of ADN-VLSI/adn_endec
Copyright (c) 2026 ADN Semiconductors
Licensed under the MIT License
See LICENSE file in the project root for full license information

*/

// @foez---bhai, add comments to the parameters, ports
module adn_endec_encoder_128b132b (
    input  logic [127:0] payload_in,
    input  logic [  3:0] sync_header_in,
    input  logic [ 22:0] scramble_state_in,
    output logic [131:0] block_out,
    output logic [ 22:0] scramble_state_out,
    output logic         header_err
);

  // @foez---bhai, add comments to the functional blocks, signals, and submodules

  `include "adn_endec_block_linecode_functions.svh"

  //////////////////////////////////////////////////////////////////////////////////////////////////
  // SIGNALS
  //////////////////////////////////////////////////////////////////////////////////////////////////

  logic [127:0] scrambled_payload;

  //////////////////////////////////////////////////////////////////////////////////////////////////
  // ASSIGNMENTS
  //////////////////////////////////////////////////////////////////////////////////////////////////

  always_comb begin
    transform_128b132b_payload(payload_in, scramble_state_in, scrambled_payload,
                               scramble_state_out);
    block_out  = {sync_header_in, scrambled_payload};
    header_err = !valid_sync_header4(sync_header_in);
  end

endmodule
