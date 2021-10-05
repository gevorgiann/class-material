# Lecture Notes: for September 30, 2021 

## What we did last time, and were we left off
   1. Reviewed "Practice Assignment" and assigned homework
   1. Reviewed Binary Math Operations as a primer
   1. Reviewed Scientific Notation
   ---
   1. Underscored "Table Approach" for binary encodings
      - ASCII  -- #of items: 128, how many bits:  2^n == 128, n = 7 (but use 8)
      - Base8  -- #of items: 8, how many bits:  2^n == 8, n = 3
      - ! Base10: uses a mathematical approach to encode a base 10 number
      - BCD (Binary Coded Decimals) -- #of items: 10, how many bits:  2^n >= 10, n = 4
      - Base16 -- #of items: 16, how many bits:  2^n >= 16, n = 4
      - Base64 -- #of items: 64, how many bits:  2^n >= 64, n = 6

   1. UTF-8 is not Table Driven and is a variable length encoding
      - decomponse the encoding
      - Unary numbers, e.g., 1110 (3), 110 (2)


   1. Introduced notation for Encodings
      - 8# 64365  -- 2# 110 100 011 100 101
      - BCD# 0194653 -- 2# 0000 0001 1001 0100 0110 0101 0011
      - 16# 34a83d -- 2#  0011 0100 1010 1000 0011 1101
      - 64# tU5matX -- 2#  101101 010100 111001 100110 011010 101101 010111
      - Notation borrowed/extend from bash

   1. Note that in Java, C, C++, etc
      - Base2:  no direct support
      - Base8:  the number is prepended with a 0, 064365   (Javascript 0o064365)
      - Base10: the number is presented without any special notation, 
      - BCD:    no support
      - Base16: the number is prepanded with 0x, 0X34a83d
      - Base64: no support

   1. Provide examples on the approach to decode string of bits 
      - including the parsing of the numbers for UTF-8

      - examples:
        - 0xf090b4b2 :  UTF-8 encoded hex value
        - 11110000100100001011010010110010  : UTF-8 encoded binary  value
        - 11110-000 10-010000 10-110100 10-110010
        - 000 010000 110100 110010 : UTF-8 index binary value


## Announcements:
   1. Superfluous: something that is not necessary
      - example:   00000043.3

## Questions:
   1. (M) Nothing...
   1. (A) Multiple questions...
   1. (A) UTF-8 one the homework

## Agenda:
  1. Review previous day material, quickly
  1. Note any Announcements
  1. Garner any questions

  1. Motivation:
     1. Network Layers: 7 layers: Physical, Data Link, Network, Transport, Session, Presentation, Application
     1. IP Packet: Which is at layer 3, i.e., Network layer
     1. Ethernet Frame:

  1. IP Address Format
     1. Human Readable: 
        1. IP address: contains 4 octets, 192.68.1.3, 192.168.0.205
        1. Network mask: 255.255.255.0
     1. Binary: 11000000 10101000 00000001 00000011 : 192.68.1.3,
     1. Binary: 11000000 10101000 00000000 11001101   : 192.168.0.205

  1. Ethernet Frame:
     1. Preamble (get everyones attention): sequence of repeating: 1010101010101.....
     1. Start of Frame (SOF): (clear my throat): the octet: 1010 1011
     1. Send the message


  1. Review API for binaryMappings
     * https://www.sandbox.csun.edu/~steve/binaryValues/binaryMappings.html
     * 

  1. Material
     1. Mips Reference Card
        - Sept_30/"MIPS CheatSheet.pdf"

  1. Instruction Encodings
     1. Architecutural Overview of MIPS (part of the ISA)
        - number of integer registers: 32
        - number of instructions

     1. Instruction Formats for MIPS: R, I, J
        - R: Register Instructions
          - add rd, rs, rt;   add $v0, $t1, $t2;    $v0 = $t1 + $t2
        - I: Immediate Instructions
          - addi rd, rs, 0x2
          - beq  rd, rs, Label
        - J: Jump Instructions
          - j Label

  1. Examples Encoding and Decoding
     - https://docs.google.com/spreadsheets/d/1r9cj9x71JBVv3En-cOYanqRW4zSz53oSXLlScOparqY/edit?usp=sharing
   
     1. R Format:    
         ```          ------ ----- ----- ----- ----- ------
         1. Ex. Inst: 000000 00011 00010 00010 00000 100000
         1. Decoded:  add $v0, $v1, $v0
         ```
 
      1. Encoding:  addi $v0, $t1, 4
         ```
         ------ ----- ----- ----------------
         001000 00010 01001 0000000000000100
         ```


## Next Time:



## Future:
  1. Expanded Notation
  1. Binary Reals
  1. Floating Point Numbers
  1. Binary Numbers
     - Conversion  (3/2)
  1. Signed Integers (Slides 2/23)
     - Method of Complements (review) 
     - Use of 1's complement
     - Use of 2's complement
     - Subtraction....
  1. Mathematical Practice (2/25, 2/18)
     - Binary Integers
     - BCD Integers
     - Binary Multiplication
