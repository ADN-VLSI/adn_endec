# adn_endec_encoder_4b5b (module)

### Author: Foez Ahmed (foez.official@gmail.com)

### Source: adn_endec_encoder_4b5b.sv

## Top IO

<img src="./adn_endec_encoder_4b5b_top.svg">

## Parameters

_None_


## Ports

|Name|Direction|Type|Dimension|Description|
|-|-|-|-|-|
|data_in|input|logic [3:0]|||
|code_out|output|logic [4:0]|||
|code_err|output|logic|||


## Description

### Purpose
This module implements a 4b5b line encoder, which maps 4-bit input data symbols to 5-bit output codes. This encoding scheme is commonly used in data communication protocols to ensure sufficient transition density for clock recovery and to provide error detection capabilities.

### Usage
To use this module, connect a 4-bit data bus to `data_in`. The module will output the corresponding 5-bit 4b5b encoded symbol on `code_out`. If the input symbol is invalid (e.g., in protocols where certain 4-bit combinations are reserved), the `code_err` signal will be asserted high. The encoding logic is handled by the included `adn_endec_block_linecode_functions.svh` file.

| REVISION | DATE       | AUTHOR          | DESCRIPTION                                            |
|----------|------------|-----------------|--------------------------------------------------------|
| 1.0      | 2026-07-29 | Foez Ahmed      | Stable release                                         |

Author : Foez Ahmed (foez.official@gmail.com)
