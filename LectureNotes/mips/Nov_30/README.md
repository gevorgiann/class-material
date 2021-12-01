# Lecture Notes for November 29, 2021

## Game Plan: 4 Lectures left
   1. Bitwise operators
   1. Base64
   1. Stack Operations
   1. Subroutine Calls 

### Agenda
 1. Questions from last time:
    - (M) review the assignment provided over the weekend
    - (A) difference between >>> and this >>

 1. Quick Review from last time

 1. Assignment:
    - IP: Dotted Decimal <-> Integer
      - 130.166.38.23
    - Algorithm Description
      - Use Java-based Three Address Code
      - Shifts ``( <<, >>, >>> )``
      - Masks  ``( &, |, ^, ~)``
    - Convert to MIPS instructions

# Homework:
  1. wrote this program by yourself
  1. complete the homework assignment

  
//  # Sample program to convert an encoded IP address
//  # to it's dotted decimal equivalent
//  
//  # Example:
//  #   Input:  -2102989117  (signed value)
//  #   Output: 130.166.238.195
//  #   Hex: 0x826eec3
//  
//  # Algorithm "to_dotted:
//  #   1. a0 = read integer
//  #   2. split integer into four bytes
//  #      - t0 = a0[0:7] 
//  #      - t1 = a0[8:15] 
//  #      - t2 = a0[16:23] 
//  #      - t3 = a0[24:31] 
//  #   3. print each of the bytes as integers separated with a "."
//  
//  
//  
//  #############################################################
//  # Algorithm "from_dotted"       # void from_dotted(void);
//  #   1. (t0, t1, t2, t3) = read 4 bytes
//  #   2. shift the bytes to be in proper position
//  #   3. merge the bytes together
//  #   4. print the final value



