.data

welcome: 	.asciiz "This program will double a Double. \n\n Please enter a Decimal: "
result:		.asciiz " doubled is "


.text

main:
	
	move $fp, $sp 		# set up the stack 
	addi $sp, $sp, -8 	# make room to store the double
	
	li $v0, 4		# prompt use for a double
	la $a0, welcome
	syscall 
	
	li $v0, 7 		# get the double
	syscall 
	
	sdc1 $f0, -4($fp)	# store the value on the stack
	
	addi $sp, $sp, -16	# make room on the stack for the two paramaters
	
	li $t1, 2		# load an int 2
	sw $t1, 0($sp)		# store the integer
	sdc1 $f0, 4($sp)	# store the double
	
	jal multiply 
	
	ldc1 $f12, -4($fp)	# load the product 
	

	li $v0 ,3 
	syscall 
	
	li $v0, 4
	la $a0, result
	syscall 
	
	li $v0, 3
	mov.d $f12, $f0
	syscall 
	
	
	
	
	


	li $v0, 10		# exit safely
	syscall


# multiply an integer by a double
# preconditions: integer parameter followed by double parameter on the stack 
# postcondition: f0 set to the product of the two numbers
multiply: 
	addi $sp, $sp, -8			# make room on the stack
	sw $ra, 4($sp)				# stash the return address
	sw $fp, 0($sp)				# stash the frame pointer
	addiu $fp, $sp, 4			# set the frame pointer this frame
	
	
	lwc1 $f2, 4($fp)			# load the integer off the stack onto coprocessor
	cvt.d.w $f2, $f2			# convert the integer to a double 
	
	ldc1 $f4, 8($fp)			# load the double on the FPU 
	
	mul.d $f0, $f2, $f4			# multiply the numbers and put product in f0 
	
	lw $ra, 0($fp)				# reset return address
	lw $fp, -4($fp)				# reset frame pointer
	addiu $sp, $sp, 24			# pop off stack 
	
	jr $ra 					# return 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	 