.data

main_memory:    .space 8

greeting:	.asciiz "\nThis program will add two numbers\n"
prompt:		.asciiz "Please enter a number:"
result:		.asciiz "The Total is: "
plus: 		.asciiz " + "


.text 	


	li $v0, 4			# print the greeting
	la $a0, greeting 
	syscall 
	
	jal getNumber			# call getNumber subroutine
	
	
	move $t0, $v0			# stash first number t0 
	
	jal getNumber			# call getNumber subroutine
	
	
	move $t1, $v0			# stash second number in t1
	
	li $t2, 4	
	sw $t0, main_memory		# storing t0 and t1 in memory
	sw $t1, main_memory($t2)
	
	
	move $a0, $t0			# set the arguments for addTwo subroutine
	move $a1, $t1			# call addTwo subroutine
	jal addTwo
	
	move $t3, $v0
	
	li $t2, 4			# read in the original opperands
	lw $t0, main_memory		# into t0
	lw $t1, main_memory($t2)	# and t1
	
	li $v0, 1			# print the first number
	move $a0, $t0
	syscall 
		
	li $v0, 4			# print the plus 
	la $a0, plus
	syscall
	
	
	li $v0, 1			# print the second number
	move $a0, $t1
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
	
	la $v0, 1		# print the result
	move $a0, $t3
	syscall
	
	
	li $v0, 10			# exit safely 
	syscall 
	
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
	
	



















		