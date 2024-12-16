.data 

display: 	.space 4096 		# Reserve 4096 bytes in memory for display


define: 
# screen information
	.eqv PIXEL_SIZE 4		# Each pixel is 4 bytes
	.eqv WIDTH 32			# Width of the display in pixels
	.eqv HEIGHT 32			# Height of the display in pixels
	.eqv DISPLAY 0x10010000		# Base address of the display memory
# colors
	.eqv 	BLACK 	0x00000000	# Color black in hexadecimal
	.eqv	RED 	0xdb3927 	# Color red in hexadecimal
	.eqv 	GREY 	0xdedddc	# Color grey in hexadecimal
.text

main: 
	li $a0, GREY 			# Load GREY color into $a0
	jal background			# Call the `background` function to fill the display with grey
	
# Draw the heart outline	
heartOutline: 
	#left top of the heart outline
	li $t1, 1600 			# Calculate pixel position
	li $t0, BLACK 			# Set color to black
	sw $t0, display($t1)		# Store the color in memory
	
	
	# heart outline
	li $t1, 1468 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1336 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1204 
	li $t0, BLACK 
	sw $t0, display($t1)

	# right top
	li $t1, 1476 # 12 down (128*12 = 1536) 16 across
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1352 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1228 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	# left top flat
	li $t1, 1200 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1196 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1192 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1188 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	
	# right top flat
	li $t1, 1232 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1236 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1240 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1244 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	# left side (top diagonal) 
	li $t1, 1312 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1436 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1560 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	# left side (middle straight)
	
	li $t1, 1688 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1816 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1944 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2072 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2200 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2328 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	# left bottom diagonal 
	li $t1, 2460 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2592 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2724 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2856 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2988 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 3120 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 3252 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 3384 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 3516 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 3648 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	# right side (bottom diagonal)
	li $t1, 3524 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 3400 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 3276 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 3152 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 3028 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2904 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2780 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2656 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2532 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2408 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2280 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2152 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2024 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1896 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1768 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1640 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1508 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1376 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	
zigZag: 
	li $t1, 1732 # 12 down (128*12 = 1536) 16 across
	li $t0, BLACK 
	sw $t0, display($t1) 
	
	
	li $t1, 1864 # 12 down (128*12 = 1536) 16 across
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1996 # 12 down (128*12 = 1536) 16 across
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2124 # 12 down (128*12 = 1536) 16 across
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2252 # 12 down (128*12 = 1536) 16 across
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2380 # 12 down (128*12 = 1536) 16 across
	li $t0, BLACK 
	sw $t0, display($t1)
	
	
	li $t1, 2504 # 12 down (128*12 = 1536) 16 across
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2628 # 12 down (128*12 = 1536) 16 across
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2752 # 12 down (128*12 = 1536) 16 across
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 2876 # 12 down (128*12 = 1536) 16 across
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 3004 # 12 down (128*12 = 1536) 16 across
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 3136 # 12 down (128*12 = 1536) 16 across
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 3392 # 12 down (128*12 = 1536) 16 across
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 3520 # 12 down (128*12 = 1536) 16 across
	li $t0, BLACK 
	sw $t0, display($t1)

	
blackFill: 
	li $t1, 1316 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1320 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1324 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1328 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1332 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1460 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1464 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1456 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1452 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1448 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1444 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1440 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1572 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1568 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1564 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1576 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1580 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1584 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1588 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1592 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1596 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1724 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1728 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1720 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1716 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1712 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1708 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1704 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1700 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1696 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1692 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1820 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1824 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1828 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1832 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1836 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1840 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1844 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1848 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1852 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1856 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1984 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1980 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1976 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1972 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1968 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1964 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1960 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1956 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1952 
	li $t0, BLACK 
	sw $t0, display($t1)
	
	li $t1, 1948 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2076 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2080 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2084 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2088 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2092 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2096 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2100 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2104 
	li $t0, BLACK
	sw $t0, display($t1)
		
	li $t1, 2108 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2112 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2240 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2236 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2232 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2228 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2224 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2220 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2216 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2212 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2208 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2204 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2332 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2336 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2340 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2344 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2348 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2352 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2356 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2360 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2364 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2368 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2372 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2376 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2248 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2120 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 1992 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 1988 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 1860 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2116 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2244 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2500 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2496 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2492 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2488 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2484 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2480 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2476 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2472 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2468 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2464 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2488 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2596 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2600 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2604 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2608 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2612 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2616 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2620 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2624 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2748 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2744 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2740 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2736 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2732 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2728 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2860 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2864 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2868 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2872 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 3000 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2996 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2992 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 3124 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 3128 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 3132 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 3264 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 3260 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 3256 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 3388 
	li $t0, BLACK
	sw $t0, display($t1)
	
	
greyDot: 
	li $t1, 1836 
	li $t0, GREY
	sw $t0, display($t1)
	
	li $t1, 1832
	li $t0, GREY
	sw $t0, display($t1)
	
	li $t1, 1964 
	li $t0, GREY
	sw $t0, display($t1)
	
	li $t1, 1960 
	li $t0, GREY
	sw $t0, display($t1)

blackDot:
	li $t1, 2392 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2388 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2516 
	li $t0, BLACK
	sw $t0, display($t1)
	
	li $t1, 2520 
	li $t0, BLACK
	sw $t0, display($t1)

	li $v0, 10
	syscall
	
	# $s0 = (32x4 x 7(rows down)) + (4pixels x 15 columns to the right or left)

background: 
	li $s1, DISPLAY 			# Initialize $s1 with the base address of the display
	li $s2, WIDTH 				# Load width of the display into $s2
	mul $s2, $s2, HEIGHT 			# Calculate total number of pixels (WIDTH x HEIGHT)
	mul $s2, $s2, 4				# Convert pixels to bytes
	add $s2, $s1, $s2			# Calculate the end address of the display memory
background_loop: 
	sw $a0, 0 ($s1)				# Store the color value at the current address
	addiu $s1, $s1, 4			# Move to the next pixel address
	ble $s1, $s2, background_loop		# Loop until all pixels are filled
	
	jr $ra					# Return to caller
	
	
