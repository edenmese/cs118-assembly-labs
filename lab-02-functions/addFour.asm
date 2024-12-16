
.data


	main_memory: 		.space 16
	add_four_memory: 	.space 28
	prompt:			.asciiz "Please enter a number:"
	message: 		.asciiz "The sum of all 4 numbers is: "
	plus: 			.asciiz " + "


.text 	

	
	jal getNumber			# call getNumber subroutine
	move $t0, $v0			# stash first number t0 
	
	jal getNumber			# call getNumber subroutine
	move $t1, $v0			# stash second number in t1
	
	jal getNumber			# call getNumber subroutine
	move $t4, $v0			# stash second number in t4
	
	jal getNumber			# call getNumber subroutine
	move $t5, $v0			# stash second number in t5
	

	sw $t0, main_memory + 0		# storing t0, t1, t3, t4, & t5 in memory
	sw $t1, main_memory + 4
	sw $t4, main_memory + 8
	sw $t5, main_memory + 12
	
	
	
	move $a0, $t0			# set the arguments for addTwo subroutine
	move $a1, $t1			# call addTwo subroutine
	move $a2, $t4
	move $a3, $t5
	jal addFour
	
	move $t3, $v0
	
	
	lw $t0, main_memory		# into t0
	lw $t1, main_memory + 4		# and t1
	lw $t4, main_memory + 8
	lw $t5, main_memory + 12
	
	li $v0, 1			# print the first number
	move $a0, $t0
	syscall 
		
	li $v0, 11			# print the plus 
	la $a0, '+'
	syscall
	
	
	li $v0, 1			# print the second number
	move $a0, $t1
	syscall
	
	li $v0, 11			# print the plus 
	la $a0, '+'
	syscall
	
	
	li $v0, 1			# print the fourth number
	move $a0, $t4
	syscall
	
	li $v0, 11			# print the plus 
	la $a0, '+'
	syscall
	
	
	li $v0, 1			# print the fourth number
	move $a0, $t5
	syscall
		
	li $v0, 11			# print space
	li $a0, ' '
	syscall 
	
	li $v0, 11			# print equal char
	li $a0, '='
	syscall 
	
	li $v0, 11			# print space
	li $a0, ' '
	syscall 
	
	la $v0, 1			# print the result
	move $a0, $t3
	syscall
	
	
	li $v0, 10			# exit safely 
	syscall 
	
	
	
	
# adds four numbers together using addTwo subroutine 
# preconditon: $a0 to $a3 will contain the four numbers
# postcondition: $v0 is the sum of all four numbers
addFour:
	sw $ra, add_four_memory + 0			# store the return address
	sw $a0, add_four_memory + 4			# store the subroutine aruments
	sw $a1, add_four_memory + 8			
	sw $a2, add_four_memory + 12
	sw $a3, add_four_memory + 16
			
	jal addTwo 					# call addTwo on the first two arguments
	sw $v0, add_four_memory + 20			# save the result
	
	lw $a0, add_four_memory + 12			# call addTwo on the 3rd and 4rth arguments
	lw $a1, add_four_memory + 16
	jal addTwo					
	sw $v0, add_four_memory + 24			# save the result
	
	lw $a0, add_four_memory + 20			# load the two result and add them 
	lw $a1, add_four_memory + 24
	jal addTwo 
	
	lw $ra, add_four_memory + 0
	jr $ra
	
	
	
	
	
	
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
	
	
