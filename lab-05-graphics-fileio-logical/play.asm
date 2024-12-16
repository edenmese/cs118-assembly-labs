
.data

# set display to:
#	Pixels width and height to 2x2
#	Display width and height to 256x256
#	Base address = 0x10010000
# This will make our screen width 128x128 (256/2 = 128)

define: 
# screen information
	.eqv PIXEL_SIZE 2	
	.eqv WIDTH 64
	.eqv HEIGHT 64
	.eqv DISPLAY 0x10010000  
	.eqv MASK 0x000000FF


.text

main:
	#li $a0, 0x000b6b24
	#jal backgroundColor
	
	li $t0, 0 		# counter 
	li $t1, WIDTH
	li $t2, HEIGHT 
	mul $t3, $t1, $t2 	# max 
	mul $t3, $t3, 4		# adjust for 4 bytes
	
	li $t7, 100		# blue
	li $t8, 200 		# green
	li $t9, 50		# red
	
loop:
	div $t0, $t1    	# get the coefficient and remainder 
	
	mfhi $a0		# set a0 (x value) to the remainder
	mflo $a1		# set a1 (y value) the coefficient 
	
	move $a2, $t9		# move red value into the color value 0x000000rr
	sll $a2, $a2, 8		# shift it 8 bits to the left 0x0000rr00
	or $a2, $a2, $t8	# combine in the green value  0x0000rrgg
	sll $a2, $a2, 8		# shift if 8 bits to the left 0x00rrgg00
	or $a2, $a2, $t7	# combine in the blue value   0x00rrggbb
	
	
	jal draw_pixel		# draw the pixel 
	
	
	addiu $t0, $t0, 1	# add one the the counter 
	addiu $t7, $t7, 1	# add one to the blue value 
	and $t7, $t7, MASK	# mask off any overflow 
	addiu $t8, $t8, 1	# add one to the gree value 
	and $t8, $t8, MASK	# mask off any overflow 
	addiu $t9, $t9, 1	# add one to the red value 
	and $t9, $t9, MASK	# mask off any overflow 
	ble $t0, $t3, loop	# loop up as long as we haven't hit the end of the 
				# hit the end of the monitor
	
	li $v0, 10		# exit safely 
	syscall
	
	



# preconditions:
# 	$a0 = x
#	$a1 = y
#	$a2 = color
draw_pixel:
	# s1 = address = DISPLAY = 4 * (x + (y * WIDTH))
	mul $s1, $a1, WIDTH	# (y * WIDTH)
	add $s1, $s1, $a0 	# add x
	mul $s1, $s1, 4		# word (4 bytes) offset
	# add $s1, $s1, D
	sw $a2, DISPLAY($s1)
	jr $ra
