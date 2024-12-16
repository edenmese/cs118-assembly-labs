.data


buffer: 	.asciiz "\"We are Groot.\" -Groot"
file_path: 	.asciiz "/Users/edenmese/Desktop/Ohlone/2024-2025/CS118_Intro to Assembly Language/Labs/graphics-fileio-logicaloperators-edenmese/groot.txt"


.text
main: 
	la $a0, file_path 
	la $a1, buffer
	
	jal write_to_file





	li $v0, 10
	syscall






# preconditions: 
#	$a0 = file path 
#	$a1 = buffer
# postcondition:
#	string in the buffer written to path 
write_to_file: 
	
	move $s0, $a0 				# stash the path
	move $s1, $a1				# stash the buffer 
	
	li $s3, 0				# set the counter to 0
counter_loop: 
	add $s4, $s3, $s1			# memory address of teh next char in the string
	lb $s5, 0($s4)				# load the byte
	addi $s3, $s3, 1	 			# counter++ 
	bnez $s5, counter_loop 			
	
	subi $s3, $s3, 1 			# back up one char(byte)
	
	li $v0, 13
	move $a0, $s0 
	li $a1, 1				# write "1" = mode to write 
	la $a2, 0 				# not sure why 
	syscall 
	
	
	move $s2, $v0				# stash the file handler
	
	li $v0, 15				# write to file
	move $a0, $s2				# set the file handler
	move $a1, $s1  				# address of the buffer
	move $a2, $s3				# number of chars(bytes) to write
	syscall 
	
	li $v0, 16				# close the file 
	syscall 
	
	
	jr $ra
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	