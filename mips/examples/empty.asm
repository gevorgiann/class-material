        .data
        				# insert your data declarations
		.text			
						# insert your code declarations

		.globl main     # define your default starting routine

main:   nop				# label for the main program
    	li $v0, 10   	# v0 = 10 (terminate == 10)
    	syscall   		# trap: terminate

