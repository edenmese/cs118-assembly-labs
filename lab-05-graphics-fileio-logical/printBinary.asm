.data

welcome: .asciiz "This program will print an integer as a binary string.\nPlease enter an integer: "
newline: .asciiz "\n"

.text

main:
	li $v0, 4
	la $a0, welcome
	syscall

	li $v0, 5
	syscall
	
	move $a0, $v0

	jal print_binary

	li $v0, 10
	syscall


# Precondition $a0 is set to a number
print_binary:

	move $t0, $a0			# stash argument 
	li $t1, 31			# shift amount
	
print_binary_loop:
	bltz  $t1, print_binary_end
	move $t4, $t0	
	srlv $t4, $t4, $t1
	andi $t4, $t4, 1
	subi $t1, $t1, 1
	
	li $v0, 1
	move $a0, $t4
	syscall 
	j print_binary_loop
	
print_binary_end:
	li $v0, 11
	li $a0, '\n'
	syscall 
	
	jr $ra 
	
