# Lecture Notes: for October 5, 2021 

## Quote:
   ```
   “I cannot teach anybody anything. I can only make them think”
   ― Socrates
   ```

## What we did last time, and were we left off

  1. Motivation:
     1. Network Layers: 7 layers: Physical, Data Link, Network, Transport, Session, Presentation, Application
     1. IP Packet: Which is at layer 3, i.e., Network layer
     1. Ethernet Frame:

  1. IP Address Format
     1. Human Readable: 
        1. IP address: contains 4 octets, 192.68.1.3, 192.168.0.205
        1. Network mask: 255.255.255.0
     1. Binary: 11000000 10101000 00000001 00000011 : 192.68.1.3,
     1. Binary: 11000000 10101000 00000000 11001101 : 192.168.0.205

  1. Ethernet Frame:
     1. Preamble (get everyones attention): sequence of repeating: 1010101010101.....
     1. Start of Frame (SOF): (clear my throat): the octet: 1010 1011
     1. Send the message

  1. Introduction to Instruction Encodings
 
## Announcements:
   1. BGP?  Border Gateway Protocol: A routing protocol
   1. Homework extended till tonight!  Why?
      - Problem #1 ASCII
      - Problem #2


## Questions:
   1. (M) ?  No questions
   1. (A) ?


## Agenda:
  1. Review previous day material, quickly
  1. Note any Announcements
  1. Garner any questions

  1. Material
     1. Examples Encoding and Decoding
       - https://docs.google.com/spreadsheets/d/1r9cj9x71JBVv3En-cOYanqRW4zSz53oSXLlScOparqY/edit?usp=sharing
     1. Mips Reference Card
        - mips/documentation/MIPS CheatSheet.pdf
        - 32 general registers (need 5 bits to encode a register: 2^5 == 32)
        - Uses 6 bits to encode the operation (2^6 == 64)
        - Uses 5 bits to perform secondary encoding  (2^5 == 32)

  1. Ternary Operator
   -  X = (a < b) ? 42 : 10;
   -  if ( a< b) {
         return 42;
      } else {
         return 10;
      }


  1. Instruction Encodings
     1. Architecutural Overview of MIPS (part of the ISA)
        - number of integer registers: 32
        - number of instructions

     1. Instruction Formats for MIPS: R, I, J
        - R: Register Instructions
   


## Next Time:
  1. Expanded Notation

  1. Binary Reals

  1. Floating Point Numbers

  1. Binary Numbers
     - Conversion  (3/2)

## Future:
  1. Signed Integers (Slides 2/23)
     - Method of Complements (review) 
     - Use of 1's complement
     - Use of 2's complement
     - Subtraction....
  1. Mathematical Practice (2/25, 2/18)
     - Binary Integers
     - BCD Integers
     - Binary Multiplication
