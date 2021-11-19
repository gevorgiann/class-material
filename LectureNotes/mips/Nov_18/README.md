# Lecture Notes for November 17, 2021

## Intro to Control Flow
  - https://docs.google.com/presentation/d/1fSqTuilCVzfNpFDn6VQ-v-gxnGmZUOqENw2i0Q4tyFg/edit#slide=id.gfbcb37c684_0_300

### Agenda
 1. Questions from last time:
    - (M) why .data, .text, and .globl at the top of my .asm file
    - (M) typo in syscall #14
    - (A) none
 1. Quick Review from last time (Afternoon)
    1. Big Picture for compilation
    1. Review of a System Call
    1. ISA: Mips
       - Registers: 32 general, CoProc 1 (fp unit), CoProc 0 (brain)
         - convention existes on the 32 general registers
       - Memory Organization
         - orientiation, width (8 bits - 1 byte), size, well-known segments
         - alignment  
         - Big Endian and Little Endian
    1. Assemble Directives
       - .data, .text, .glob
       - .include, .macro --> .end_macro
    1. Data directives
       - .byte, .half, .word,
       - .float, .double
       - .space #, 
       - .ascii, .asciiz
   1. addressing modes
      - immediate, it has a literal value in the statement:   li $v0, 5
      - direct, it has only registers or a memory location:  add $5, $5, A
      - indirect (like a pointer or an array), we go through the name location:
         - lw $s0, 9($t0)

 1. Quick Review from last time (Morning)
    1. Compilation Process
    1. MIPS ISA
       - Memory: orientation, size, width, datatypes, alignment, endianness
       - Stack orientation and reference ?
       - Foreshadowing for COMP222 & 322
       - Registers
       - Syscalls
       - Basic Instructions
       - addressing modes: immediate, direct, and indirect
    1. MARS
       - assembler directives: e.g., .macro, .include
       - data declarations: .asciiz, .word.
       - segement declaration: .text, .data


 1. Subroutine Calls (simple)
    - Frames (slides)
    - simple_call.asm
    - more slides
 1. Three Address Code
 1. Basic Blocks
 1. Control Flow
    - sum_10.asm

## Did not got to...
 1. Assignment
    - IP: Dotted Decimal <-> Integer
    - Algorithm Description
      - Use Java-based Three Address Code
      - Shifts ``( <<, >>, >>> )``
      - Masks  ``( &, I, ^, ~)``
    - Convert to MIPS instructions


