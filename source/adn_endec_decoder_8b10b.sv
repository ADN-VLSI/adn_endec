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
module adn_endec_decoder_8b10b (
    input  logic [9:0] code_in,
    input  logic       rd_in,
    output logic [7:0] data_out,
    output logic       is_k,
    output logic       rd_out,
    output logic       code_err,
    output logic       disparity_err
);

  // @foez-bhai, add comments to the functional blocks, signals, and submodules

  `include "adn_endec_block_linecode_functions.svh"

  //////////////////////////////////////////////////////////////////////////////////////////////////
  // SIGNALS
  //////////////////////////////////////////////////////////////////////////////////////////////////

  logic         candidate_valid;
  logic   [9:0] candidate_code;
  logic         candidate_rd_out;
  integer       candidate;

  logic         match_same_rd;
  logic         match_other_rd;
  logic   [7:0] same_data;
  logic         same_is_k;
  logic         same_rd_out;
  logic   [7:0] other_data;
  logic         other_is_k;
  logic         other_rd_out;

  //////////////////////////////////////////////////////////////////////////////////////////////////
  // ASSIGNMENTS
  //////////////////////////////////////////////////////////////////////////////////////////////////

  always_comb begin
    data_out = '0;
    is_k = 1'b0;
    rd_out = rd_in;
    code_err = 1'b1;
    disparity_err = 1'b0;

    match_same_rd = 1'b0;
    match_other_rd = 1'b0;
    same_data = '0;
    same_is_k = 1'b0;
    same_rd_out = rd_in;
    other_data = '0;
    other_is_k = 1'b0;
    other_rd_out = rd_in;

    for (candidate = 0; candidate < 256; candidate = candidate + 1) begin
      encode_symbol(candidate[7:0], 1'b0, rd_in, candidate_valid, candidate_code, candidate_rd_out);
      if (candidate_valid && (candidate_code == code_in) && !match_same_rd) begin
        match_same_rd = 1'b1;
        same_data = candidate[7:0];
        same_is_k = 1'b0;
        same_rd_out = candidate_rd_out;
      end

      encode_symbol(candidate[7:0], 1'b0, ~rd_in, candidate_valid, candidate_code,
                    candidate_rd_out);
      if (candidate_valid && (candidate_code == code_in) && !match_other_rd) begin
        match_other_rd = 1'b1;
        other_data = candidate[7:0];
        other_is_k = 1'b0;
        other_rd_out = candidate_rd_out;
      end

      if (is_valid_k(candidate[7:0])) begin
        encode_symbol(candidate[7:0], 1'b1, rd_in, candidate_valid, candidate_code,
                      candidate_rd_out);
        if (candidate_valid && (candidate_code == code_in) && !match_same_rd) begin
          match_same_rd = 1'b1;
          same_data = candidate[7:0];
          same_is_k = 1'b1;
          same_rd_out = candidate_rd_out;
        end

        encode_symbol(candidate[7:0], 1'b1, ~rd_in, candidate_valid, candidate_code,
                      candidate_rd_out);
        if (candidate_valid && (candidate_code == code_in) && !match_other_rd) begin
          match_other_rd = 1'b1;
          other_data = candidate[7:0];
          other_is_k = 1'b1;
          other_rd_out = candidate_rd_out;
        end
      end
    end

    if (match_same_rd) begin
      data_out = same_data;
      is_k = same_is_k;
      rd_out = same_rd_out;
      code_err = 1'b0;
    end else if (match_other_rd) begin
      data_out = other_data;
      is_k = other_is_k;
      rd_out = other_rd_out;
      code_err = 1'b0;
      disparity_err = 1'b1;
    end
  end

endmodule

