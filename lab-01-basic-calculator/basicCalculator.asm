
.data
welcome: .asciiz "WELCOME TO YOUR CALCULATOR!"
input1: .asciiz "\n\nPlease enter your first number: "
input2: .asciiz "\nPlease enter your second number: "
goodbye: .asciiz "\nThanks for using my calculator,\n see you next time! :)\n"

sumOutput: 		.asciiz "Sum: "
differenceOutput: 	.asciiz "Difference: "
productOutput:		.asciiz "Product: "
quotientOutput: 	.asciiz "Quotient: "
remainderOutput: 	.asciiz "Remainder: "
format: 		.asciiz "\n"


.text


#gather integers
li $v0, 4			#register call to print a string	
la $a0, welcome			# print string at prompt address "welcome"
syscall 			#do it

li $v0, 4			#register call to print a string	
la $a0, input1			# print string at prompt address "input1"
syscall 
			
li $v0, 5			#register call to wait for user integer input 
syscall 			# do it

move $t1,$v0			# move integer from register v0 to t1

li $v0, 4			#register call to print a string	
la $a0, input2			# print string at prompt address "input2"
syscall 			# do it

li $v0, 5			#register call to wait for user integer input 
syscall 			# do it

move $t2,$v0			# move integer from register v0 to t2



# applicatoins of integers
# addition 
add $t3,$t1,$t2			# set t3 to sum of t1 + t2

# subtraction 
sub $t4, $t1, $t2		# set $t4 to difference of t1-t2

# multiplication
mul $t5, $t1, $t2		# set $t5 to product of t1(t2)

#division & remainder
div $t1, $t2 			# divide t1/t2
mflo $t6			# quotient in lo register set to t6
mfhi $t7			# remainder in high register set to t7


# print outputs
#print sum
li $v0, 4			# register call to print string
la $a0, sumOutput		# print sumOutput
syscall				# do it

li $v0, 1			# register call to print integer	
la $a0, ($t3)			# print integer at t3
syscall				# do it

li $v0, 4			# register call to print a string	
la $a0, format			# print new line for formatting
syscall

#print difference
li $v0, 4			# register call to print string
la $a0, differenceOutput	# print differenceOutput
syscall	

li $v0, 1			# register call to print integer	
la $a0, ($t4)			# print integer at t4
syscall	

li $v0, 4			# register call to print a string	
la $a0, format			# print new line for formatting
syscall

#print product
li $v0, 4			# register call to print string
la $a0, productOutput		# print productOutput
syscall	

li $v0, 1			# register call to print integer	
la $a0, ($t5)			# print integer at t5
syscall	

li $v0, 4			# register call to print a string	
la $a0, format			# print new line for formatting
syscall


#print quotient
li $v0, 4			# register call to print string
la $a0, quotientOutput		# print quotientOutput
syscall	

li $v0, 1			# register call to print integer	
la $a0, ($t6)			# print integer at t6
syscall	

li $v0, 4			# register call to print a string	
la $a0, format			# print new line for formatting
syscall

#print remainder
li $v0, 4			# register call to print string
la $a0, remainderOutput		# print remainderOutput
syscall	

li $v0, 1			# register call to print integer	
la $a0, ($t7)			# print integer at t7
syscall	

li $v0, 4			# register call to print a string	
la $a0, goodbye			# print goodbye string
syscall

li $v0, 10 		# register call to exit safely
syscall 		# do it
	
