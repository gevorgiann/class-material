# Lecture Notes: for September 23, 2021 (Afternoon)


## Agenda
  1. Announcements:
     - none

  1. Pickup where we left off, Ask Question
     - Memory, pointers: (which will be used for link-list)
     - Index Values (lval), Labels map to Index Values, Inside Values (rval), 
       - put an index Value (i.e., address) into the Inside Value -- this is pointer
       - Assignment Symbol:   C = C + 1.
       - Address of:   =  &C 
       - Dereference:  = ( * C)

  1. Introduction to Encoding
     - Encoding: take an A from a domain, and tranfer to a B into a codomain
     - Encoding: translating from one domain to another
     - Encoding: can be represented as a lookup table or a mathematical expression
     - Decoding: the inverse, doing backwards, the same thing but in reverse

     - Encoding, Compression (hash), Encryption

  1. ASCII
     - print a decimal number in Java:  system.out.printf("%ud\n", x);
     - table of symbols --> numbers
     - table that holds 128 unique symbols
     - we need 7 bit to associated a unique patter to 128 things

  1. Unary Numbers
     - 10 (1),  1110 (3), 1111110 (6)
     - 1101110 (23), 1110 10 1110 11110 (2134),

  1. UTF-8 
     1. reading the sequence
        - 11101101101101111001110011110010101101111001100110010110
        - 11101101 10110111 10011100    (First character, Ah, its a 3 byte sequence)
        - 11110010 10110111 10011001 10010110  (Second Charact, Ah its a 4 byte sequence)
     1. break it a part
        -  ----1101 --110111 --011100
        - 1101110111011100

  1. UTF-8 Encoding Algorithm
     - Index: 0x0d40
     - Hex Encoding: 0xe0b580

     1. 110101000000
     2.0110101 000000
        a) 0
        b) 110101
        c) 000000
     3. I need three
     4. Got it.
     5. 
        a) -          -> 1110 xxxx
        b) 110101     -> 10 110101
        c) 000000     -> 10 000000

     6. 1110xxxx1011010110000000
     7. 111000001011010110000000

      - double check
      - 111000001011010110000000  (correct answer)
      - 111000001011010110000000  (answer, correct) 


# Next Time
     
  1. Math Operations:  Exception and Summary Information 
  
  1. Binary Numbers:
     1. Lookup table
     1. gdb
     1. binary addition
     1. binary multiplication
  

  1. Scientific Notation
     1. format: d.dddddd X 10^e
     - 

  1. Binary Scientific Notation
     1. format: 1.dddddd x 2^e
     -


  


