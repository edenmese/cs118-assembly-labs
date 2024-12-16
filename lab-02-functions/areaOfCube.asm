.data
prompt_width:   .asciiz "Please enter width: "
prompt_height:  .asciiz "Please enter length: "
prompt_depth:   .asciiz "Please enter depth: "
result: 	.asciiz "The volume of your cube is: "




.text

main:

	la $a0, prompt_width			# load address of prompt_width into a0
	jal get_dimensions			# jump and link get_dimensions
	move $a1, $v0				# store returned width value in a1
	
	la $a0, prompt_height			# load address of prompt_height into a0
	jal get_dimensions			# jump and link get_dimensions
	move $a2, $v0				# store returned height into a2
	
	la $a0, prompt_depth			# load address of prompt_depth into a0
	jal get_dimensions			# jumo and link get_dimensions
	move $a3, $v0				# store returned height into a3
	
	jal calculate_volume			# jumpt and link calculate_volume
		
	li $v0, 10  		# exit safely
	syscall


get_dimensions:
	li $v0, 4				# Set syscall for printing string
	syscall
		
	li $v0, 5 				# Set syscall for reading integer input
	syscall
	
	 jr $ra 				# Return to the caller with result in $v0


calculate_volume: 

	li $v0, 4				# Print result message			
	la $a0, result				# Load address of result message into $a0
	syscall 			
	
	mul $a0, $a1, $a2			# Multiply width ($a1) and height ($a2), store in $a0
	mul $a0, $a0, $a3			# Multiply result by depth ($a3) to get volume
	
	li $v0, 1				# Set syscall for printing integer
	syscall
	
	jr $ra					# Return to caller

	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
