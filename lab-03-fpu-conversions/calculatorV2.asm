.data
welcome: .asciiz "WELCOME TO YOUR CALCULATOR!"
input1: .asciiz "\n\nPlease enter your first decimal number: "
input2: .asciiz "\nPlease enter your second decimal number: "
goodbye: .asciiz "\nThanks for using my calculator,\n see you next time! :)\n"

sum_output: 		.asciiz "Sum: "
difference_output: 	.asciiz "Difference: "
product_output:		.asciiz "Product: "
quotient_output: 	.asciiz "Quotient: "
format: 		.asciiz "\n"

.text

main:
	move $fp, $sp 			# set up frame pointer
	li $v0, 4			# register call to print a string	
	la $a0, welcome			# print string at prompt address "welcome"
	syscall 			#do it

	li $v0, 4			# register call to print a string	
	la $a0, input1			# print string at prompt address "input1"
	syscall 
			
	li $v0, 7			# syscall to read double input
	syscall 			# do it
	
	mov.d $f2, $f0			# move first input from f0/f1 to f2/f3
	
	li $v0, 4			#register call to print a string	
	la $a0, input2			# print string at prompt address "input2"
	syscall 			# do it

	li $v0, 7			# syscall to read double input #2 
	syscall 			# do it
	
	mov.d $f4, $f0			# move second input from f0.f1 to f4/f5
	
	jal calculations		# jump and link to calculations
	
	li $v0, 10			# Exit safely
	syscall
	
calculations: 
	# create stack 
	addi $sp,$sp, -24		# make space for two doubles, fp, and ra (1 double = 8 bytes)
	sw $fp, 16($sp)			# store frame pointer
	addi $fp, $sp, 20		# update frame pointer
	sw $ra, 0($fp)			# store return address
	s.d $f2, -8($fp)		# store first double
	s.d $f4, -16($fp)		# store second double
	
	# load from stack 
	ldc1 $f2, -8($fp)		# load first double into f2
	ldc1 $f4, -16($fp)		# load second double into f4
	
	# calculations
	add.d $f6, $f2, $f4 		# calculate sum and sotre in f6/f7
	sub.d $f8, $f2, $f4		# calculate difference and store in f8/f9
	mul.d $f10, $f2, $f4		# calculate prodult and store in f10/f11
	div.d $f14, $f2, $f4		# calculate quotient and store in f14/f15
	
results: 

	# print sum
	li $v0, 4			# register call to print string
	la $a0, sum_output		# print sumOutput
	syscall				# do it
	
	mov.d $f12, $f6			# move sum result from f6/f7 to f12/f13
	li $v0, 3			# syscall to print double	
	syscall				# do it
	
	li $v0, 4			# register call to print a string	
	la $a0, format			# print new line for formatting
	syscall
	
	# print difference
	li $v0, 4			# register call to print string
	la $a0, difference_output	# print difference_output
	syscall				# do it
	
	mov.d $f12, $f8			# move sum result from f8/f9 to f12/f13
	li $v0, 3			# syscall to print double	
	syscall				# do it
	
	li $v0, 4			# register call to print a string	
	la $a0, format			# print new line for formatting
	syscall
	
	# print product
	li $v0, 4			# register call to print string
	la $a0, product_output		# print sumOutput
	syscall				# do it
	
	mov.d $f12, $f10		# move sum result from f10/f11 to f12/f13
	li $v0, 3			# syscall to print double	
	syscall				# do it
	
	li $v0, 4			# register call to print a string	
	la $a0, format			# print new line for formatting
	syscall
	
	# print quotient
	li $v0, 4			# register call to print string
	la $a0, quotient_output		# print sumOutput
	syscall				# do it
	
	mov.d $f12, $f14		# move sum result from f14/f15 to f12/f13
	li $v0, 3			# syscall to print double	
	syscall				# do it
	
	
	# print goodbye
	li $v0, 4			# register call to print a string	
	la $a0, goodbye			# print goodbye message
	syscall
	
	# restore, pop off return from stack 
	lw $ra, 0($fp)			# restore ra
	lw $fp, -4($fp)			# restore fp
	addi $sp, $sp, 24		# pop off stack 

	jr $ra				# return 






