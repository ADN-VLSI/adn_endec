function automatic logic [7:0] aes_sbox(input logic [7:0] byte_in);
  case (byte_in)
    8'h00: return 8'h63; 8'h01: return 8'h7C; 8'h02: return 8'h77; 8'h03: return 8'h7B;
    8'h04: return 8'hF2; 8'h05: return 8'h6B; 8'h06: return 8'h6F; 8'h07: return 8'hC5;
    8'h08: return 8'h30; 8'h09: return 8'h01; 8'h0A: return 8'h67; 8'h0B: return 8'h2B;
    8'h0C: return 8'hFE; 8'h0D: return 8'hD7; 8'h0E: return 8'hAB; 8'h0F: return 8'h76;
    8'h10: return 8'hCA; 8'h11: return 8'h82; 8'h12: return 8'hC9; 8'h13: return 8'h7D;
    8'h14: return 8'hFA; 8'h15: return 8'h59; 8'h16: return 8'h47; 8'h17: return 8'hF0;
    8'h18: return 8'hAD; 8'h19: return 8'hD4; 8'h1A: return 8'hA2; 8'h1B: return 8'hAF;
    8'h1C: return 8'h9C; 8'h1D: return 8'hA4; 8'h1E: return 8'h72; 8'h1F: return 8'hC0;
    8'h20: return 8'hB7; 8'h21: return 8'hFD; 8'h22: return 8'h93; 8'h23: return 8'h26;
    8'h24: return 8'h36; 8'h25: return 8'h3F; 8'h26: return 8'hF7; 8'h27: return 8'hCC;
    8'h28: return 8'h34; 8'h29: return 8'hA5; 8'h2A: return 8'hE5; 8'h2B: return 8'hF1;
    8'h2C: return 8'h71; 8'h2D: return 8'hD8; 8'h2E: return 8'h31; 8'h2F: return 8'h15;
    8'h30: return 8'h04; 8'h31: return 8'hC7; 8'h32: return 8'h23; 8'h33: return 8'hC3;
    8'h34: return 8'h18; 8'h35: return 8'h96; 8'h36: return 8'h05; 8'h37: return 8'h9A;
    8'h38: return 8'h07; 8'h39: return 8'h12; 8'h3A: return 8'h80; 8'h3B: return 8'hE2;
    8'h3C: return 8'hEB; 8'h3D: return 8'h27; 8'h3E: return 8'hB2; 8'h3F: return 8'h75;
    8'h40: return 8'h09; 8'h41: return 8'h83; 8'h42: return 8'h2C; 8'h43: return 8'h1A;
    8'h44: return 8'h1B; 8'h45: return 8'h6E; 8'h46: return 8'h5A; 8'h47: return 8'hA0;
    8'h48: return 8'h52; 8'h49: return 8'h3B; 8'h4A: return 8'hD6; 8'h4B: return 8'hB3;
    8'h4C: return 8'h29; 8'h4D: return 8'hE3; 8'h4E: return 8'h2F; 8'h4F: return 8'h84;
    8'h50: return 8'h53; 8'h51: return 8'hD1; 8'h52: return 8'h00; 8'h53: return 8'hED;
    8'h54: return 8'h20; 8'h55: return 8'hFC; 8'h56: return 8'hB1; 8'h57: return 8'h5B;
    8'h58: return 8'h6A; 8'h59: return 8'hCB; 8'h5A: return 8'hBE; 8'h5B: return 8'h39;
    8'h5C: return 8'h4A; 8'h5D: return 8'h4C; 8'h5E: return 8'h58; 8'h5F: return 8'hCF;
    8'h60: return 8'hD0; 8'h61: return 8'hEF; 8'h62: return 8'hAA; 8'h63: return 8'hFB;
    8'h64: return 8'h43; 8'h65: return 8'h4D; 8'h66: return 8'h33; 8'h67: return 8'h85;
    8'h68: return 8'h45; 8'h69: return 8'hF9; 8'h6A: return 8'h02; 8'h6B: return 8'h7F;
    8'h6C: return 8'h50; 8'h6D: return 8'h3C; 8'h6E: return 8'h9F; 8'h6F: return 8'hA8;
    8'h70: return 8'h51; 8'h71: return 8'hA3; 8'h72: return 8'h40; 8'h73: return 8'h8F;
    8'h74: return 8'h92; 8'h75: return 8'h9D; 8'h76: return 8'h38; 8'h77: return 8'hF5;
    8'h78: return 8'hBC; 8'h79: return 8'hB6; 8'h7A: return 8'hDA; 8'h7B: return 8'h21;
    8'h7C: return 8'h10; 8'h7D: return 8'hFF; 8'h7E: return 8'hF3; 8'h7F: return 8'hD2;
    8'h80: return 8'hCD; 8'h81: return 8'h0C; 8'h82: return 8'h13; 8'h83: return 8'hEC;
    8'h84: return 8'h5F; 8'h85: return 8'h97; 8'h86: return 8'h44; 8'h87: return 8'h17;
    8'h88: return 8'hC4; 8'h89: return 8'hA7; 8'h8A: return 8'h7E; 8'h8B: return 8'h3D;
    8'h8C: return 8'h64; 8'h8D: return 8'h5D; 8'h8E: return 8'h19; 8'h8F: return 8'h73;
    8'h90: return 8'h60; 8'h91: return 8'h81; 8'h92: return 8'h4F; 8'h93: return 8'hDC;
    8'h94: return 8'h22; 8'h95: return 8'h2A; 8'h96: return 8'h90; 8'h97: return 8'h88;
    8'h98: return 8'h46; 8'h99: return 8'hEE; 8'h9A: return 8'hB8; 8'h9B: return 8'h14;
    8'h9C: return 8'hDE; 8'h9D: return 8'h5E; 8'h9E: return 8'h0B; 8'h9F: return 8'hDB;
    8'hA0: return 8'hE0; 8'hA1: return 8'h32; 8'hA2: return 8'h3A; 8'hA3: return 8'h0A;
    8'hA4: return 8'h49; 8'hA5: return 8'h06; 8'hA6: return 8'h24; 8'hA7: return 8'h5C;
    8'hA8: return 8'hC2; 8'hA9: return 8'hD3; 8'hAA: return 8'hAC; 8'hAB: return 8'h62;
    8'hAC: return 8'h91; 8'hAD: return 8'h95; 8'hAE: return 8'hE4; 8'hAF: return 8'h79;
    8'hB0: return 8'hE7; 8'hB1: return 8'hC8; 8'hB2: return 8'h37; 8'hB3: return 8'h6D;
    8'hB4: return 8'h8D; 8'hB5: return 8'hD5; 8'hB6: return 8'h4E; 8'hB7: return 8'hA9;
    8'hB8: return 8'h6C; 8'hB9: return 8'h56; 8'hBA: return 8'hF4; 8'hBB: return 8'hEA;
    8'hBC: return 8'h65; 8'hBD: return 8'h7A; 8'hBE: return 8'hAE; 8'hBF: return 8'h08;
    8'hC0: return 8'hBA; 8'hC1: return 8'h78; 8'hC2: return 8'h25; 8'hC3: return 8'h2E;
    8'hC4: return 8'h1C; 8'hC5: return 8'hA6; 8'hC6: return 8'hB4; 8'hC7: return 8'hC6;
    8'hC8: return 8'hE8; 8'hC9: return 8'hDD; 8'hCA: return 8'h74; 8'hCB: return 8'h1F;
    8'hCC: return 8'h4B; 8'hCD: return 8'hBD; 8'hCE: return 8'h8B; 8'hCF: return 8'h8A;
    8'hD0: return 8'h70; 8'hD1: return 8'h3E; 8'hD2: return 8'hB5; 8'hD3: return 8'h66;
    8'hD4: return 8'h48; 8'hD5: return 8'h03; 8'hD6: return 8'hF6; 8'hD7: return 8'h0E;
    8'hD8: return 8'h61; 8'hD9: return 8'h35; 8'hDA: return 8'h57; 8'hDB: return 8'hB9;
    8'hDC: return 8'h86; 8'hDD: return 8'hC1; 8'hDE: return 8'h1D; 8'hDF: return 8'h9E;
    8'hE0: return 8'hE1; 8'hE1: return 8'hF8; 8'hE2: return 8'h98; 8'hE3: return 8'h11;
    8'hE4: return 8'h69; 8'hE5: return 8'hD9; 8'hE6: return 8'h8E; 8'hE7: return 8'h94;
    8'hE8: return 8'h9B; 8'hE9: return 8'h1E; 8'hEA: return 8'h87; 8'hEB: return 8'hE9;
    8'hEC: return 8'hCE; 8'hED: return 8'h55; 8'hEE: return 8'h28; 8'hEF: return 8'hDF;
    8'hF0: return 8'h8C; 8'hF1: return 8'hA1; 8'hF2: return 8'h89; 8'hF3: return 8'h0D;
    8'hF4: return 8'hBF; 8'hF5: return 8'hE6; 8'hF6: return 8'h42; 8'hF7: return 8'h68;
    8'hF8: return 8'h41; 8'hF9: return 8'h99; 8'hFA: return 8'h2D; 8'hFB: return 8'h0F;
    8'hFC: return 8'hB0; 8'hFD: return 8'h54; 8'hFE: return 8'hBB; 8'hFF: return 8'h16;
  endcase
endfunction

function automatic logic [7:0] aes_inv_sbox(input logic [7:0] byte_in);
  case (byte_in)
    8'h00: return 8'h52; 8'h01: return 8'h09; 8'h02: return 8'h6A; 8'h03: return 8'hD5;
    8'h04: return 8'h30; 8'h05: return 8'h36; 8'h06: return 8'hA5; 8'h07: return 8'h38;
    8'h08: return 8'hBF; 8'h09: return 8'h40; 8'h0A: return 8'hA3; 8'h0B: return 8'h9E;
    8'h0C: return 8'h81; 8'h0D: return 8'hF3; 8'h0E: return 8'hD7; 8'h0F: return 8'hFB;
    8'h10: return 8'h7C; 8'h11: return 8'hE3; 8'h12: return 8'h39; 8'h13: return 8'h82;
    8'h14: return 8'h9B; 8'h15: return 8'h2F; 8'h16: return 8'hFF; 8'h17: return 8'h87;
    8'h18: return 8'h34; 8'h19: return 8'h8E; 8'h1A: return 8'h43; 8'h1B: return 8'h44;
    8'h1C: return 8'hC4; 8'h1D: return 8'hDE; 8'h1E: return 8'hE9; 8'h1F: return 8'hCB;
    8'h20: return 8'h54; 8'h21: return 8'h7B; 8'h22: return 8'h94; 8'h23: return 8'h32;
    8'h24: return 8'hA6; 8'h25: return 8'hC2; 8'h26: return 8'h23; 8'h27: return 8'h3D;
    8'h28: return 8'hEE; 8'h29: return 8'h4C; 8'h2A: return 8'h95; 8'h2B: return 8'h0B;
    8'h2C: return 8'h42; 8'h2D: return 8'hFA; 8'h2E: return 8'hC3; 8'h2F: return 8'h4E;
    8'h30: return 8'h08; 8'h31: return 8'h2E; 8'h32: return 8'hA1; 8'h33: return 8'h66;
    8'h34: return 8'h28; 8'h35: return 8'hD9; 8'h36: return 8'h24; 8'h37: return 8'hB2;
    8'h38: return 8'h76; 8'h39: return 8'h5B; 8'h3A: return 8'hA2; 8'h3B: return 8'h49;
    8'h3C: return 8'h6D; 8'h3D: return 8'h8B; 8'h3E: return 8'hD1; 8'h3F: return 8'h25;
    8'h40: return 8'h72; 8'h41: return 8'hF8; 8'h42: return 8'hF6; 8'h43: return 8'h64;
    8'h44: return 8'h86; 8'h45: return 8'h68; 8'h46: return 8'h98; 8'h47: return 8'h16;
    8'h48: return 8'hD4; 8'h49: return 8'hA4; 8'h4A: return 8'h5C; 8'h4B: return 8'hCC;
    8'h4C: return 8'h5D; 8'h4D: return 8'h65; 8'h4E: return 8'hB6; 8'h4F: return 8'h92;
    8'h50: return 8'h6C; 8'h51: return 8'h70; 8'h52: return 8'h48; 8'h53: return 8'h50;
    8'h54: return 8'hFD; 8'h55: return 8'hED; 8'h56: return 8'hB9; 8'h57: return 8'hDA;
    8'h58: return 8'h5E; 8'h59: return 8'h15; 8'h5A: return 8'h46; 8'h5B: return 8'h57;
    8'h5C: return 8'hA7; 8'h5D: return 8'h8D; 8'h5E: return 8'h9D; 8'h5F: return 8'h84;
    8'h60: return 8'h90; 8'h61: return 8'hD8; 8'h62: return 8'hAB; 8'h63: return 8'h00;
    8'h64: return 8'h8C; 8'h65: return 8'hBC; 8'h66: return 8'hD3; 8'h67: return 8'h0A;
    8'h68: return 8'hF7; 8'h69: return 8'hE4; 8'h6A: return 8'h58; 8'h6B: return 8'h05;
    8'h6C: return 8'hB8; 8'h6D: return 8'hB3; 8'h6E: return 8'h45; 8'h6F: return 8'h06;
    8'h70: return 8'hD0; 8'h71: return 8'h2C; 8'h72: return 8'h1E; 8'h73: return 8'h8F;
    8'h74: return 8'hCA; 8'h75: return 8'h3F; 8'h76: return 8'h0F; 8'h77: return 8'h02;
    8'h78: return 8'hC1; 8'h79: return 8'hAF; 8'h7A: return 8'hBD; 8'h7B: return 8'h03;
    8'h7C: return 8'h01; 8'h7D: return 8'h13; 8'h7E: return 8'h8A; 8'h7F: return 8'h6B;
    8'h80: return 8'h3A; 8'h81: return 8'h91; 8'h82: return 8'h11; 8'h83: return 8'h41;
    8'h84: return 8'h4F; 8'h85: return 8'h67; 8'h86: return 8'hDC; 8'h87: return 8'hEA;
    8'h88: return 8'h97; 8'h89: return 8'hF2; 8'h8A: return 8'hCF; 8'h8B: return 8'hCE;
    8'h8C: return 8'hF0; 8'h8D: return 8'hB4; 8'h8E: return 8'hE6; 8'h8F: return 8'h73;
    8'h90: return 8'h96; 8'h91: return 8'hAC; 8'h92: return 8'h74; 8'h93: return 8'h22;
    8'h94: return 8'hE7; 8'h95: return 8'hAD; 8'h96: return 8'h35; 8'h97: return 8'h85;
    8'h98: return 8'hE2; 8'h99: return 8'hF9; 8'h9A: return 8'h37; 8'h9B: return 8'hE8;
    8'h9C: return 8'h1C; 8'h9D: return 8'h75; 8'h9E: return 8'hDF; 8'h9F: return 8'h6E;
    8'hA0: return 8'h47; 8'hA1: return 8'hF1; 8'hA2: return 8'h1A; 8'hA3: return 8'h71;
    8'hA4: return 8'h1D; 8'hA5: return 8'h29; 8'hA6: return 8'hC5; 8'hA7: return 8'h89;
    8'hA8: return 8'h6F; 8'hA9: return 8'hB7; 8'hAA: return 8'h62; 8'hAB: return 8'h0E;
    8'hAC: return 8'hAA; 8'hAD: return 8'h18; 8'hAE: return 8'hBE; 8'hAF: return 8'h1B;
    8'hB0: return 8'hFC; 8'hB1: return 8'h56; 8'hB2: return 8'h3E; 8'hB3: return 8'h4B;
    8'hB4: return 8'hC6; 8'hB5: return 8'hD2; 8'hB6: return 8'h79; 8'hB7: return 8'h20;
    8'hB8: return 8'h9A; 8'hB9: return 8'hDB; 8'hBA: return 8'hC0; 8'hBB: return 8'hFE;
    8'hBC: return 8'h78; 8'hBD: return 8'hCD; 8'hBE: return 8'h5A; 8'hBF: return 8'hF4;
    8'hC0: return 8'h1F; 8'hC1: return 8'hDD; 8'hC2: return 8'hA8; 8'hC3: return 8'h33;
    8'hC4: return 8'h88; 8'hC5: return 8'h07; 8'hC6: return 8'hC7; 8'hC7: return 8'h31;
    8'hC8: return 8'hB1; 8'hC9: return 8'h12; 8'hCA: return 8'h10; 8'hCB: return 8'h59;
    8'hCC: return 8'h27; 8'hCD: return 8'h80; 8'hCE: return 8'hEC; 8'hCF: return 8'h5F;
    8'hD0: return 8'h60; 8'hD1: return 8'h51; 8'hD2: return 8'h7F; 8'hD3: return 8'hA9;
    8'hD4: return 8'h19; 8'hD5: return 8'hB5; 8'hD6: return 8'h4A; 8'hD7: return 8'h0D;
    8'hD8: return 8'h2D; 8'hD9: return 8'hE5; 8'hDA: return 8'h7A; 8'hDB: return 8'h9F;
    8'hDC: return 8'h93; 8'hDD: return 8'hC9; 8'hDE: return 8'h9C; 8'hDF: return 8'hEF;
    8'hE0: return 8'hA0; 8'hE1: return 8'hE0; 8'hE2: return 8'h3B; 8'hE3: return 8'h4D;
    8'hE4: return 8'hAE; 8'hE5: return 8'h2A; 8'hE6: return 8'hF5; 8'hE7: return 8'hB0;
    8'hE8: return 8'hC8; 8'hE9: return 8'hEB; 8'hEA: return 8'hBB; 8'hEB: return 8'h3C;
    8'hEC: return 8'h83; 8'hED: return 8'h53; 8'hEE: return 8'h99; 8'hEF: return 8'h61;
    8'hF0: return 8'h17; 8'hF1: return 8'h2B; 8'hF2: return 8'h04; 8'hF3: return 8'h7E;
    8'hF4: return 8'hBA; 8'hF5: return 8'h77; 8'hF6: return 8'hD6; 8'hF7: return 8'h26;
    8'hF8: return 8'hE1; 8'hF9: return 8'h69; 8'hFA: return 8'h14; 8'hFB: return 8'h63;
    8'hFC: return 8'h55; 8'hFD: return 8'h21; 8'hFE: return 8'h0C; 8'hFF: return 8'h7D;
  endcase
endfunction

function automatic logic [7:0] aes_xtime(input logic [7:0] byte_in);
  return {byte_in[6:0], 1'b0} ^ (byte_in[7] ? 8'h1B : 8'h00);
endfunction

function automatic logic [7:0] aes_gf_mul(input logic [7:0] a, input logic [7:0] b);
  logic [7:0] aa;
  logic [7:0] bb;
  logic [7:0] res;
  int i;
  begin
    aa = a;
    bb = b;
    res = 8'h00;
    for (i = 0; i < 8; i = i + 1) begin
      if (bb[0]) begin
        res = res ^ aa;
      end
      aa = aes_xtime(aa);
      bb = {1'b0, bb[7:1]};
    end
    return res;
  end
endfunction

function automatic logic [7:0] aes_get_state_byte(input logic [127:0] state_in, input int index);
  int msb;
  begin
    msb = 127 - (index * 8);
    return state_in[msb-:8];
  end
endfunction

function automatic logic [127:0] aes_set_state_byte(input logic [127:0] state_in, input int index,
                                                    input logic [7:0] value);
  logic [127:0] tmp;
  int msb;
  begin
    tmp = state_in;
    msb = 127 - (index * 8);
    tmp[msb-:8] = value;
    return tmp;
  end
endfunction

function automatic logic [31:0] aes_rot_word(input logic [31:0] word_in);
  return {word_in[23:0], word_in[31:24]};
endfunction

function automatic logic [31:0] aes_sub_word(input logic [31:0] word_in);
  return {aes_sbox(word_in[31:24]), aes_sbox(word_in[23:16]), aes_sbox(word_in[15:8]),
          aes_sbox(word_in[7:0])};
endfunction

function automatic logic [31:0] aes_rcon(input int index);
  case (index)
    1: return 32'h01000000;
    2: return 32'h02000000;
    3: return 32'h04000000;
    4: return 32'h08000000;
    5: return 32'h10000000;
    6: return 32'h20000000;
    7: return 32'h40000000;
    8: return 32'h80000000;
    9: return 32'h1B000000;
    10: return 32'h36000000;
    default: return 32'h00000000;
  endcase
endfunction

function automatic logic [127:0] aes_round_key(input logic [1919:0] round_keys, input int round_idx);
  int msb;
  begin
    msb = 1919 - (round_idx * 128);
    return round_keys[msb-:128];
  end
endfunction

function automatic logic [127:0] aes_sub_bytes(input logic [127:0] state_in);
  logic [127:0] state_out;
  int idx;
  begin
    state_out = state_in;
    for (idx = 0; idx < 16; idx = idx + 1) begin
      state_out = aes_set_state_byte(state_out, idx, aes_sbox(aes_get_state_byte(state_out, idx)));
    end
    return state_out;
  end
endfunction

function automatic logic [127:0] aes_inv_sub_bytes(input logic [127:0] state_in);
  logic [127:0] state_out;
  int idx;
  begin
    state_out = state_in;
    for (idx = 0; idx < 16; idx = idx + 1) begin
      state_out = aes_set_state_byte(state_out, idx, aes_inv_sbox(aes_get_state_byte(state_out, idx)));
    end
    return state_out;
  end
endfunction

function automatic logic [127:0] aes_shift_rows(input logic [127:0] state_in);
  logic [127:0] state_out;
  int row;
  int col;
  int src_col;
  int src_idx;
  int dst_idx;
  begin
    state_out = 128'h0;
    for (row = 0; row < 4; row = row + 1) begin
      for (col = 0; col < 4; col = col + 1) begin
        src_col = (col + row) % 4;
        src_idx = (4 * src_col) + row;
        dst_idx = (4 * col) + row;
        state_out = aes_set_state_byte(state_out, dst_idx, aes_get_state_byte(state_in, src_idx));
      end
    end
    return state_out;
  end
endfunction

function automatic logic [127:0] aes_inv_shift_rows(input logic [127:0] state_in);
  logic [127:0] state_out;
  int row;
  int col;
  int src_col;
  int src_idx;
  int dst_idx;
  begin
    state_out = 128'h0;
    for (row = 0; row < 4; row = row + 1) begin
      for (col = 0; col < 4; col = col + 1) begin
        src_col = (col - row + 4) % 4;
        src_idx = (4 * src_col) + row;
        dst_idx = (4 * col) + row;
        state_out = aes_set_state_byte(state_out, dst_idx, aes_get_state_byte(state_in, src_idx));
      end
    end
    return state_out;
  end
endfunction

function automatic logic [127:0] aes_mix_columns(input logic [127:0] state_in);
  logic [127:0] state_out;
  logic [7:0] s0;
  logic [7:0] s1;
  logic [7:0] s2;
  logic [7:0] s3;
  int col;
  begin
    state_out = state_in;
    for (col = 0; col < 4; col = col + 1) begin
      s0 = aes_get_state_byte(state_in, (4 * col) + 0);
      s1 = aes_get_state_byte(state_in, (4 * col) + 1);
      s2 = aes_get_state_byte(state_in, (4 * col) + 2);
      s3 = aes_get_state_byte(state_in, (4 * col) + 3);

      state_out = aes_set_state_byte(
          state_out, (4 * col) + 0, aes_gf_mul(s0, 8'h02) ^ aes_gf_mul(s1, 8'h03) ^ s2 ^ s3);
      state_out = aes_set_state_byte(
          state_out, (4 * col) + 1, s0 ^ aes_gf_mul(s1, 8'h02) ^ aes_gf_mul(s2, 8'h03) ^ s3);
      state_out = aes_set_state_byte(
          state_out, (4 * col) + 2, s0 ^ s1 ^ aes_gf_mul(s2, 8'h02) ^ aes_gf_mul(s3, 8'h03));
      state_out = aes_set_state_byte(
          state_out, (4 * col) + 3, aes_gf_mul(s0, 8'h03) ^ s1 ^ s2 ^ aes_gf_mul(s3, 8'h02));
    end
    return state_out;
  end
endfunction

function automatic logic [127:0] aes_inv_mix_columns(input logic [127:0] state_in);
  logic [127:0] state_out;
  logic [7:0] s0;
  logic [7:0] s1;
  logic [7:0] s2;
  logic [7:0] s3;
  int col;
  begin
    state_out = state_in;
    for (col = 0; col < 4; col = col + 1) begin
      s0 = aes_get_state_byte(state_in, (4 * col) + 0);
      s1 = aes_get_state_byte(state_in, (4 * col) + 1);
      s2 = aes_get_state_byte(state_in, (4 * col) + 2);
      s3 = aes_get_state_byte(state_in, (4 * col) + 3);

      state_out = aes_set_state_byte(state_out, (4 * col) + 0,
                                     aes_gf_mul(s0, 8'h0E) ^ aes_gf_mul(s1, 8'h0B) ^
                                     aes_gf_mul(s2, 8'h0D) ^ aes_gf_mul(s3, 8'h09));
      state_out = aes_set_state_byte(state_out, (4 * col) + 1,
                                     aes_gf_mul(s0, 8'h09) ^ aes_gf_mul(s1, 8'h0E) ^
                                     aes_gf_mul(s2, 8'h0B) ^ aes_gf_mul(s3, 8'h0D));
      state_out = aes_set_state_byte(state_out, (4 * col) + 2,
                                     aes_gf_mul(s0, 8'h0D) ^ aes_gf_mul(s1, 8'h09) ^
                                     aes_gf_mul(s2, 8'h0E) ^ aes_gf_mul(s3, 8'h0B));
      state_out = aes_set_state_byte(state_out, (4 * col) + 3,
                                     aes_gf_mul(s0, 8'h0B) ^ aes_gf_mul(s1, 8'h0D) ^
                                     aes_gf_mul(s2, 8'h09) ^ aes_gf_mul(s3, 8'h0E));
    end
    return state_out;
  end
endfunction

task automatic aes_expand_key(input logic [255:0] key_in, input int nk, input int nr,
                              output logic [1919:0] round_keys);
  logic [31:0] w[0:59];
  logic [31:0] temp;
  int i;
  int r;
  begin
    round_keys = 1920'h0;
    for (i = 0; i < 60; i = i + 1) begin
      w[i] = 32'h0;
    end
    for (i = 0; i < nk; i = i + 1) begin
      w[i] = key_in[255-(i*32)-:32];
    end
    for (i = nk; i < (4 * (nr + 1)); i = i + 1) begin
      temp = w[i-1];
      if ((i % nk) == 0) begin
        temp = aes_sub_word(aes_rot_word(temp)) ^ aes_rcon(i / nk);
      end else if ((nk > 6) && ((i % nk) == 4)) begin
        temp = aes_sub_word(temp);
      end
      w[i] = w[i-nk] ^ temp;
    end
    for (r = 0; r <= nr; r = r + 1) begin
      round_keys[1919-(r*128)-:128] = {w[4*r+0], w[4*r+1], w[4*r+2], w[4*r+3]};
    end
  end
endtask

task automatic aes_encrypt_block(input logic [127:0] plaintext_in, input logic [255:0] key_in,
                                 input int nk, input int nr, output logic [127:0] ciphertext_out);
  logic [1919:0] round_keys;
  logic [127:0] state;
  int round;
  begin
    aes_expand_key(key_in, nk, nr, round_keys);

    state = plaintext_in ^ aes_round_key(round_keys, 0);
    for (round = 1; round < nr; round = round + 1) begin
      state = aes_sub_bytes(state);
      state = aes_shift_rows(state);
      state = aes_mix_columns(state);
      state = state ^ aes_round_key(round_keys, round);
    end
    state = aes_sub_bytes(state);
    state = aes_shift_rows(state);
    state = state ^ aes_round_key(round_keys, nr);
    ciphertext_out = state;
  end
endtask

task automatic aes_decrypt_block(input logic [127:0] ciphertext_in, input logic [255:0] key_in,
                                 input int nk, input int nr, output logic [127:0] plaintext_out);
  logic [1919:0] round_keys;
  logic [127:0] state;
  int round;
  begin
    aes_expand_key(key_in, nk, nr, round_keys);

    state = ciphertext_in ^ aes_round_key(round_keys, nr);
    for (round = nr - 1; round > 0; round = round - 1) begin
      state = aes_inv_shift_rows(state);
      state = aes_inv_sub_bytes(state);
      state = state ^ aes_round_key(round_keys, round);
      state = aes_inv_mix_columns(state);
    end
    state = aes_inv_shift_rows(state);
    state = aes_inv_sub_bytes(state);
    state = state ^ aes_round_key(round_keys, 0);
    plaintext_out = state;
  end
endtask
