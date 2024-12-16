.data



.text

main:

	li $a0, 10			# push 10 on stack
	jal push 
	
	li $a0, 8			# push 8 on stack		
	jal push	
	
	li $a0, 16			# pusjh 16 on stack 
	jal push
	
	jal pop				# pop 16 off stack
	
	move $a0, $v0
			
	li $v0, 1			# print 16
	syscall 
	
	jal top 			# get value on top of stack
	move $a0, $v0
	li $v0, 1 			# print
	syscall 
	
	

	li $v0, 10		# exit safely
	syscall


#precondition: $a0 contains the integers to be pushed onto the stack
#postconditoin: the value passed will be on the top of stack
push: 
	subi $sp, $sp, 4 		# make room on stack for one word
	sw $a0, 0($sp)			# store the value on the stak 
	jr $ra				# return




#postcondition: top word will be removed from stack
# 		$v0 will contain the value from the top of stack
pop: 
	lw $v0, 0($sp)			# load the top value of stack into $v0
	addi $sp, $sp, 4		# move stack pointer down by one word
	jr $ra				# return 
	

#postcondition: $v0 will contain the value from the top of stack
top:
	lw $v0, 0($sp)			# get top value of stack and put it in $v0
	jr $ra				# return 
	

