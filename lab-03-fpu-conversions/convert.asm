.data

welcome:	.asciiz "\nConvert a integer to a floating piont number: "
float_label:	.asciiz "\nThe float is: "
double_label:	.asciiz "\nThe double is: "
prompt2:	.asciiz "\nEnter a double: "
integer_label:  .asciiz "\nThe integer is: "
.text

main:


	li $v0, 4
	la $a0, welcome
	syscall 
	
	li $v0, 5			# get an integer from user
	syscall 
	
	move $t1, $v0 			# stash integer in t1
	
	mtc1 $t1, $f2			# move integer to fpu (coprocessor 1) from t1 (NOT USEABLE!!)
	cvt.s.w	$f4, $f2		# convert from word to single precision (ctv.s.w) - convert integer to float
	
	li $v0, 4			# print the float_label 
	la $a0, float_label
	syscall
	
	li $v0, 2 			# print the floating point number
	mov.s $f12, $f4			# move from f4 to f12
	syscall 
	
	cvt.d.w $f16, $f2		# convert float to a double
	
	li $v0, 4			# print the float_label 
	la $a0, double_label
	syscall
	
	li $v0, 3			# print a double 
	mov.d $f12, $f16		# move double from f12 to f16
	syscall 
	
	
	li $v0, 4			# prompt hte user to enter a doub;e
	la $a0, prompt2
	syscall
	
	li $v0, 7			# ge ta double
	syscall 
	
	cvt.w.d $f2, $f0		# convert to an integer (not useable)
	mfc1 $t2, $f2			# move to the regular register 
	
	li $v0, 4
	la $a0, integer_label
	syscall 
	
	li $v0, 1
	move $a0, $t2 
	syscall  
	
	li $v0, 10	# Exit safely
	syscall
