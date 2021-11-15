# MARS: Installation and Startup
During the next segment of our class, we will be learning more about the MIPS assemble language.  Moreover, you will need to write a number of programs in MIPS assemble.  To help you with these activities, you will need the use of a MIPS assembler, specifically, MARS

In this assignment, you will download a copy of MARS and perform a number of exercises to familiarize yourself with this simulator.  

Perform the following steps:

Download the MARS simulator by downloading the software from: http://courses.missouristate.edu/KenVollmar/MARS/.
(Note that the above link is over http.  If you use https it will fail.)
Install the software onto your computer.  Several security might arise with installing this software.
For example on a Mac, you will need to do the following:
In the Finder on your Mac, locate the app you want to open.
Control-click the app icon, then choose Open from the shortcut menu.
Click Open.
Create a director/folder on your laptop computer for all the materials associated with MIPS, e.g.,
$ mkdir $HOME/comp122/mips

Secure copy various files from the sandbox server
$ scp -r ssh.sandbox.csun.edu:~steve/comp122/mips $HOME/comp122/mips

Download a copy of the following documents.  (Note these files are included files you just scp-ed.
MIPS language using QTSpim
MIPS Cheat Sheet
MIPS Assembly Language
MIPS Instruction Types 
 Launch the QT simulator and perform the following exercises:
 
Exercise #1:  Review the Menu Bar.
The menu bar is broken down into three major sections: 

File operations.  New, open, save
Edit operation: Undo, redo, cut, paste, etc.
Run operations: Assemble, execute, forward step, backward step, pause, stop, reset.
 
Exercise #2: Load and execute the "empty.asm" code
Load the 'empty.asm' code:  (File -> Open )
       .data
        .text
        .globl main

main:
        nop
        jr $ra

Assemble the code: (Run -> Assemble)
Step through your code:  (Run -> Step)
watch what happens in the Text Segment window
 
Exercise #3: Load and execute the "hello_world" code
Load the 'hello_world.asm' code:  (File -> Open )
            .data
str:     .asciiz "Hello World"

          .text
          .globl main
main:
         li $v0, 4
         la $a0, str
         syscall         # print_string

        jr $ra

Assemble the code: (Run -> Assemble)
Single step through the program until the simulator stops
watch what happens in the Text Segment and the Register windows
Notice that when you encounter the 'syscall' command, an internal subcommand is executed that prints a string. The syscall takes two arguments; in our example, the values are stored in two special registers:  $v0 and $a0.  The value of the $v0 register specifies that system should print a string.  The value of the $a0 register contains the address in memory of the string.

When you step over this 'syscall' command, look at the console window where the string "hello world" should be printed.  All I/O results are performed within this window.

Exercise #5: Load and execute the "echo_int" code
Load the 'echo_int.asm' code:  (File -> Open )
               .data
num:    .space 4

               .text
               .globl main

main:
              li $v0, 5       # 5 is the code for read_int
              syscall         # return value is stored in $v0

              la $t0, num
              sw $v0, 0($t0).    #Store the results in memory

             move $a0, $v0
             li $v0, 1       # 1 is the code for print_int
             syscall

             jr $ra

Assemble the code: (Run -> Assemble)
Single step through the program until the simulator stops
watch what happens in the Text Segment and the Register windows
In this example, the simulator should stop on the 'syscall' command.  This particular call to the 'syscall' command reads and integer from the console.  You should enter a integer (followed by a return) in the console.  Notice the binary representation of your number has been placed into register $v0.  

This number is then placed into memory, by the 'sw' instruction, at the address 'num'.  We also move this value into $v0.  This register is subsequently used by the next 'syscall' command to print the integer out to the console.

 
Deliverable:

Upload a text file, which contains the string "Done".