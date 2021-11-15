	.data
str:	.asciiz "Hello World" # H,e,l,l,o, ,W,o,r,l,d,\0

	.text
	.globl main
main:
	li $v0, 4
	la $a0, str
	syscall		# print_string


	jr $ra
	
	.end main
