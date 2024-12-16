.data
prompt_height: 			.asciiz "Please enter height (in inches): "   
prompt_weight: 			.asciiz "Please enter weight (in pounds): "  
result: 			.asciiz "Based on your BMI, you are "         
under:				.asciiz "underweight"                        
healthy:			.asciiz "healthy Weight"                     
overweight: 			.asciiz "overweight"                         
obese: 				.asciiz "obese"                              
val1: 				.double 18.5                                 
val2:				.double 24.9                                 
val3: 				.double 25.0                                
val4: 				.double 29.9                                
val5:				.double 30.0                                 

.text

main:
	move $fp, $sp 	                 # Set the frame pointer to the current stack pointer
	
	li $v0, 4                        # Print height prompt
	la $a0, prompt_height            
	syscall                           
	
	li $v0, 5                        
	syscall                           # Read height input from user
	move $t1, $v0                    # Store height in $t1
	
	li $v0, 4                        # Print weight prompt
	la $a0, prompt_weight            
	syscall                           
	
	li $v0, 7                        
	syscall                           # Read weight input as floating-point
	mov.d $f0, $f0                   # Store weight in $f0 (double precision)
	
	jal stack                        # Jump to stack subroutine
	
	li $v0, 10                       
	syscall                           # exit safely
	
stack: 
	addi $sp, $sp, -24               # make space 24 bytes 
	sw $fp, 20($sp)                  # store frame pointer
	addi $fp, $sp, 20                # move fp to beginning of stack 
	sw $ra, -4($fp)                  # store return address
	sw $t1, -8($fp)                  # store height on stack 
	sdc1 $f0, -16($fp)               # store weight (double) on stack
	
	
calc_bmi : 
	lw $t1, -8($fp)                  # Load height from stack
	ldc1 $f2, -16($fp)               # Load weight from stack into $f2
	
	mtc1 $t1, $f4                    # Move height (integer) into $f4 for conversion
	cvt.d.w $f4, $f4                 # Convert height to double precision
	
	li $t0, 703                      # Load constant 703 for BMI formula
	mtc1 $t0, $f6                    # Move 703 to floating-point register
	cvt.d.w $f6, $f6                 # Convert 703 to double precision
	
	# BMI formula: BMI = (weight / (height^2)) * 703
	mul.d $f4, $f4, $f4              # Calculate height^2
	div.d $f8, $f2, $f4              # Divide weight by height^2
	mul.d $f12, $f8, $f6             # Multiply result by 703; result is now in $f12

evaluate_results:   
  	ldc1 $f2, val1                   # Load 18.5 into $f2 
  	ldc1 $f4, val2                   # Load 24.9 into $f4 
  	ldc1 $f6, val3                   # Load 25.0 into $f6 
  	ldc1 $f8, val4                   # Load 29.9 into $f8 
  	ldc1 $f10, val5                  # Load 30.0 into $f10 
  	
  	c.lt.d  $f12, $f2                # Check if BMI < 18.5
  	bc1t under_weight                # If true, branch to under_weight label
  	
  	c.le.d $f12, $f4                 # Check if BMI <= 24.9
  	bc1t healthy_weight              # If true, branch to healthy_weight label
  	
  	c.le.d $f12, $f8                 # Check if BMI <= 29.9
  	bc1t over_weight                 # If true, branch to over_weight label
  	
  	j obesity                        # If none of the above, BMI >= 30.0, so branch to obesity
	
under_weight: 
  	li $v0, 4                        # Print result message
  	la $a0, result                  
  	syscall                          
  
  	li $v0, 4                        # Print underweight message
  	la $a0, under                  
  	syscall                          
  	
  	j results                        # Jump to results label 
	
healthy_weight: 
  	li $v0, 4                        # Print result message
  	la $a0, result                  
  	syscall 
  
  	li $v0, 4                        # Print healthy weight message
  	la $a0, healthy                  
  	syscall                          
  	
  	j results                        # Jump to results label 

over_weight: 
  	li $v0, 4                        # Print result message
  	la $a0, result                  
  	syscall              		 # Print result message
  
  	li $v0, 4                        # Print over weight message
  	la $a0, overweight               
  	syscall
  	
 obesity: 
 
 	li $v0, 4                        # Print result message
  	la $a0, result                  
  	syscall              		 
  
  	li $v0, 4                        # Print obese message
  	la $a0, obese               
  	syscall
  	
 results: 
	lw $ra, -4($fp)                  # Restore return address
	lw $fp, 0($fp)                   # Restore frame pointer
	addi $sp, $sp, 24                # Adjust stack pointer to pop off stack frame
	jr $ra                            # Return to caller









