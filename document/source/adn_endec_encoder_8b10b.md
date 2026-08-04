# adn_endec_encoder_8b10b (module)

### Author: Foez Ahmed (foez.official@gmail.com)

### Source: adn_endec_encoder_8b10b.sv

## Top IO

<img src="./adn_endec_encoder_8b10b_top.svg">

## Parameters

_None_


## Ports

|Name|Direction|Type|Dimension|Description|
|-|-|-|-|-|
|data_in|input|logic [7:0]|||
|is_k|input|logic|||
|rd_in|input|logic|||
|code_out|output|logic [9:0]|||
|rd_out|output|logic|||
|code_err|output|logic|||


## Description

### Purpose
The `adn_endec_encoder_8b10b` module implements an 8b/10b encoder, which converts 8-bit data bytes into 10-bit symbols. This encoding scheme is widely used in high-speed serial communication protocols to ensure DC balance and provide sufficient transition density for clock recovery.

### Usage
To use this module, provide an 8-bit data byte at `data_in` and set `is_k` high if the input is a control character (K-code) or low for data characters (D-code). The `rd_in` signal represents the current Running Disparity (RD) state. The module outputs the 10-bit encoded symbol at `code_out`, the updated running disparity at `rd_out`, and an error flag `code_err` if the input combination is invalid.

| REVISION | DATE       | AUTHOR          | DESCRIPTION                                            |
|----------|------------|-----------------|--------------------------------------------------------|
| 1.0      | 2026-07-29 | Foez Ahmed      | Stable release                                         |

Author : Foez Ahmed (foez.official@gmail.com)
