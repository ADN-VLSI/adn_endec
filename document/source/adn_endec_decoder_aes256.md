# adn_endec_decoder_aes256 (module)

### Author: Foez Ahmed (foez.official@gmail.com)

### Source: adn_endec_decoder_aes256.sv

## Top IO

<img src="./adn_endec_decoder_aes256_top.svg">

## Parameters

_None_


## Ports

|Name|Direction|Type|Dimension|Description|
|-|-|-|-|-|
|ciphertext_in|input|logic [127:0]|||
|key_in|input|logic [255:0]|||
|plaintext_out|output|logic [127:0]|||


## Description

# Purpose
This module implements AES-256 decryption for one 128-bit input block using a 256-bit key.

## Usage
Drive `ciphertext_in` and `key_in`; the decrypted 128-bit result is produced on `plaintext_out`.

| REVISION | DATE       | AUTHOR          | DESCRIPTION                                            |
|----------|------------|-----------------|--------------------------------------------------------|
| 1.0      | 2026-08-21 | Foez Ahmed      | Stable release                                         |

Author : Foez Ahmed (foez.official@gmail.com)
