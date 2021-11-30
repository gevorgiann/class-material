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
    - (A) none

1. Quick Review from last time (M)
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

 1. Quick Review from last time (A)
    - Basic Block:  
      - a set of instructions
      - starts with a label
      - ends with an option goto
      - there are no other labels, nor gotos within the block
    - Frame: 
      - contain data/variables, e.g., 
        - all the formal arguements to a method
        - all local variables for a method
        - any all need temparies
      - global frame is stored in the .data segment
        - this is were we place all "static" variables within a OO language
      - local frames are stored in the stack segment
        - this is where we place all non-static variables
        - needed to support recursion
      - e.g., 
        ```
        int f () {
          static int x = 0;

                 int y = 0;
 
          print x, y;
          x ++, y++;
 
          return;
        }

        main () {
          f(), f(), f()
        }
        ```
        output: 
          - 0, 0
          - 1, 0
          - 2, 0

    - Call Graph: 
      - static: analysis of the program at compile time 
      - dynamic: at a particular time in which the program is executed
    - Three Address Code:
      - complicated statements need to be broken down to simple statements
        - e.g., x= - b + sqrt(b^2 - 4ac)/2a
          - d = 2 * a;
          - i_f = b * b; i_b_1 = 4 * c; i_b = i_b_1 * c;
          - i = i_f - i_b
          - s = sqrt ( i )
          - n = - b
          - x = n + s
        - at most three address used in every instruction
      - Control Flow:
        - while loop, if-then-else, do-while, repeat-until, until, switch, case, goto


 1. Assigned problem:
    - review your checksum.java program
    - create a method that
      - reads 10 integers  (no prompts)
      - add these values together to produce a single sum
      - returns the sum as the final return value
    - Example Java:
      ```
      // Scanner stdin = new Scanner(System.in);

      int loop_sum(void) {
        int count = 10;
        int sum = 0;
        while(count > 0) {
          int value = stdin.nextInt();
          sum += value;                  // sum = sum + value;
          count--;                       // count = count - 1;
        }
        return sum;
      }
      ```
 1. Today's exercise:
    - convert into simple Java code (almost three address code)
    - convert the simple Java code into three address code
  - assign variables to locations: memory or registers
      ```
      # int count;
      # int sum;
      # int value;
      # int B;

      loop_sum: nop

      _i:  count = 10;
           sum = 0;

      _t:  B = count > 0;
           if (!B) goto _c

      _b:  value = call stdin.nextInt(void);
           sum = sum + value;

      _n:  count = count + -1 ;
           goto _t
   
      _c:  return sum;
           goto ?

      ```
      - convert to MIPS code
      ```

      main: nop
            # 1. position the formal arguments
            nop

            # 2. jump and link to the appropriate label
            jal loop_sum 

            # 3. reposition my return value
            move $s0, $v0


            li $v0, 1         # print_int($s0)
            move $a0, $s0
            syscall

            li $v0, 10      #  halt()
            syscall


      # $t0: int count;
      # $t1: int sum;
      # $t2: int value;
      # $t3: int B;

      loop_sum: nop           ## sum = loop_sum()

      _i:  li $t0, 10         # count = 0;  $t0 = 10;
           move $t1, $zero    # sum = 0;   $t1 = 0;

      _t:  ble $t0, $zero, _c # # # $t3 = ($t0 <= 0);
                              # if ($t0 <= 0) goto _c

      _b:  li $v0, 5          # $t2 = call stdin.nextInt(void);
           syscall
           move $t2, $v0

           add $t1, $t1, $t2; # $t1 = $t1 + $t2;

      _n:  addi $t0, $t0, -1  # count -- #  $t0 = $t0 + -1 ;
           j _t               # goto _t
   
      _c:  move $v0, $t1      # for the mips, we put the value into $v0
           jr $ra              # return from whence I came

      ```

 1. Assignment:
    - IP: Dotted Decimal <-> Integer
      - 130.166.38.23
    - Algorithm Description
      - Use Java-based Three Address Code
      - Shifts ``( <<, >>, >>> )``
      - Masks  ``( &, I, ^, ~)``
    - Convert to MIPS instructions


 
