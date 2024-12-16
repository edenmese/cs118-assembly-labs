.data 

mealPrompt: 	.asciiz "Please enter the meal price (in cents): "
taxPrompt: 	.asciiz "Please enter the tax rate (as a percentage): "
tipPrompt: 	.asciiz "Please enter the tip rate :) (as a percentage): "
totalPrompt: 	.asciiz "The total bill is: "



.text
main: 
	move $fp, $sp		# set the fp to the stack starting place
	subi $sp, $sp, 12 	# make room on the stack for 3 numbers
	
	la $t0, mealPrompt	# load address of the meal prompt
	
	subi $sp, $sp, 4	# make room on the stack for the address of the prompt
	sw $t0, 0($sp)		# store the address on the stack 
	jal getInput 		# call the get input function
	
	
	sw $v0, 0($fp)		# store the result in the local variable (mealPrice)
	
	la $t0, taxPrompt	# load address of the meal prompt
	subi $sp, $sp, 4	# make room on the stack for the address of the prompt
	sw $t0, 0($sp)		# store the address on the stack 
	jal getInput 		# call the get input function
	
	sw $v0, -4($fp)		# store the result in the local variable (mealPrice)
	
	la $t0, tipPrompt	# load address of the meal prompt
	subi $sp, $sp, 4	# make room on the stack for the address of the prompt
	sw $t0, 0($sp)		# store the address on the stack 
	jal getInput 		# call the get input function
	
	sw $v0, -8($fp)		# store the result in the local variable (mealPrice)
	
	addi $sp, $sp, -12	# make room on the stack for 4 words 
	
	lw $t0, 0($fp)		# load the meal price 
	sw $v0, -16($fp)	# addd the meal price to the stack 
	
	lw $t0, -4($fp)		# load the tax rate 
	sw $t0, -20($fp)	# add the tax rate to the stack 
	
	lw $t0, -8($fp)		# load the tip rate 
	sw $t0, -24($fp)	# add the tip rate to the stack 	
	
	jal mealCalc 		# call mealCalc
	
	lw $t0, 0($sp)		# get the return value
	
	div $t1, $t0, 100 	# splitting the dollars and cents
	mflo $t2 		# get dollars
	mfhi $t3		# get cents
	
	li $v0, 4		# prompt with "The total bill is: "
	la $a0, totalPrompt
	syscall
	
	li $v0, 11		# print the '$'
	la $a0, '$'
	syscall 
	
	li $v0, 1		# print the decimal '.'
	move $a0, $t2
	syscall
	
	li $v0, 11		# 
	la $a0, '.'
	syscall  
		
	li $v0, 1
	move $a0, $t3
	syscall
	
	

	
	





li $v0, 10			# exit safely
syscall

#precondition: the address of the prompt is on the stack 
#postcondition: the entered integer will be in $v0
getInput: 

#set the stack & save fp and ra
	subi $sp, $sp, 8		# added 2 words worth of space on the stack
	sw $fp, 4($sp)			# stored the fp on the stack
	addi $fp, $sp, 8		# moved the fp to the bottom of this frame 
	sw $ra, -8($fp)			# stored the return address on the stack 
	
	lw $a0, 0($fp)			# get the prompt address from the paramater
	li $v0, 4			# print the prompt
	syscall
	
	li $v0, 5			# collect an integer
	syscall 
	
	
	
# set fp and ra back
	lw $ra, -8($fp)			# reset ra
	lw $fp, -4($fp)			# reset fp
	addi $sp, $sp, 12 		# pop 2 words off the stack 
	jr $ra				# return 

	
#preconditions: space for the return value and the 3 paramaters on the stack
#postcondiiton: the result is on the top of the stack 	
mealCalc: 	
	addi $sp, $sp, -8		# made space for 2 words on the stack
	sw $fp, 4($sp)			# stash the fp for the last frame 
	addi $fp, $sp, 20		# reset the fp for this frame
	sw $ra, -20($fp)		# stash the return address in the previous function 
	
	lw $s0, -4($fp)			# load the meal cost
	lw $s1, -8($fp)			# load the tax rate
	lw $s3, -12($fp)		# load the tip rate 
	
	
	mul $s3, $s0, $s1		# calculate the tax amount
	div $s3, $s3, 100
	mul $s4, $s0, $s2		# calculate the tip amount 
	div $s4, $s4, 100		
	
	add $v0, $s0, $s3		# add the meal cost and tax amount
	add $v0, $s0, $s4		# add the runnning total and the tip amount
	
	sw $v0, 0($fp)			# store the result on the stack 
	
	
	
	
	lw $ra, -20($fp)	 	# reset the return address
	lw $fp, -16($fp)		# restore the frame pointter
	addi $sp, $sp, 20 		# pop- off the stack leaving the return value 
	jr $ra 				# return 
	
	
	
	
	
	
	
	
	
	
	