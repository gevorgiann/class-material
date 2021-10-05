# Lecture Notes: for September 28, 2021 

## What we did last time, and were we left off
   1. General
      - Introduction into Encoding
      - ASCII & extended ASCII 
      - Unary Numbers
      - UTF-8, with the algorithm reviewed

   1. Morning
      - Binary Math Operations
        1. Exceptions and Summary Information
        1. Binary addition
        1. Binary multiplication 
      - Scientific Notation

   1. Afternoon
      - Need to play catch-up

## Announcements:

## Questions:
   1. Was a Homework Assigned:
      1. Encoding Practice?
   1. UTF-8...
      - why is 6 bits key?
      - structure of the table
        - encode the most common in 1-byte : 2^7 == 128
        - '\*' : Dec=42, Hex=2A, Bin:  010 1010
        - '\*' : UTF-8 :  
         - in 1 bytes: 0010 1010
         - in 2 bytes: 11000000 10101010
         - in 4 bytes: 11110000 10000000 10000000 10101010

## Agenda:
  1. Session Specific Agenda
  1. Base8 Encoding (Octal)
     - 8# 64365
     - 2# 110 100 011 100 101



  1. BCD (Binary Code Decimals)
     - BCD# 0194653
     - 2# 0000 0001 1001 0100 0110 0101 0011

     - 2# 0000 1101 1001 0100 0110 0101 0011
     - BCD # 0  <error> 9 4 6 5 3

 
  1. Base16 Encodoing (Hexidecimal)
     - 16# 34a83d
     - 2#  0011 0100 1010 1000 0011 1101 

  1. Base64 Encoding
     - 2# 101101010100111001100110011010101101010111
       - 101101 010100 111001 100110 011010 101101 010111
     - 64# t U 5 m a t X


  * Given the bit pattern, 101100100100, decode it
    - Octal:  101 100 100 100     : 5444 
    - BCD:    1011 0010 0100      : Error....
    - Hex:    1011 0010 0100      : b28 
    - Base64: 10 1100  | 10 0100  : sk 

  * Given the bit pattern, 000111000110 , decode it 
   - Octal:  000 111 000 110
   - BCD:    0001 1100 0110
   - Hex:    0001 1100 0110
   - Base64: 00 0111  |  00 0110
   - ASCII:  0001 1100 | 0110 ----   (2nd byte is incomplete)
   - UTF8:   0001 1100 | 0110 ----   (2nd byte is incomplete)

### Morning
  1. Binary Complements

### Afternoon
  1. Binary Math Operations
     1. Exceptions and Summary Information
        - O: overflow (sometimes is label a V)
        - C: carry
        - S: sign
        - Z: zero

        if (A == B) {

        }
        x = A + -B
        if x == 0, then that means A == B
          - if Z is set, then that means A == B
        if (A > B) {

        }
        x = A + -B
        if S is set, then that means  B > A


     1. Binary addition
        -  100
        -  0100
        -  0111
        - -----
        -  1011

     1. Binary multiplication 

        342
      * 104
      -----
       1368
      0000-
   +  342--
      ------
      35568

        342
      * 104
      -----
       1368  <- first addition
      0000-
      -----
      01368  <- second addition
      342-- 
      -----
      35568  < third addtion


  1. Scientific Notation
     - format: d.dddddd X 10^e
     - 3.140 x 10^0
     - 1.010 x 10^1
     - 0003.765 x 10^-3
     - 3.200012334 x 10^7

     - base2: 1.ddddddd x 2^e
     - 01.0100100100010100 x 2^1010    (10 decimal) 

  1. Binary Complements
     - One's complement (diminshed complement)
       * 101101001001111100101010111000110   (input)
       * 010010110110000011010101000111001   (output)
     - Two's complement 
       * 101101001001111100101010111000110   (input)
       * 010010110110000011010101000111010

      - Java   x = ~ B

