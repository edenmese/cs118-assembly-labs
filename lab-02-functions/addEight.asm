
.data

	prompt:		.asciiz "Please enter a number:"
	message: 	.asciiz "The sum of all 8 numbers is: "


.text

main:


	subi $sp, $sp, 4	# make room for the return value
	subi $sp, $sp, 32	# make room for 8 paramaters
	
	move $t0, $sp		# set ptr = stack pointer
	addi $t1, $t0, 28	# top address
	
	
input: 
	bgt $t0, $t1, input_end
	
		jal getNumber		# get an argument from the user
		sw $v0, 0($t0)		# put on stack as argument
		addi $t0, $t0, 4	# i++
		j input
	
	
input_end: 
	jal addEight		# call addEight
	
	lw $t0, 0($sp)		# put the return value in t0
	
	addi $sp, $sp, 4	# pop the last word off the stack 
	
	li $v0, 4		# print string
	la $a0, message	
	syscall 
	
	li $v0, 1 		# print integer
	move $a0, $t0		# move result to a0
	syscall 
		

	li $v0, 10		# exit safely
	syscall

	





#precondition: one word on the stack reserved for the return value 
# 	       8 integers stored on the stack as functionarguments
#postcondition: return value will be stored on the stack 
addEight: 
	subi $sp, $sp, 16		# make room on stack for local variables, fp, and ra
	sw $fp, 0($sp)			# stash the old fp 
	addi $fp, $sp, 48		# set the fp to the bottom of the stack 
	sw $ra, -44($fp)		# stash the return address 
	
	
	## GET THE SUM OF ARGUMENTS 1-4
	
	subi $sp, $sp, 16		# make room on stack for the 4 paramaters
	
	lw $t0, -4($fp)			# load the 1rst argument
	sw $t0, 0($sp)			# set the 1rst argument
	
	lw $t0, -8($fp)			# load the 2nd argument
	sw $t0, 4($sp)			# set the 2nd argument
	
	lw $t0, -12($fp)		# load the 3rd argument
	sw $t0, 8($sp)			# set the 3rd argument
	
	lw $t0, -16($fp)		# load the 4rth argument
	sw $t0, 12($sp)			# set the 4rth argument
	
	jal addFour			# call addFour
	
	sw $v0, -36($fp)		# stash the sum of the first 4 arguments
	
	## GET THE SUM OF ARGUMENTS 5-8
	
	subi $sp, $sp, 16		# make room on stack for the 4 paramaters
	
	lw $t0, -20($fp)		# load the 5th argument
	sw $t0, 0($sp)			# set the 5th argument
	
	lw $t0, -24($fp)		# load the 6th argument
	sw $t0, 4($sp)			# set the 6th argument
	
	lw $t0, -28($fp)		# load the 7th argument
	sw $t0, 8($sp)			# set the 7th argument
	
	lw $t0, -32($fp)		# load the 8th argument
	sw $t0, 12($sp)			# set the 8th argument
	
	jal addFour			# call addFour
	
	sw $v0, -40($fp)		# stash the sum of the first 4 arguments
	
	lw $a0, -40($fp)		# set the arguments for addTwo 
	lw $a1, -36($fp)

	jal addTwo 			# call addTwo 
	
	sw $v0, 0($fp)
	
	
	
	lw $ra, -44($fp)		# reset the return address
	lw $fp, -48($fp)		# reset the frame pointer 
	addi $sp, $sp, 56		# pop the stack including the paramaters
					# but leaving the return value
	jr $ra				# return 





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
	
	
