.data
 	myArray: .space 12 	# declare an array of 3 elements
 	newline: .asciiz "\n"

.text



 	li $v0, 10		# Exit the program safely
	syscall
