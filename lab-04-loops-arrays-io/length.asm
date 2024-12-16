# Use this file to complete the in class String length example.
.data

	string: .space 100
	message: .asciiz "String length is: "
	prompt: .asciiz "Please enter a string: "

.text

	li $v0, 4		# prompt the user to enter a string
	la $a0, prompt
	syscall
	
	li $v0, 8		# collect the string input
	la $a0, string		# put it in memory at the string label
	li $a1, 100		# limit the input to 100
	syscall 
	
	# int i = 0
	# while (string[i] != \0) {
	#	i++;
	# }
	
	li $t0, 0		# set counter to 0
	
lengthLoop:


	lb $t1, string($t0)	# get the char at string[t0]
	beq $t1, $zero, lengthFound
	addi $t0, $t0, 1
	
	j lengthLoop
lengthFound:
	subi $t0, $t0, 1	# back up 1 because we counted the \0			
	li $v0, 4		# print the message
	la $a0, message
	syscall
	
	li $v0, 1		# print the length (t0)
	move $a0, $t0
	syscall
	
 	li $v0, 10		# Exit the program safely
	syscall
