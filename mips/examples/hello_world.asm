		.data
str:	.asciiz "Hello World\n" # H,e,l,l,o, ,W,o,r,l,d,\,\0

		.text
		.globl main
main:
		li $v0, 4		# v0 = 4 (print_string == 4)
		la $a0, str 	# a0 = & str
		syscall			# trap: print_string(str)

    	li $v0, 10   	# v0 = 10 (terminate == 10)
    	syscall   		# trap: terminate


