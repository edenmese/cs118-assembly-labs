.data
prompt: .asciiz "Please enter temperature in Farenheit: "
result: .asciiz " Farenheit in Celsius is: "
degrees: .asciiz " degrees"


.text

main:
	move $fp,$sp 				# Initialize the frame pointer to the stack pointer
		
	li $v0, 4				# print prompt
	la $a0, prompt				
	syscall
	
	li $v0, 7				# Load syscall code for reading a double-precision float	
	syscall 
	mov.d $f2, $f0				# Move the double-precision value from $f0 to $f2
	
	jal stack 				# jump and link to stack 
	

	li $v0, 10				# Exit safely
	syscall

stack: 	
	addi $sp, $sp, -12        		# Allocate 12 bytes for the stack frame
	sw $fp, 4($sp)            		# Save old frame pointer
	addi $fp, $sp, 8          		# Set new frame pointer
	sw $ra, 0($fp)            		# Save return address
	sdc1 $f2, 0($sp)          		# Store Fahrenheit input (from $f12) at $sp+0
	
convert: 

	li $t0, 32				# Load 32 into $t0
	mtc1 $t0, $f6				# Move 32 into $f6 as an integer
	cvt.d.w $f6, $f6			#f6 = 32 (double)
	
	li $t1, 5				# Load 5 into $t1
	mtc1 $t1, $f8				# Move 5 into $f8 as an integer
	cvt.d.w $f8, $f8			# f8 = 5(double)
	
	li $t2, 9				# Load 9 into $t2
	mtc1 $t2, $f10				# Move 9 into $f10 as an integer
	cvt.d.w $f10, $f10			#f10 = 9 double

	ldc1 $f4, -8($fp)			# Load the Fahrenheit input from the stack into $f4
	
	#Conversion: (F-32) * (5/9)
	sub.d $f6, $f4, $f6			# Subtract 32 from Fahrenheit (F-32) and store result in $f6
	div.d $f12, $f8, $f10			# Divide 5 by 9 and store result in $f12
	mul.d $f0, $f6, $f12			# Multiply (F-32) by (5/9) and store Celsius result in $f0

conversion_result: 

	cvt.s.d $f12, $f4			# Convert double in $f4 to single-precision float in $f12 (for syscall)		
	
	li $v0, 2				# Load syscall code for printing float (at f12)
	syscall
	
	li $v0, 4				# print result
	la $a0, result
	syscall 
	
	cvt.s.d $f12, $f0			# Convert Celsius result in $f0 to single precision for printing	
	
	li $v0, 2				# print float at f12
	syscall 
	
	li $v0, 4				# print "degrees"
	la $a0, degrees
	syscall 
	
	#restore stack
	lw $ra, 0($fp)				# restore return address
	lw $fp, -4($fp)				# return frame pointer
	addi $sp, $sp, 12			# pop off stack
	jr $ra					# jump back to return address
	


