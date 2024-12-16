.data

.text


main:

	li $a0, 0xFFFFFFFF	# Getting the most significant bit
	jal most_significant

	li $a0, 101
	jal most_significant

	li $a0, 101
	jal least_significant 	# Getting the least significant bit

	li $a0, 100
	jal least_significant

	li $a0, 0xFFFFFFF5	# Getting the bit at position
	li $a1, 2
	jal bit_at

	li $a0, 0x0F0F0F0F	# Flipping bits
	jal flip_bits


	li $v0, 10
	syscall



# Returns in $v0 0 and 1 depending on the most significant bit of $a0:
most_significant:
	srl $v0, $a0, 31

	jr $ra

# Returns in $v0 0 and 1 depending on the least significant bit of $a0:
least_significant:	
	andi $v0, $a0, 1			# mask out the least significant bit 

	jr $ra

# Returns in $v0 0 and 1 depending on bit $a1 of $a0:
bit_at:
	srlv $v0, $a0, $a1
	andi $v0, $v0, 1

	jr $ra


# Returns $v0 with every bit flipped from $a0
flip_bits:
	xori $v0, $a0, 1
	
	jr $ra
