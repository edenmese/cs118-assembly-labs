
.data

	prompt:		.asciiz "Please enter a number:"
	message: 	.asciiz "The sum of all 4 numbers is: "


.text

main:
	subi $sp, $sp, 20	# make room for 5 paramaters
	sw $fp, 16($sp)		# save the frame pointer for main
	
	
	move $t0, $sp		# set ptr = stack pointer
	addi $t1, $t0, 12	# top address
	
	
	
	
	
input: 
	bgt $t0, $t1, input_end
	
		jal getNumber		# get an argument from the user
		sw $v0, 0($t0)		# put on stack as argument
		addi $t0, $t0, 4	# i++
		j input
		
		
	
	
input_end: 
	jal addFour		# call addFour
	
	move $t0, $v0		# stash the result
	
	li $v0, 4		# print string
	la $a0, message	
	syscall 
	
	li $v0, 1 		# print integer
	move $a0, $t0		# move result to a0
	syscall 
		

	li $v0, 10		# exit safely
	syscall

	





#precondition: 4 integers stored on the stack
#postcondition: $v0 equal to the sum of the four numbers
addFour: 	
	subi $sp, $sp, 16		# make room on stack for 4 words
	sw $ra, 12($sp)			# store the return address
	sw $fp, 8($sp)			# store the frame pointer 
	
	addi $fp, $sp, 28		# set the frame pointer to the top of the frame
	
	
	lw $a0, 0($fp)			# load the first argument
	lw $a1, -4($fp)			# load the second argument
	

	jal addTwo			# call addTwo 
	sw $v0, -24($fp)		# store the first result
	
	lw $a0, -8($fp) 		# load the 3rd argument
	lw $a1, -12($fp)		# load the 4rth argument
	
	jal addTwo 			# call addTwo 
	
	sw $v0, -28($fp)		# store the 2nd result
	
	lw $a0, -24($fp)		# load the first result
	lw $a1, -28($fp)		# load the second result
	
	jal addTwo 			# call addTwo 
	
	
	lw $ra, -16($fp)		# reset return address
	lw $fp, -20($fp)		# reset framepointer
	
	addi $sp, $sp 28		# pop the stack frame off the frame	
	
	jr $ra				# return 
	
		
	
	
	
# adds two numbers 
# precondition: $a0 and $a1 are set to the values to be summed
# postcondition: $v0 will be equal to the sum of the two arguments
addTwo: 
	add $v0, $a0, $a1
	jr $ra
	
	
# prompts the user for a number and returns what they entered
# precondition: N/A
# postcondition: $v0 will hold the number entered
getNumber: 
	li $v0, 4
	la $a0, prompt			# print the prompt
	syscall 	
	
	li $v0, 5			# get an integer
	syscall 
	
	jr $ra
	
	
