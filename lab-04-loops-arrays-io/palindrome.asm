.data 

prompt: .asciiz "Enter a word: "                  			# Message to prompt the user
buffer: .space 100                                			# Reserve space for the input string (100 bytes)
palindrome_msg: .asciiz " is a palindrome! :)\n"      			# Message if it's a palindrome
not_palindrome_msg: .asciiz " is not a palindrome :(\n" 		# Message if it's not a palindrome

.text

main:
    li $v0, 4                 		# Print prompt
    la $a0, prompt
    syscall 

    li $v0, 8                 		# Read string
    la $a0, buffer            		# Load address of buffer where the string will be stored
    li $a1, 100              		# Maximum length of string to read (100 bytes)
    syscall 


    la $t0, buffer            		# Load address of the buffer into $t0
    li $t2, 0                 		# counter ($t2 = 0)

find_length:
    lb $t1, 0($t0)            		# Load byte from string into $t1
    beqz $t1, done_length     		# If null terminator is found, finish counting
    beq $t1, 10, replace_newline	# If newline character is found, replace it
    addi $t2, $t2, 1          		# Increment length counter
    addi $t0, $t0, 1          		# Move to the next byte in the string
    j find_length             		# Repeat the loop

replace_newline:
    sb $zero, 0($t0)         		 # Replace newline with null terminator
    j done_length

done_length:

    la $t0, buffer            		# Load the start of the string into $t0
    add $t1, $t0, $t2         		# Set $t1 to point to the end (buffer + length)
    addi $t1, $t1, -1         		# Adjust to point to the last character

check_palindrome:
    bge $t0, $t1, palindrome  		# If start pointer >= end pointer, then palindrome
    lb $t4, 0($t0)            		# Load byte at start pointer into $t4
    lb $t5, 0($t1)            		# Load byte at end pointer into $t5
    bne $t4, $t5, not_palindrome 	# If characters are not equal then not a palindrome
    addi $t0, $t0, 1          		# Move start pointer forward
    addi $t1, $t1, -1         		# Move end pointer backward
    j check_palindrome       		# jump to beggining

palindrome:
    li $v0, 4                		 # print string
    la $a0, buffer           		 # Load address of the input word
    syscall                   

    li $v0, 4                		 # print palindrome_msg
    la $a0, palindrome_msg    
    syscall                   
    j end                    		 # Jump to end of program

not_palindrome:
    li $v0, 4                 		 # print string
    la $a0, buffer            		 # Load address of the input word
    syscall                   

    li $v0, 4                		 # print not_palindrome_msg
    la $a0, not_palindrome_msg 		
    syscall                  	
    	 
    	 		 
end:
    li $v0, 10                # exit safely
    syscall
