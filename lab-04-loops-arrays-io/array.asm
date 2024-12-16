.data
 	myArray: .space 12 	#12 bytes for 3 integers

.text

	li $t0, 4			# load random integers into array
	li $t1, 6
	li $t2, 10
	
	li $t3, 0			# cursor
	
	sw $t0, myArray($t3)		# myArray[0] = t0
	
	addi $t3, $t3, 4		# move over 4 bytes
	
	sw $t1, myArray($t3)		# myArray[4] = t1

	addi $t3, $t3, 4		# move over 4 bytes
	
	sw $t2, myArray($t3)		# myArray[8] = t2
	
	li $t3, 0			# set t3 offset back to 0
	lw $t4, myArray($t3)		# load the first item of the array into t4
	
	addi $t3, $t3, 4		# move the offset 4 bytes
	
	lw $t5, myArray($t3)		# load the second item of the array into t5
	
	addi $t3, $t3, 4		# move the offset 4 bytes
	
	lw $t6, myArray($t3)		# load the third item of the array into t6
	
	li $v0, 4
	
	
	
	
 	li $v0, 10			# Exit the program safely
	syscall

