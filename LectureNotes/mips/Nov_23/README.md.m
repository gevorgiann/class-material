# Lecture Notes for November 23, 2021

## Announcements:
   1. All assignments, quizzes have been graded
   1. If you did not follow the directions, and 
      - would like me to consider regrading something
      1. fix the problem
      2. notify me of your request
      3. I'll consider regrading
   1. No class on Thursday
      - take a day to reflect 

## Slides from last time: Intro to Control Flow
  - https://docs.google.com/presentation/d/1fSqTuilCVzfNpFDn6VQ-v-gxnGmZUOqENw2i0Q4tyFg/edit#slide=id.gfbcb37c684_0_300

### Agenda
 1. Questions from last time:
    - (M) none
    - (A)

 1. Quick Review from last time
    - Three Address Code (Baby Java)
      - take at most 2 values from somewhere (location)
      - perform an operation (addition, goto, shift, memory op.)
      - (implicitly or explicity) store the result in a third location
    - Stack usage for subroutines 
      - subroutine a generic name for a method, subroutine, selection, ...
      - a grouping of code, with a unique starting point (label === name)
      - all actual arguments, local variables, temps are placed "theoretically" on the stack 
        - there may be "optimization" steps, like storing return value in a register
    - Basic Block
      - contains only simple instruction
      - has a starting label
      - has at most one goto, which is at the _end_ of the block
    - Control Flow Graphs:
      - if-then-else, while, do-while, until, foreach, for, switch, etc.
    - Call Graphs:  
      - static and dynamic 
      - recurision 
    - Frame:
      - a chunk of memory used by each instance of a subroutine for all of it's stuff: actual aruments, local variables, temps, and potenially a copy of all of its register
      - a "new" call, this information in stored in the "heap" section of memory
      - start of the frame: $fp
      - end of the frame: $sp


 1. Assigned problem:
    - review your checksum.java program
    - create a method that
      - reads 10 integers  (no prompts)
      - add these values together to produce a single sum
      - returns the same as the final return value
    - Example Java:
      ```
      // Scanner stdin = new Scanner(System.in);

      int loop_sum() {
        int count = 10;
        int sum = 0;
        while(count > 0) {
          int value = stdin.nextInt();
          sum += value; 
          count--; 
        }
        return sum;
      }
      ```
 1. Today's exercise:
    - convert the Java code into simple Java code (almost three address code)
      * done
    - convert the simple Java code into three address code
      ```
      # $t0: int count;
      # $t1: int sum;
      # $t2: int value;
      # $t3: int B;

      loop_sum: nop 

      _i:  count = 10;
           sum = 0;

      _t:  B = count > 0;

        # while(B) {  // the question mark (?) box
        if (!B) goto _e;

      _b: value = stdin.nextInt();  // syscall
          sum += value; 
 
      _n: count--; 
          goto _t;

      _e: # end of the loop

        return sum;
      ```
    - assign variables to locations: memory or registers
         ```
      # $t0: int count;
      # $t1: int sum;
      # $t2: int value;
      # $t3: int B;

      main: nop

                           # v0 = call loop_sum()
            nop            # # postion actual arguements
            jal loop_sum   # # jump and link to the loop_sum subroutine
            move $s0, $v0  # # move the return value to where I want it

            li $v0, 1      # print_int($s0)
            move $a0, $s0
            syscall

            li $v0, 10
            syscall        # halt()


      loop_sum: nop 

      _i:  $t0 = 10;
           $t1 = 0;

      _t:  $t3 = $t0 > 0;
           if (!$t3) goto _e;

      _b:  $t2 = stdin.nextInt();  // syscall
           $t1 += $t2; 
 
      _n:  $t0 --; 
           goto _t;

      _e:  # end of the loop

          return $t1;
      ```
    - convert to MIPS code
      ```
      loop_sum: nop 

      _i:  addi $t0, $zero, 10   # $t0 = 10;
           move $t1, $zero       # $t1 = 0;

      _t:  ble $t0, $zero, _e    # $t3 = $t0 <= 0;
                                 # if ($t3) goto _e;

      _b:  ## $t2 = stdin.nextInt();  // syscall
           li $v0, 5
           syscall
           move $t2, $v0

           add $t1, $t1, $t2     # $t1 += $t2; 
 
      _n:  subi $t0, $t0, 1      # $t0 --; 
           j _t                  # goto _t;

      _e:  # end of the loop

          # return $t1;
          move $v0, $t1
          jr $ra
      ```

 1. Assignment:
    - IP: Dotted Decimal <-> Integer
    - Algorithm Description
      - Use Java-based Three Address Code
      - Shifts ``( <<, >>, >>> )``
      - Masks  ``( &, I, ^, ~)``
    - Convert to MIPS instructions


 1. Java Shift
    - << : left shift ;  x = 10 << 1, then value of x = 20
    - 10 : 0000 1010
    - 10 << 1 : 0000 1010 << 1 : 
    - 20:       0001 0100 
    - >> : right shift;   x = 10 >> 1, then value of x = 5
    - >> : right shift;   x = -10 >> 1, then value of x = -5
    - -10 : 1111 0110  >> 1 :
    - -5  : 11111 011
    - 10  : 1111 0110  >>> 1 :
    - 123 : 0111 1011

    t0 = a0 >> 24


                         sll $t1, $t1, 1

### Temp Prof Notes:


 1. Quick Review from last time 
 1. Subroutine Calls (simple)
    - Frames (slides)
    - simple_call.asm
    - more slides
 1. Three Address Code
 1. Basic Blocks
 1. Control Flow
    - sum_10.asm
