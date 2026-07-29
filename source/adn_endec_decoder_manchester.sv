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
module adn_endec_decoder_manchester #(
    parameter integer DATA_W = 8,
    parameter integer INVERT_POLARITY = 0
) (
    input  logic [(2*DATA_W)-1:0] code_in,
    output logic [    DATA_W-1:0] data_out,
    output logic                  code_err
);

  // @foez---bhai, add comments to the functional blocks, signals, and submodules

  //////////////////////////////////////////////////////////////////////////////////////////////////
  // LOCALPARAMS GENERATED
  //////////////////////////////////////////////////////////////////////////////////////////////////

  localparam [1:0] ZERO_CODE = INVERT_POLARITY ? 2'b10 : 2'b01;
  localparam [1:0] ONE_CODE = INVERT_POLARITY ? 2'b01 : 2'b10;

  //////////////////////////////////////////////////////////////////////////////////////////////////
  // SIGNALS
  //////////////////////////////////////////////////////////////////////////////////////////////////

  reg [1:0] symbol_bits;
  integer bit_idx;

  //////////////////////////////////////////////////////////////////////////////////////////////////
  // ASSIGNMENTS
  //////////////////////////////////////////////////////////////////////////////////////////////////

  always_comb begin
    data_out = {DATA_W{1'b0}};
    code_err = 1'b0;

    for (bit_idx = 0; bit_idx < DATA_W; bit_idx = bit_idx + 1) begin
      symbol_bits[1] = code_in[(2*bit_idx)+1];
      symbol_bits[0] = code_in[(2*bit_idx)];

      if (symbol_bits == ZERO_CODE) begin
        data_out[bit_idx] = 1'b0;
      end else if (symbol_bits == ONE_CODE) begin
        data_out[bit_idx] = 1'b1;
      end else begin
        data_out[bit_idx] = 1'b0;
        code_err = 1'b1;
      end
    end
  end

endmodule
