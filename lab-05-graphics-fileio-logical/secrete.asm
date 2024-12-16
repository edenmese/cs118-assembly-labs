.data

message:	.asciiz "Enter a number: "
secrete:	.asciiz "Enter the secrete code number: "
answer:		.asciiz "The answer is: "


.text




	li $v0, 10
	syscall
