.data


# set display to:
#	Pixels width and height to 4x4
#	Display width and height to 256x256
#	Base address = 0x10010000
# This will make our screen width 64x64 (256/4 = 64)
# 	64 * 64 * 4 = 16384 required bytes.

display:	.space 16384

define:
# screen information
	.eqv PIXEL_SIZE 4
	.eqv WIDTH 64
	.eqv HEIGHT 64
	.eqv DISPLAY 0x10010000

# colors
	.eqv	RED 	0x00FF0000
	.eqv	GREEN 	0x0000FF00
	.eqv	BLUE	0x000000FF

.text

main:
	li $a0, 0x00a1d78
	jal background_color

	
	li $t1, 256				# offset 
	
	li $t0,  RED 
	sw $t0, display($t1)
	
	

	li $t0, GREEN 
	addi $t1, $t1, 288
	sw $t0, display($t1)
	
	
	li $a0, 32
	li $a1, 16
	li $a2, 0x00ebb523
	
	jal draw_pixel 
	
	li $v0, 10
	syscall


# preconditions: 
#	$a0 is set to the color
background_color:

 	li $s1, DISPLAY 			#  The first pixel on the screen 
 		# set s2 = the last memory address of the display
 	li $s2, WIDTH 				# 
 	mul $s2, $s2, HEIGHT
 	mul $s2, $s2, 4				# word
 	add $s2, $s1, $s2 
 	
 background_loop: 
 	sw $a0, 0($s1)
 	addiu $s1, $s1, 4
 	ble $s1, $s2, background_loop
 	
 	jr $ra 





# preconditions
#	$a0 = x
#	$a1 = y
#	$a2 = color 
draw_pixel: 

	#s1 = address = DISPLAY + 4 * (x+ (y * WIDTH)
	mul $s1, $a1, WIDTH 			# s1 = (y * WIDTH)
	add $s1, $s1, $a0 			# (x+ (y * WIDTH)
	mul $s1, $s1, 4				# word (4 bytes)
	sw $a2, DISPLAY($s1)
	jr $ra




	
