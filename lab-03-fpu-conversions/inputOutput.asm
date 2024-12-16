.data


number1:  	.word 	0
number2: 	.double 0
prompt:		.asciiz "\nPlease enter a floating point value: "
prompt2:	.asciiz "\nPlease enter a double value: "
result: 	.asciiz "\nThe number you entered was: "


.text

main:

	#jal workingWithFloats
	jal workingWithDoubles


	li $v0, 10	# Exit safely
	syscall

workingWithFloats: 
	li $v0, 4			# prompt the user for a float number 
	la $a0, prompt 
	syscall 
	
	li $v0, 6			# get the floating point number from user to be stored in f0
	syscall  
	
	swc1 $f0, number1		# store the floating number in memory (number1)
	
	lwc1 $f12, number1		# load float value from memory (f12 is for printing floats)
	
	li $v0, 4			# print the result string
	la $a0, result 
	syscall 
	
	li $v0, 2			# print the floating point number 
	syscall 
	
	jr $ra

workingWithDoubles: 

	li $v0, 4			# prompt the user for a double number 
	la $a0, prompt2
	syscall 
	
	li $v0, 7			# get the double point number from user to be stored in f0
	syscall  
	
	sdc1 $f0, number2		# store the double number in memory (number1)
	
	ldc1 $f12, number2		# load double value from memory (f12 is for printing double)
	
	li $v0, 4			# print the result string
	la $a0, result 
	syscall 
	
	li $v0, 3			# print the floating point number 
	syscall 
	
	jr $ra
	
	

	
	

	




