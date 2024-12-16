.data
prompt: .asciiz "Please enter a number: "
result: .asciiz "The largest of all 8 numbers is:  "

.text

main:
	jal build_stack					# jump and link to build_stack
		
	
	li $v0, 10		# exit safely
	syscall
	
build_stack: 
	addi $sp, $sp, -40				# make space for 8 integers, fp, and ra
	sw $fp, 32($sp)					# save current fp to stack
	addi $fp, $sp, 36				# update fp to new position
	sw $ra, 0($fp)					# save ra at the start of the frame
	
	li $t0, 0					# initialize t0 as loop counter for input gathering

fill_stack_loop: 	

	bgt $t0, 7, find_max				# if t0 > 7, all inputs are gathered; go to find_max
	
	jal prompt_input				# jumpt and link prompt_input
	
	mul $t1, $t0, 4					# calculate offset for each integer position on stack 
	add $t1, $sp, $t1				# add offset to sp 
	
	sw $v0, 0($t1)					# store input value in v0 at t1
	addi $t0, $t0, 1				# increment loop counter, t0, by 1

	j fill_stack_loop				# loop back to fill_stack_loop
	
prompt_input: 
	li $v0, 4					# print prompt string
	la $a0, prompt
	syscall 
		
	li $v0, 5					# load syscall to read integer input
	syscall
	
	jr $ra						# return 
	
find_max: 
	lw $t0, 0($sp)					# load first element of stack into t0(initial max)
	addi $t2, $sp, 4				# set t2 to point to second element in stack
	
	li $t1, 7					# set loop counter t1 to 7 
	
max_loop:
	beq $t1, $zero, stack_full			# if t1 == 0, loop is complete; jump to stack_full
	lw $t3, 0($t2)					# load next element to t3
	slt $t4, $t0, $t3				# set t4 to 1 if current max (t0) < next element(t3)
	
	 beq $t4, $zero, skip_update 			# if t4 is 0 , skip update
	 move $t0, $t3					# or update t0 to new max value in t3

skip_update:
	addi $t2, $t2, 4				# t2 moves to next element
	addi $t1, $t1, -1				# decrement loop counter by 1
	j max_loop					# loop back to max_loop 
			
	
stack_full: 
	li $v0, 4					# print result message 
	la $a0, result
	syscall 
	
	move $a0, $t0					# move the mx value in t0 to a0
	li $v0, 1					# print integer in a0 
	syscall 
			
	lw $ra, 0($fp)					# restore ra 
	lw $fp, 32($sp)					# restore fp
	addi $sp, $sp, 40				# pop off stack
	jr $ra						# return 
	





