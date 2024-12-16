
.data
	prompt: .asciiz "Enter a number: "
	result: .asciiz " doubled is: "

.text
	li $v0, 4		# print prompt
	la $a0, prompt
	syscall
	
	li $v0, 5		# get an integer from the user
	syscall
	
	move $t0, $v0	
	
	li $v0, 1		# print the integer
	move $a0, $t0
	syscall
	
	li $v0, 4		# print the result string
	la $a0, result
	syscall
	
	li $v0, 1		# print the doubled number
	add $a0, $t0, $t0	# double number
	syscall	
	
	li $v0, 4
	

	li $v0, 10		# Exit the program safely
	syscall