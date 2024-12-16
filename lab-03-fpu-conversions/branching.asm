.data
	number1: 	.double 5.25
	number2: 	.double 3.75
	number3:	.double 9.0
	number4: 	.double 3.3
	number5:	.double 9.9
	tolerance: 	.double 0.00000001
	equal: 		.asciiz "\nEqual"
	notEqual: 	.asciiz "\nNot Equal"


.text		
	ldc1 $f2, number1 			# load in the first 3 numbers
	ldc1 $f4, number2
	ldc1 $f6, number3 			
	
	
	add.d $f8, $f2, $f4			# set f8 = 5.25+3.75 == 9
	
	c.eq.d $f6, $f8				# compare f6 == f8 or if 9 == 9
	
	bc1t true1				# branch if f6 == f8 to true1
		la $a0, notEqual
		j end1
		
	true1: 
		la $a0, equal 
	end1: 
	li $v0, 4
	syscall 
	
	ldc1 $f2, number4			# load f2 = 3.3
	ldc1 $f4, number5			# load f4 = 9.9
	
	add.d $f6, $f2, $f2			# f6 = 3.3 + 3.3 + 3.3	= 9.9
	
	add.d $f6, $f6, $f2			
	
	c.eq.d $f6, $f4				# if (9.9 == 9.9)
	
	bc1t true2				# branch if f6 == f4 to true1
		la $a0, notEqual
		j end2
		
	true2: 
		la $a0, equal 
	end2: 
	li $v0, 4
	syscall 
	
	
	ldc1 $f30, tolerance				# load in the tolerance
	add.d $f8, $f4, $f30				# checking if the value is below tolerance
	c.lt.d 1, $f6, $f8				# set the flag ---- if f6 < f8
	sub.d $f8, $f4, $f30				# checking if the value is above tolerance
	c.lt.d 2, $f8, $f6				# set flag 2
	
	bc1f 1, false3					# branch if the value is below tolerance
	bc1f 2, false3					# branch if the value is above tolerance
		la $a0, equal
		j end3
	false3: 
		la $a0, notEqual
	end3: 
		li $v0, 4
		syscall 
	
	
	
	
	
	
	
	


	li $v0, 10	# Exit safely
	syscall
