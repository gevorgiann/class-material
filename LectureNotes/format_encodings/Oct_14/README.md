# Lecture Notes: for October 14, 2021 


## Agenda:
  1. Review previous day material, quickly
  1. Note any Announcements
  1. Garner any questions


## What we did last time, and were we left off

  1. Binary Numbers
     - Real Decimal: Conversions
       - https://docs.google.com/spreadsheets/d/1aMvlfw_rzvYBObT94dX8v_O0EgELHgWrmZgWKmoLY7s/edit#gid=1434558784

     - Decimal to Binary
       - whole component: 
         - sequence of integer divisions by 2
         - with the remainder providing the appropriate binary digit
         - until converage to zero
       - fractional component:
         - sequence of multiplications by 2
         - with the overflow providing the appropriate binary digit
         - until converage to zero or we have enough digits 
           - (i.e., until we receive the require precision) 

     - Binary to Decimal
       - use expanded notation and calcutate the value, OR
       - whole component:
         - a sequence of multiplications on a running total by 2 and adding the next binary digit
       - fractional component: (reading the number from right to left)
         - a sequence of adding the next binary digit and then dividing by 2

     - Conversion between powers of 2:
       - convert to binary (lookup table/from memory)
       - rechunk (separate into the correct number of binary digits)
       - convert each chunk (lookup table/from memory) into corresponding digit.

  1. Signed Integers: Method of Complements
     * we can also represent negative numbers via the bias method as is done in floating point encodings
     - Special Case for Base 2:
       - define 2's complement in terms of 1's complement
     - Use of 1's complement
       - two zeros (negative and positive)
       - easy to compute
     - Use of 2's complement
       - for representing negative numbers
       - subtraction performed via addition of a negative number
       - only one value of zero....one extra negative number
       - requires addition to compute the value ( (~ A)+1 )



## Announcements:
   1. Series of individuals added and drop the course
      - all assignments are now in the process of being graded
      - an automated process is being used to help with grading
      - it is imperative that you follow the specifications of each assignment
      - you have time to double check now!

   1. Test on Formats: Thursday, Oct 21
      - Test to be completed within a one-hour time:
      - Document to be posted within github classroom
      - Document to be updated 
      - Document to be submitted within github classroom

   1. Slides will be reposted after the afternoon class
      - current slides have answers in the back
      - current slides setup to demostrate operations

## Questions:
   1. (M): None
   1. (A): 
      - The lab and hexidecimal numbers
      - How do we study for the exam?


## Lecture (See the Slides)

  1. Review of Mathematical Operations
     - Binary Integers
     - BCD Integers
     - Binary Multiplication



## Next Time:
  1. We start the next segment on Digitial Logic on Tuesday Oct 19

