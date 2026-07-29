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
module adn_endec_encoder_manchester #(
    parameter integer DATA_W = 8,
    parameter integer INVERT_POLARITY = 0
) (
    input logic [DATA_W-1:0] data_in,
    output logic [(2*DATA_W)-1:0] code_out
);

  // @foez-bhai, add comments to the functional blocks, signals, and submodules

  //////////////////////////////////////////////////////////////////////////////////////////////////
  // LOCALPARAMS GENERATED
  //////////////////////////////////////////////////////////////////////////////////////////////////

  localparam [1:0] ZERO_CODE = INVERT_POLARITY ? 2'b10 : 2'b01;
  localparam [1:0] ONE_CODE = INVERT_POLARITY ? 2'b01 : 2'b10;

  //////////////////////////////////////////////////////////////////////////////////////////////////
  // SIGNALS
  //////////////////////////////////////////////////////////////////////////////////////////////////

  integer bit_idx;

  //////////////////////////////////////////////////////////////////////////////////////////////////
  // ASSIGNMENTS
  //////////////////////////////////////////////////////////////////////////////////////////////////

  always_comb begin
    code_out = {((2 * DATA_W)) {1'b0}};

    for (bit_idx = 0; bit_idx < DATA_W; bit_idx = bit_idx + 1) begin
      if (data_in[bit_idx]) begin
        code_out[(2*bit_idx)+1] = ONE_CODE[1];
        code_out[(2*bit_idx)]   = ONE_CODE[0];
      end else begin
        code_out[(2*bit_idx)+1] = ZERO_CODE[1];
        code_out[(2*bit_idx)]   = ZERO_CODE[0];
      end
    end
  end

endmodule
