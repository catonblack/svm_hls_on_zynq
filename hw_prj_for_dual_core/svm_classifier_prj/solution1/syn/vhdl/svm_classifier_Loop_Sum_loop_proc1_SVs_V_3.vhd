-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity svm_classifier_Loop_Sum_loop_proc1_SVs_V_3_rom is 
    generic(
             dwidth     : integer := 239; 
             awidth     : integer := 7; 
             mem_size    : integer := 117
    ); 
    port (
          addr0      : in std_logic_vector(awidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(dwidth-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of svm_classifier_Loop_Sum_loop_proc1_SVs_V_3_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00000011111001001000010000011000001101101110111010110001010000011111110111111111010011010111010101101010001000000101111000010000000011111011101100110000000001100001111101001111100000010110111110111101110001000000010011000000111101110110110", 
    1 => "11110000000110111011110011000111001111011011111100011111010000111110101000000010010110001001001001101000111111101100110111111000011110111101011010110111110001101110111111000100100000001000110101000001101111100000001001010101000010000011000", 
    2 => "11110000000110000000011110000111111000111101111100011111010000000001000101000010010110001000100010111110000100101111000111100000111001000000110110111111110001101110111011011010011111010000001111111011110001110111011000111100111011110000101", 
    3 => "00111111010001000011100101011111100100001100111111111011000000010000011110111010101111000111111100010100111110000001010000100111101000000111101110111111100001111011111111000100100000001000110101111111110000010000001001010101111111111100111", 
    4 => "00101011011110001000010000011111111000111101111110001101001111110001101100111101110001111111101111011011000011000011101000111111001101000000110110111111110001101110000000111001101000100101001000111101110001000111101100010011111111111100111", 
    5 => "11110000000110000101001001000111111000111101111010110001010001011101011010111101110001111111101111011011001011011100110000010000000011000010100100111111000010010101111111000100100000001000110101111111110000010000001001010101111111111100111", 
    6 => "11110000000110000101001001000111111000111101111010110001010001101100110011111111010011010111101111011011001000000101111000010000000011000000110110111111000010010101111101001111100111101100100010111011110001110111110101111110111101110110110", 
    7 => "11110000000110111010001111011111001111011011111100011111010000101111001111111111010011010001001001101000111111101100110111111000011110111011101100110000100001000111111101001111100111011110011000111101110001000111101100010011111011110000101", 
    8 => "00000011111001111011110011000000100010011111111100011111010000000001000101000110111010100111101111011011000100101111000111010101000110000110000000111000000001100001111111000100100111111010101011111111110000010111111111101001111101110110110", 
    9 => "00000011111001111011110011000000110111010000111110001101001000000001000101000110111010100111101111011011000011000011101111101100101011000110000000111000000001100001111111000100100111101100100010111101110001000111101100010011111101110110110", 
    10 => "00111111010001000010000001110111100100001100111110001101001000010000011110111010101111000111101111011011111100010101111000100111101000000111101110111111110001101110111101001111100111101100100010111101110001000111110101111110111111111100111", 
    11 => "00010111101100000101001001000111111000111101111111111011000000000001000101111111010011010111100010100011000110011010100111111000011110111111001000111000010001010100111111000100100111111010101011111111110000010111111111101001111101110110110", 
    12 => "00111111010001000011100101011111100100001100111111111011000000000001000101111100010000011111101111011011111110000001010000100111101000000100010010111111100001111011111101001111100111111010101011111101110001000111100010101000111111111100111", 
    13 => "00000011111001000110101100110000001101101110111110001101001000000001000101000000110100110111101111011011111111101100110000011011110101111111001000111000010001010100111111000100100111111010101011111011110001110111111111101001111011110000101", 
    14 => "00010111101100000110101100110111111000111101111111111011000000000001000101111111010011010111101111011011111111101100110111111000011110000010100100111000010001010100000000111001101000001000110101111111110000010111101100010011111101110110110", 
    15 => "00000011111001111010001111011000110111010000111110001101001000000001000101000110111010100000100010111110111100010101111111101100101011000110000000111110110010100010111101001111100111111010101011111101110001000111111111101001111111111100111", 
    16 => "11011100010100111110111010011000001101101110111111111011000000011111110111000000110100110000001001001101000001011000001000000100010000000000110110111111100001111011000000111001101111101100100010111111110000010111110101111110000010000011000", 
    17 => "00000011111001111101010110110111001111011011111100011111010000010000011110111001001101100111111100010100000011000011101111010101000110111001111110110000000001100001111111000100100111111010101011111111110000010111111111101001111101110110110", 
    18 => "11110000000110111011110011000111001111011011111100011111010001011101011010000010010110001001001001101000111110000001010000000100010000111011101100110000000001100001111111000100100000001000110101111111110000010000001001010101111111111100111", 
    19 => "00101011011110000010000001110111111000111101111110001101001000000001000101111100010000011111100010100011111110000001010000110011011010000100010010111111110001101110111111000100100111111010101011111111110000010111111111101001111111111100111", 
    20 => "00010111101100000110101100110000001101101110111110001101001111110001101100000000110100110111100010100011000011000011101000110011011010111101011010110000000001100001111111000100100111111010101011111101110001000111111111101001111101110110110", 
    21 => "00000011111001111010001111011111001111011011111010110001010000111110101000111010101111000001001001101000111111101100110000100111101000110110100010110001100000010011111011011010011000010110111110111101110001000111101100010011111101110110110", 
    22 => "00101011011110000101001001000000001101101110111110001101001111110001101100111111010011010111100010100011111111101100110000011011110101111101011010110111110001101110000000111001101111101100100010111011110001110111110101111110111011110000101", 
    23 => "00000011111001111011110011000000001101101110111111111011000000010000011110000101011001000111010101101010000011000011101000010000000011000010100100111000000001100001111111000100100111111010101011111111110000010111111111101001111111111100111", 
    24 => "11110000000110111010001111011111001111011011111100011111010001001110000001000000110100110001001001101000111110000001010000000100010000111001111110110000100001000111111101001111100111101100100010111101110001000111110101111110111101110110110", 
    25 => "00000011111001000110101100110000001101101110111111111011000000000001000101111111010011010111101111011011000001011000001111111000011110000000110110111000010001010100000010101110101111111010101011000001101111100111101100010011111111111100111", 
    26 => "11011100010100111110111010011111100100001100111010110001010000101111001111110111101100001111100010100011001000000101111111010101000110111001111110110111010010001000111111000100100000100101001000000001101111100000100110010110111111111100111", 
    27 => "11001000100001000010000001110000001101101110111110001101001000000001000101000011110111101000101111110111000100101111000111111000011110000010100100111111100001111011111101001111100111101100100010111101110001000111110101111110111101110110110", 
    28 => "10110100101110111101010110110000110111010000111100011111010111010010111010000101011001000000010110000110000011000011101111100000111001000100010010111111010010001000111011011010011111010000001111111011110001110111011000111100111011110000101", 
    29 => "00000011111001000011100101011111100100001100111111111011000000111110101000000000110100110000100010111110111111101100110111101100101011111001111110110000000001100001111111000100100000001000110101111111110000010000100110010110000010000011000", 
    30 => "00000011111001111010001111011111001111011011111100011111010001001110000001111101110001111000111100110000111110000001010000110011011010110110100010110001010000100000111011011010011111111010101011111011110001110111111111101001111011110000101", 
    31 => "00111111010001000101001001000111100100001100111111111011000000010000011110111010101111000111111100010100111110000001010000100111101000001001011100111111100001111011111111000100100000001000110101111111110000010111100010101000111111111100111", 
    32 => "00000011111001111010001111011111001111011011111100011111010000111110101000111101110001111000111100110000111110000001010000110011011010110110100010110001010000100000111011011010011111111010101011111001110010101111111111101001111011110000101", 
    33 => "00101011011110001000010000011111111000111101111110001101001111100010010011111111010011010111101111011011000001011000001000100111101000111111001000111111110001101110111111000100100111111010101011111101110001000111111111101001111101110110110", 
    34 => "11110000000110111011110011000111111000111101111010110001010000000001000101000110111010100000100010111110111110000001010111101100101011000110000000111110100010101111111101001111100111111010101011111011110001110111111111101001111101110110110", 
    35 => "00000011111001000101001001000111111000111101111010110001010001011101011010111111010011010111101111011011001000000101111000010000000011111101011010110111000010010101111101001111100111101100100010111011110001110111110101111110111011110000101", 
    36 => "00010111101100001000010000011111111000111101111110001101001111110001101100111111010011010111101111011011000011000011101000110011011010000000110110111111110001101110000000111001101000001000110101111111110000010000010011000000111111111100111", 
    37 => "00000011111001111010001111011111100100001100111010110001010000011111110111111100010000011001001001101000000001011000001111101100101011111011101100110000110000111010111101001111100111101100100010111111110000010111101100010011111101110110110", 
    38 => "00000011111001000110101100110111100100001100111111111011000000000001000101000000110100110111101111011011111111101100110111111000011110000010100100111000000001100001000010101110101000001000110101000001101111100111101100010011111111111100111", 
    39 => "00000011111001111011110011000000100010011111111100011111010000010000011110000110111010100111111100010100000100101111000111010101000110000110000000111111110001101110111101001111100111101100100010111101110001000111110101111110111101110110110", 
    40 => "00101011011110000000011110000111111000111101111110001101001000000001000101111101110001111000100010111110000011000011101111010101000110111111001000111000100001000111111101001111100111011110011000111011110001110111100010101000111011110000101", 
    41 => "00010111101100111101010110110111100100001100111010110001010000101111001111111010101111000000010110000110000100101111000111001001010100111000010000110000010001010100111111000100100000001000110101111111110000010000010011000000111101110110110", 
    42 => "00000011111001111101010110110000110111010000111100011111010000000001000101000110111010100111101111011011000011000011101111010101000110000110000000111000000001100001111101001111100111101100100010111111110000010111110101111110111101110110110", 
    43 => "00111111010001000011100101011111100100001100111110001101001000000001000101111100010000011111101111011011111010101010011000100111101000000100010010111111100001111011111101001111100111101100100010111101110001000111110101111110111101110110110", 
    44 => "00111111010001000010000001110111111000111101111111111011000000010000011110111100010000011000100010111110000110011010100111100000111001111101011010110000110000111010000100100011110000110011010001000111101101001000100110010110000100001001001", 
    45 => "00000011111001001000010000011111111000111101111110001101001111110001101100111111010011010111111100010100000011000011101000011011110101111111001000111000010001010100111111000100100111111010101011111101110001000111111111101001111101110110110", 
    46 => "00000011111001111011110011000000110111010000111100011111010000000001000101000110111010100111100010100011000001011000001111010101000110000100010010111000000001100001111101001111100111111010101011111101110001000111111111101001111011110000101", 
    47 => "01010011000100000000011110000111111000111101111110001101001000010000011110111100010000011000100010111110000001011000001111100000111001111101011010110000110000111010000000111001101111101100100010111111110000010111110101111110111111111100111", 
    48 => "00010111101100001000010000011111111000111101111110001101001111110001101100111101110001111111101111011011000001011000001000110011011010111111001000111111110001101110000000111001101111111010101011111111110000010111111111101001111111111100111", 
    49 => "00000011111001000110101100110111111000111101111010110001010000000001000101111111010011010000001001001101001011011100110111101100101011111111001000111000000001100001111111000100100000010110111110111111110000010000010011000000111111111100111", 
    50 => "00000011111001111101010110110111100100001100111010110001010000011111110111111001001101100111111100010100000100101111000111010101000110111001111110110000000001100001111111000100100111111010101011111111110000010111111111101001111111111100111", 
    51 => "00000011111001000000011110000000001101101110111010110001010000000001000101111111010011010111101111011011000011000011101111100000111001111101011010110000000001100001111111000100100111111010101011000001101111100111111111101001000010000011000", 
    52 => "00000011111001001001110100000111100100001100111100011111010000010000011110111111010011010111101111011011000011000011101111100000111001111101011010110000000001100001000010101110101111111010101011111111110000010111111111101001111111111100111", 
    53 => "11011100010100111110111010011000001101101110000001101000111000101111001111000101011001000000010110000110111111101100110111111000011110000010100100111111000010010101111111000100100111111010101011111111110000010000010011000000000010000011000", 
    54 => "00000011111001111011110011000000001101101110111111111011000000010000011110000101011001000111101111011011000011000011101000000100010000000010100100111111110001101110111111000100100111101100100010111111110000010111101100010011111111111100111", 
    55 => "00111111010001000011100101011111111000111101111111111011000111110001101100111111010011010111100010100011111111101100110000110011011010000000110110111111110001101110111111000100100000010110111110111101110001000000010011000000111111111100111", 
    56 => "11011100010100111101010110110111111000111101111010110001010111110001101100000101011001000000101111110111111110000001010111111000011110000111101110111110100010101111111011011010011111101100100010111011110001110111011000111100111101110110110", 
    57 => "11110000000110111101010110110000110111010000111100011111010000000001000101000110111010100111111100010100000001011000001111010101000110000100010010111111110001101110111101001111100111101100100010111101110001000111101100010011111011110000101", 
    58 => "11110000000110111011110011000111001111011011111100011111010000011111110111111101110001111001001001101000000001011000001111101100101011111101011010110000100001000111111011011010011111011110011000111101110001000111101100010011111011110000101", 
    59 => "11110000000110111011110011000111001111011011111100011111010000101111001111111111010011010001001001101000111111101100110111101100101011111101011010110000010001010100111101001111100111101100100010111101110001000111101100010011111011110000101", 
    60 => "00000011111001111010001111011111001111011011111100011111010000111110101000111101110001111000111100110000111110000001010000110011011010111000010000110001010000100000111011011010011000010110111110111011110001110111100010101000111011110000101", 
    61 => "11110000000110111011110011000111001111011011111100011111010000101111001111000000110100110001001001101000000001011000001111101100101011111101011010110000000001100001111011011010011111101100100010111101110001000111110101111110111101110110110", 
    62 => "00000011111001111101010110110000110111010000111110001101001000000001000101000110111010100111101111011011000011000011101111010101000110000110000000111000000001100001111101001111100111101100100010000001101111100111101100010011111101110110110", 
    63 => "00010111101100111011110011000000110111010000111100011111010000010000011110000110111010100111010101101010000100101111000111100000111001000110000000111000110000111010111101001111100111101100100010111101110001000111110101111110111101110110110", 
    64 => "11011100010100000010000001110000110111010000000001101000111000011111110111000000110100110111010101101010111111101100110111101100101011000000110110111000000001100001000010101110101111111010101011111101110001000111111111101001111101110110110", 
    65 => "11110000000110000000011110000000100010011111111110001101001000111110101000000000110100110000111100110000000100101111000000010000000011111101011010110000000001100001111111000100100000001000110101000001101111100000001001010101000010000011000", 
    66 => "11011100010100000101001001000111001111011011111111111011000000011111110111111111010011010111101111011011000100101111000111101100101011111111001000111111110001101110000010101110101111111010101011000001101111100111110101111110000010000011000", 
    67 => "00101011011110001000010000011111111000111101111110001101001111110001101100111101110001111111101111011011000001011000001000100111101000000000110110111111110001101110111111000100100111111010101011111011110001110111111111101001111101110110110", 
    68 => "00101011011110000110101100110111111000111101111110001101001111110001101100111111010011010111101111011011000001011000001000110011011010111111001000111111110001101110111111000100100111111010101011111011110001110111111111101001111101110110110", 
    69 => "00000011111001001000010000011111111000111101111111111011000000000001000101111111010011010111101111011011111111101100110000000100010000000010100100111000010001010100000000111001101000001000110101111111110000010111101100010011111111111100111", 
    70 => "00000011111001111011110011000000110111010000111110001101001000010000011110000110111010100111010101101010111111101100110111010101000110000100010010111000000001100001111111000100100111111010101011111111110000010111111111101001111101110110110", 
    71 => "00000011111001111101010110110000110111010000111100011111010000000001000101000110111010100111111100010100000100101111000111010101000110000100010010111111110001101110111101001111100111101100100010111111110000010111001111010001111101110110110", 
    72 => "00101011011110001000010000011111111000111101111110001101001111110001101100111111010011010111101111011011000011000011101000110011011010111111001000111111110001101110000000111001101000100101001000111101110001000111101100010011111111111100111", 
    73 => "11110000000110111011110011000000110111010000111100011111010000000001000101000110111010100111101111011011000011000011101111101100101011000111101110111000000001100001111101001111100111101100100010111011110001110111110101111110111011110000101", 
    74 => "11110000000110111101010110110000001101101110111111111011000000010000011110000110111010100000100010111110000100101111000000000100010000000000110110111111010010001000111111000100100111101100100010000001101111100111101100010011000010000011000", 
    75 => "00000011111001000110101100110111111000111101111110001101001000000001000101111101110001111111101111011011111111101100110000011011110101000000110110111000010001010100111111000100100111101100100010111011110001110111110101111110111011110000101", 
    76 => "00010111101100000101001001000111111000111101111110001101001111110001101100111101110001111111101111011011000001011000001000100111101000000000110110111111110001101110000010101110101000001000110101111101110001000000001001010101111111111100111", 
    77 => "11011100010100111011110011000000001101101110111111111011000000010000011110000110111010100000100010111110000100101111000000000100010000000000110110111111010010001000111101001111100111101100100010000001101111100111110101111110000010000011000", 
    78 => "00000011111001111101010110110111100100001100111010110001010000101111001111111001001101100111111100010100000110011010100111001001010100111001111110110111110001101110111111000100100000100101001000111111110000010000100110010110111111111100111", 
    79 => "00111111010001000011100101011111111000111101111111111011000000000001000101111101110001111111101111011011111110000001010000110011011010000100010010111111110001101110111111000100100000010110111110111111110000010000010011000000111111111100111", 
    80 => "11001000100001111101010110110000110111010000111100011111010111100010010011000101011001000000100010111110000011000011101111100000111001000110000000111111010010001000111101001111100111011110011000111101110001000111101100010011111101110110110", 
    81 => "00010111101100000011100101011111111000111101111111111011000000101111001111000000110100110000101111110111111111101100110111101100101011111011101100110000000001100001111111000100100111111010101011111111110000010000010011000000000010000011000", 
    82 => "00000011111001111011110011000000001101101110111111111011000000010000011110000101011001000111111100010100000100101111000000010000000011000010100100111111110001101110111111000100100111111010101011000001101111100111111111101001111111111100111", 
    83 => "00101011011110000110101100110111111000111101000011010110111000011111110111111111010011010111101111011011111010101010011000010000000011111111001000111000010001010100001010000011000000100101001000000111101101001000011100101011000110001111010", 
    84 => "11110000000110111011110011000000110111010000111110001101001000000001000101000110111010100000010110000110111100010101111111101100101011000111101110111110110010100010111111000100100111101100100010111111110000010111110101111110000010000011000", 
    85 => "11110000000110001001110100000111111000111101111111111011000000000001000101111101110001111111111100010100111100010101111000000100010000000000110110111000010001010100000010101110101111111010101011111101110001000111111111101001111101110110110", 
    86 => "00101011011110001000010000011111111000111101111110001101001111110001101100111111010011010111101111011011000011000011101000110011011010111111001000111111110001101110111111000100100000001000110101111101110001000000001001010101111111111100111", 
    87 => "11110000000110111011110011000000100010011111000011010110111000010000011110000011110111101111010101101010000001011000001000000100010000000000110110111000000001100001111101001111100111011110011000111101110001000111100010101000111101110110110", 
    88 => "11110000000110111101010110110000110111010000111100011111010000010000011110001000011100000000001001001101000011000011101111010101000110000100010010111111100001111011111101001111100111011110011000111111110000010111001111010001111101110110110", 
    89 => "00010111101100111110111010011111001111011011111100011111010000011111110111111001001101100000001001001101000011000011101111010101000110111001111110110000010001010100111111000100100000001000110101111101110001000000001001010101111101110110110", 
    90 => "11110000000110111010001111011111001111011011111100011111010000011111110111111111010011010001001001101000111111101100110111101100101011111101011010110000010001010100111101001111100111101100100010111101110001000111101100010011111011110000101", 
    91 => "00000011111001111110111010011111100100001100111010110001010000101111001111111001001101100000001001001101000110011010100111001001010100111001111110110000000001100001111111000100100000010110111110111111110000010000011100101011111111111100111", 
    92 => "11110000000110000011100101011111100100001100111110001101001000111110101000111100010000011000010110000110111111101100110111101100101011111001111110110000000001100001111101001111100111111010101011111111110000010000010011000000000100001001001", 
    93 => "00000011111001000000011110000000100010011111111110001101001000111110101000111111010011010000100010111110000011000011101000010000000011111101011010110000010001010100111111000100100111111010101011000001101111100111111111101001000010000011000", 
    94 => "11110000000110111110111010011111111000111101111100011111010000010000011110000010010110001000010110000110000011000011101111100000111001000000110110111111100001111011111011011010011111000010000110111001110010101111011000111100111001101010100", 
    95 => "11001000100001000011100101011111100100001100000001101000111000010000011110111101110001111111100010100011111110000001010111101100101011000000110110111111100001111011000010101110101111111010101011111111110000010111111111101001111101110110110", 
    96 => "00010111101100000110101100110111111000111101111110001101001111110001101100000000110100110111101111011011000011000011101000110011011010111101011010110000000001100001111111000100100111101100100010111101110001000111110101111110111111111100111", 
    97 => "11110000000110111011110011000000110111010000111110001101001000000001000101000110111010100111101111011011000001011000001111111000011110000111101110111000000001100001111101001111100111011110011000111101110001000111100010101000111101110110110", 
    98 => "00000011111001111101010110110111100100001100111010110001010000101111001111111001001101100111111100010100000100101111000111010101000110111000010000110111110001101110111101001111100111111010101011111101110001000111111111101001111101110110110", 
    99 => "11110000000110111011110011000111001111011011111100011111010001011101011010000010010110001001001001101000111110000001010000010000000011111001111110110000010001010100111101001111100111111010101011111111110000010111111111101001111101110110110", 
    100 => "00000011111001001000010000011111111000111101111110001101001111110001101100111111010011010111101111011011111111101100110000011011110101111111001000111000010001010100111101001111100111101100100010111011110001110111101100010011111101110110110", 
    101 => "11001000100001111101010110110000110111010000111100011111010111100010010011000110111010100000100010111110000011000011101111100000111001000100010010111111010010001000111101001111100111101100100010111101110001000111101100010011111101110110110", 
    102 => "00000011111001000010000001110111111000111101111110001101001000010000011110111111010011010000100010111110001000000101111111100000111001000000110110111000000001100001000100100011110000100101001000000111101101001000011100101011000110001111010", 
    103 => "11011100010100111110111010011111100100001100111100011111010000010000011110110111101100001111010101101010000110011010100111100000111001111011101100110111010010001000111101001111100000001000110101111111110000010000001001010101111111111100111", 
    104 => "11011100010100111011110011000000001101101110111111111011000000010000011110000110111010100000100010111110000001011000001111111000011110000000110110111111000010010101111101001111100111101100100010111111110000010111101100010011111111111100111", 
    105 => "00000011111001000011100101011111111000111101111111111011000000101111001111111100010000011111100010100011001000000101111000011011110101111111001000111111110001101110000110011000111000100101001000000011101110110000100110010110000010000011000", 
    106 => "00000011111001111010001111011111001111011011111100011111010001001110000001000010010110001000101111110111111100010101111000111111001101111000010000110001000000101101111011011010011111101100100010111001110010101111110101111110111011110000101", 
    107 => "11110000000110111101010110110000001101101110111111111011000000010000011110000101011001000000100010111110000011000011101000000100010000000000110110111111010010001000111101001111100111101100100010111111110000010111101100010011111111111100111", 
    108 => "00000011111001111011110011000001001100000001111110001101001000000001000101000110111010100111111100010100000001011000001111111000011110000111101110111111110001101110111111000100100111101100100010111101110001000111110101111110111101110110110", 
    109 => "00111111010001000010000001110111111000111101111111111011000000000001000101111100010000011000100010111110000011000011101111010101000110111101011010110000110000111010000010101110101111111010101011000001101111100111111111101001111111111100111", 
    110 => "00000011111001000101001001000111111000111101000001101000111000011111110111111111010011010111100010100011111100010101111000000100010000111111001000111000000001100001000010101110101111101100100010000001101111100111110101111110111111111100111", 
    111 => "00111111010001001000010000011000100010011111000011010110111000010000011110000000110100110111111100010100111110000001010111111000011110000000110110111111110001101110000110011000111000100101001000000001101111100000010011000000000010000011000", 
    112 => "00101011011110000011100101011111111000111101111110001101001000000001000101111101110001111111100010100011000011000011101000000100010000111111001000111000000001100001111101001111100111010000001111111001110010101111000101100110111011110000101", 
    113 => "00000011111001001000010000011000001101101110111010110001010000011111110111111111010011010111010101101010000110011010100000010000000011111101011010110000000001100001111111000100100000010110111110111111110000010111101100010011111111111100111", 
    114 => "00010111101100001000010000011111111000111101111110001101001111100010010011111101110001111111101111011011000011000011101000100111101000000010100100111111110001101110111111000100100111111010101011111101110001000111011000111100111111111100111", 
    115 => "11001000100001111011110011000000100010011111111010110001010111010010111010000101011001000000100010111110000011000011101111100000111001000110000000111111010010001000111011011010011111011110011000111011110001110111100010101000111011110000101", 
    116 => "11001000100001111101010110110000001101101110111111111011000000000001000101000011110111101000010110000110000011000011101000000100010000000000110110111111100001111011111101001111100111011110011000111111110000010111100010101000111111111100111" );


attribute EQUIVALENT_REGISTER_REMOVAL : string;
begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity svm_classifier_Loop_Sum_loop_proc1_SVs_V_3 is
    generic (
        DataWidth : INTEGER := 239;
        AddressRange : INTEGER := 117;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of svm_classifier_Loop_Sum_loop_proc1_SVs_V_3 is
    component svm_classifier_Loop_Sum_loop_proc1_SVs_V_3_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    svm_classifier_Loop_Sum_loop_proc1_SVs_V_3_rom_U :  component svm_classifier_Loop_Sum_loop_proc1_SVs_V_3_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


