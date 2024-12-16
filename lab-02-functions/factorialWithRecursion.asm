.data

message: .asciiz "Enter a number for the factorial: "
result:  .asciiz "The factorial is: "
.text



main:
	move $fp, $sp			# set the frame pointer to the beggining of the stack
	
	li $v0, 4			# print the prompt message 
	la $a0, message			
	syscall
	
	li $v0, 5			# collect the input from the user
	syscall 
	
	move $a0, $v0 			# move the input into a0
	
	jal factorial 			# call factorial
	
	move $t0, $v0			# save the result in t0
	
	li $v0, 4			# print the result message
	la $a0, result
	syscall
	
	move $a0, $t0			# move the result to a0
	
	li $v0, 1			# print the result 
	syscall



li $v0, 10		# exit safely
syscall




#precondition: $a0 contains (number) for n!
#postcondition: $v0 contains n!
factorial: 
	addi $sp,$sp, -12		# make room on the stack for 3 words
	sw $fp, 4($sp)			# store the $fp on the stack 
	addi $fp, $sp, 8		# move the $fp to the beginning of this stack frame
	sw $ra, 0($fp)			# store the $ra where the $fp is pointing
	sw $a0, -8($fp)			# store the n value on the stack
	
baseCase:
	bgtz $a0, generalCase 		# if (n > 0) go to general case
	li $v0, 1			# 0!  = 1
	j factorialRestore		# jump past the general case
	
generalCase:
	subi $a0, $a0, 1		# set a0 to n-1
	jal factorial 			# make the recursive call
	
	lw $t0, -8($fp)			# load n back off the stack
	mul $v0, $t0, $v0		# return n * (n-1)!
	move $t0, $v0
		
		
factorialRestore: 
	lw $ra, 0($fp)			# restore the $ra (return address)
	lw $fp, -4($fp)			# restore the $fp (frame pointer)
	addi $sp, $sp, 12
	
	jr $ra				# return










	
