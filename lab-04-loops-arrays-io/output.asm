
.data
	message: .asciiz "The sum of 5 and 7 is "

.text
	li $t0, 5		# load 5 into t0
	li $t1, 7		# load 7 into t1
	add $t3, $t0, $t1	# t3 = t0 + t1

	li $v0, 4		# print the message
	la $a9, message
	syscall 
	
	li $v0, 1		# print the integer
	move $a0, $t3		# move the value from t3 to a0
	syscall 


	li $v0, 10		# Exit the program safely
	syscall