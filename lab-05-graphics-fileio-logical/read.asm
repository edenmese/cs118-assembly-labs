.data

file_path: .asciiz "/Users/edenmese/Desktop/Ohlone/2024-2025/CS118_Intro to Assembly Language/Labs/graphics-fileio-logicaloperators-edenmese/quote.txt"
file_path2: .asciiz "/Users/edenmese/Desktop/Ohlone/2024-2025/CS118_Intro to Assembly Language/Labs/graphics-fileio-logicaloperators-edenmese/quote2.txt"
buffer:	   .space 200


.text

main: 
	la $a0, file_path2			# set the path
	la $a1, buffer 				# set the buffer
	jal read_file				# call read_file 
	
	
	li $v0, 4
	la $a0, buffer
	syscall 
	
	la $a0, file_path			# set the path
	la $a1, buffer 				# set the buffer
	jal read_file				# call read_file 
	
	
	li $v0, 4
	la $a0, buffer
	syscall 




	

	li $v0, 10
	syscall 
	
	
	
	
	
	
# preconditions: 
# 	$a0 = file path
#	$a1 = buffer	
# postcondition: 
#	The buffer address holds the file text
read_file: 

	move $s0, $a0				# stash the file path
	move $s1, $a1 				# stash the buffer address
	
	li $v0, 13				# open the file 
	move $a0, $s0 				# set the file path 
	li $a1, 0 				
	li $a2, 0
	syscall 
	
	move $s3, $v0				# save the file handler
	
	li $v0, 14				# read the file
	move $a0, $s3				# set the file handler 
	move $a1, $s1 				# set the buffer
	li $a2, 199 				# set the max length (one less than .space 200 - leaving room for null terminator)
	syscall 
	
	move $s4, $v0				# save the number of chars read
	
	add $s5, $s4, $s1
	sb $zero, 0($s5)			# insert the terminating null char (\0)
	
	
	
	li $v0, 16				# close the file
	move $a0, $s3				# set the file handler
	syscall 
	
	jr $ra
	
	
	
	
	
	
	
	
	
			