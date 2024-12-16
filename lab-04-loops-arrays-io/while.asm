

.text
	addi $t1, $zero, 0	# counter
	addi $t2, $zero, 0	# accumulator
	addi $t3, $zero, 10     # max
	
loop:
	bge $t1, $t3, end_loop		# branch to end_loop if t1>= t3
	addi $t1, $t1, 1		# add 1 to t1
	add $t2, $t2, $t1		# make t2 the sum of t2 and t1
	j loop 				# jump to the beginning of the loop
	
	
	
end_loop:  
	
	
	li $v0, 10			# exit safely
	syscall 



