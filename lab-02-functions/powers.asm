.data
prompt_base:       .asciiz "Enter the base number: "
prompt_exponent:   .asciiz "Enter the exponent: "
result_msg:        .asciiz "The result is: "

.text

main: 
	move $fp, $sp			# set frame pointer to stack pointer
	jal prompt_input		# jump and link to prompt_input
	
	li $v0, 10			# exit safely
	syscall 

prompt_input: 

	addi $sp, $sp, -8		# make room on the stack for fp and ra
	sw $fp, 4($sp)			# save fp
	addi $fp, $sp, 4		# update fp
	sw $ra, -4($fp)			# save ra

	li $v0, 4			# print prompt_base message	
	la $a0, prompt_base 
	syscall 
	
	li $v0, 5			# set syscall for reading integer
	syscall 
	
	move $a1, $v0			# store base input in a1
			
	li $v0, 4			# print prompt_exponent	
	la $a0, prompt_exponent 
	syscall 
	
	li $v0, 5			# set syscall for reading integer
	syscall 
	
	move $a2, $v0 			# store exponent input in a2
	
	jal power			# jump and link to power subroutine
	
	move $t0, $v0			# store result in t0 
	
	li $v0, 4			# print result_msg
	la $a0, result_msg		
	syscall 
	
	move $a0, $t0  			# move result into a0
	
	li $v0, 1			# set syscall for printing integer
	syscall 
	
	lw $ra, -4($fp)			# restore ra
	lw $fp, 0($fp)			# restore fp 
	addi $sp, $sp, 8		# pop off stack 
	
	jr $ra 				# return to main
	
power: 
	
	addi $sp, $sp, -16		# make room on stack for fp, ra, base, and exponent
	sw $fp, 8($sp)			# save fp 
	addi $fp, $sp, 12		# update fp 
	sw $ra, 0($fp)			# save ra
	sw $a1, -8($fp)			# store base
	sw $a2, -12($fp)		# store powers
		
base_case: 
	beqz $a2, zero_power		# if exponent = 0, go to zero_power 
	j general_case			# jump and link general_case
	
zero_power:
	li $v0, 1			# base result (anything^0 = 1)
	j power_restore 		# jump and link power_restore

general_case: 
	lw $t0, -12($fp)		# load exponent 
	addi $t0, $t0, -1		# decrement expoenent by 1
	move $a2, $t0			# store new expoennt in a2
	
	jal power			# recursive call to power with new exponent 
	
	lw $t1, -8($fp)			# load content of -8(fp) into t1	
	mul $v0, $t1, $v0		# multiply v0 with t1 and place in v0 
	
	
power_restore: 
	
	lw $ra, 0($fp)			# resore ra
	lw $fp, -4($fp)			# restore fp 
	addi $sp, $sp, 16		# pop off stack 
	
	jr $ra				# return to calling function 
