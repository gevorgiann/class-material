# Lecture Notes: for September 23, 2021 (Morning)


## Agenda
  1. Announcements:
  

  1. Pickup where we left off, Ask Question
     1. Started new section on encodings
     1. ASCII and Extendend ASCII
        - ASCII requires 7 bits, used the 8th bit parity 
        - checksum pretty much superseeds the parity bit
     1. static length encoding:  ASCII
     1. variable length encoding: UTF-8, UTF-16, UTF-32


  1. UTF-8
     1. UTF-8: Variable Lenght
        - Send 1, 2, 3, or 4 bytes per character
     1. Unary:  11110 (4), 110 (2), 111111110 (8), 
        - used to identify the number of bytes to are sent
     1. a three UTF- character sequence:
        - 1101101 10100110  01110001 11101010 10100110 10100110   
     1. 1101101 10100110 --> ---01101 100110

  1. Unary Numbers:
     1. 1 digit numbers:  11110 (4), 110 (2), 111111110 (8), 
        - used to identify the number of bytes to are sent 
     1. 2 digits numbers:
        - 23: 1101110
        - 1253: 101101111101110
     1. in reverse
        - 110 1110 111110 10 10 1110
        - ->  235113

  1. Exception and Summary Information 
     1. 0365 + 0036 = 0401
     1. 0999 + 9982 = 1 0981 -> 0981;  Oh, there is a Carry!
     1. 0999 + 9001 = 1 0000 -> 0000
        - Oh, there is a Carry
        - Oh, the number is Zero
     1. Four summary values:
        - O: Overflow
        - C: Carry
        - Z: Zero value
        - S: Signed value (is Negative)

  1. Binary Number:
    - Lookup table
    - gdb
    - binary addition
    - binary multiplication
```
     1111
   * 1101
   -------
     1111
    0000
    -----
     1111
   1111
   ------
  1001011 
  1111   
----------
 11000011
```

    1. Scientific Notation
       - format: d.dddddd X 10^e
       - 1.010 x 10^1
       - 3.463234 x 10^3
       - 003.242345 x 10^-1

    1. Binary Scientific Notation
       - format: 1.dddddd x 2^e
       - 101110.1110110 x 2^0
       - 1.011101110110 x 2^101  (5)
       - 0000.00001010  x 2^0
       - 000000001.010  x 2^0  (-5)







