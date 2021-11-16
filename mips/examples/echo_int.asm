        .data
num:	.space 4

	.text
	.globl main

main:
	li $v0, 5     	# 5 is the code for read_int
	syscall	      	# return value is stored in $v0

	la $t0, num
	sw $v0, 0($t0)

	move $a0, $v0
	li $v0, 1    	# 1 is the code for print_int
	syscall

        li $v0, 10   	# 10 is the code for halt
        syscall

