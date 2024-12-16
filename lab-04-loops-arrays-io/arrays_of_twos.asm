.data
twosArray: 	.space 44
result: .asciiz "The first 10 powers of 2 are: \n"
newLine: .asciiz "\n"


.text 

li $t0, 0		# cursor
li $t1, 1		# values
li $t3, 44		# number of bytes 


fill_array: 
bge  $t0, $t3, array_filled		# branch if cursor <= 10 (or 44 bytes)
	sw $t1, twosArray($t0)		# twosArray[0] = 1 
	sll $t1, $t1, 1			# shift logical left by one
	addi $t0, $t0, 4		# move cursor 4 bytes
	j fill_array			# loop back to beginning

array_filled:

li $t0, 0 				# set cursor back to 0

li $v0, 4				# print result
la $a0, result
syscall

read_array:
bge $t0, $t3, array_read		# branch if cursor <= 10 (or 44 bytes)
	lw $t4, twosArray($t0)		# load item of twosArray at t0 
	move $a0, $t4
	li $v0, 1
	syscall
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	addi $t0, $t0, 4		# move cursor 4 bytes
	j read_array			# loop back to beginning
	
	
array_read: 






li $v0, 10
syscall


	




