.data

stash: .space 4
prompt: .asciiz "Please enter a number: "
result: .asciiz "! = "



.text


main:
	
	li $v0, 4				# print the prompt
	la $a0, prompt
	syscall 
	
	
	li $v0, 5				# get an integer from user
	syscall 
	
	move $t0, $v0				# stash the input in t0

	
	sw $t0, stash				# save the value of t0 in memory
	

	move $a0, $t0				# set function argument to t0
	jal factorial				# call factorial
			
	move $t1, $v0				# stash result in t1
	
	lw $t0, stash				# read the stashes value from memory
	
	li $v0, 1				# print initial value 
	move $a0, $t0
	syscall
			
	li $v0, 4				# print result string
	la $a0, result
	syscall
	
	li $v0, 1				#print the result
	move $a0, $t1				# move the result to a0
	syscall
	
	
	li $v0, 10				# exit safely
	syscall




factorial: 
	# calculates the factorial of a number such as 5!
	# precondition: $a0 contains the number to calculate
	# postcondition: $v0 contains the fcalculated factorial 
	
	li $s0, 1		#accumulator
	
factorial_loop: 
	beqz $a0, factorial_loop_end		# loop while a0 is not 0
	mul $s0, $s0, $a0			# multiply a0 * t0 and store in t0
	subi $a0, $a0, 1			# decrement a0
	j factorial_loop			# loop to beginning

factorial_loop_end:

	move $v0, $s0				# move result to v0	
	jr $ra					# return
		
	

	
	
	
