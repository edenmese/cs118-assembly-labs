

.text

	addi $t1, $zero, 2  	# use for a
	addi $t2, $zero, 3      # use for b
	addi $t3, $zero, 0	# use for c
	
	li $v0, 5		# get integer from user
	syscall
	
	move $t1, $v0		# move the integer to t1
	
	li $v0, 5		# get integer from user
	syscall

	move $t2, $v0		# move the integer to t2
	
	bne $t1, $t2, true	# if a != b jump to true
false:
	li $t3, 1		# c = 1
	j end			# jump to end
true:
	li $t3, 2		# c = 2
	
end:


	li $v0, 10		# Exit the program safely
	syscall