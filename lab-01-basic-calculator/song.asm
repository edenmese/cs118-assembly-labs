.text

li $a2 0	# load and read instrument
li $a3 80	# set the volume


# opening

li $a0 76	# play E5 
li $a1 125	# play for 1/8 second

li $v0 33	# play sound (midi)
syscall		# do it

li $a0 50	# play D3
li $a1 125


li $a0 76	# play E5 
li $a1 125	# play for 1/8 second

li $v0 33	# play sound (midi)
syscall		# do it

li $a0 125    	#rest for 1/8 second
li $v0 32    
syscall        	#do it

li $a0 76    	#play E5
li $a1 125    	#play for 1/8 second

li $v0 33    	#play MIDI sound
syscall		#do it

li $a0 125  	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 76	#play E5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 79	#play G5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 250	#rest for 1/4 second
li $v0 32    
syscall		#do it

li $a0 67	#play G4
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 250	#rest for 1/4 second
li $v0 32    
syscall		#do it











# main theme part 1

li $a0 72	#play C5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 67	#play G4
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 64	#play E4
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 69	#play A4
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 71	#play B4
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 70	#play B♭4
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 69	#play A4
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 67	#play G4
li $a1 167	#play for 1/6 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 76	#play E5
li $a1 166	#play for 1/6 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 79	#play G5
li $a1 167	#play for 1/6 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 81	#play A5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 77	#play F5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 79	#play G5
li $a1 125	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 76	#play E5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 74	#play D5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 71	#play B4
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it


# repeat part 1
li $a0 72	#play C5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 67	#play G4
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 64	#play E4
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 69	#play A4
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 71	#play B4
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 70	#play B♭4
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 69	#play A4
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 67	#play G4
li $a1 167	#play for 1/6 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 76	#play E5
li $a1 166	#play for 1/6 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 79	#play G5
li $a1 167	#play for 1/6 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 81	#play A5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 77	#play F5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 79	#play G5
li $a1 125	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 76	#play E5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 74	#play D5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 71	#play B4
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it



# part 2


li $a0 48	#play C3
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 79	#play G5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it


li $a0 78	#play F♯5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 77	#play F5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it


li $a0 75	#play D♯5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 76	#play E5
li $a1 125	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 68	#play G♯4
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 69	#play A4
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 69	#play A4
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 74	#play D5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 48	#play C3
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 79	#play G5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 78	#play F♯5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 77	#play F5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 75	#play D♯5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 76	#play E5
li $a1 125	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 84	#play C6
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 84	#play C6
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 84	#play C6
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 55	#play G3
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it




li $a0 48	#play C3
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 79	#play G5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 78	#play F♯5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 77	#play F5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it


li $a0 75	#play D♯5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 76	#play E5
li $a1 125	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 68	#play G♯4
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 69	#play A4
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 69	#play A4
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 74	#play D5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it


li $a0 48	#play C3
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 75	#play E♭5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 74	#play D5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 72	#play C5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 55	#play G3
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 55	#play G3
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 48	#play C3
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it







# repeat part 2
li $a0 48	#play C3
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 79	#play G5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 78	#play F♯5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 77	#play F5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it


li $a0 75	#play D♯5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 76	#play E5
li $a1 125	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 68	#play G♯4
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 69	#play A4
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 69	#play A4
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 74	#play D5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 48	#play C3
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 79	#play G5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 78	#play F♯5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 77	#play F5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 75	#play D♯5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 76	#play E5
li $a1 125	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 84	#play C6
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 84	#play C6
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 84	#play C6
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 55	#play G3
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it




li $a0 48	#play C3
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 79	#play G5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 78	#play F♯5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 77	#play F5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it


li $a0 75	#play D♯5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 76	#play E5
li $a1 125	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 68	#play G♯4
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 69	#play A4
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 69	#play A4
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 74	#play D5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it


li $a0 48	#play C3
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 75	#play E♭5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 74	#play D5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 72	#play C5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 55	#play G3
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 55	#play G3
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 48	#play C3
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it









# part 3
li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 74	#play D5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 76	#play E5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 69	#play A4
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 67	#play G4
li $a1 500	#play for 1/2 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 74	#play D4
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 76	#play E4
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 55	#play G3
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 48	#play C3
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 250	#rest for 1/4 second
li $v0 32    
syscall		#do it

li $a0 43	#play G2
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it


li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 74	#play D5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 76	#play E5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 125	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 69	#play A4
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 67	#play G4
li $a1 500	#play for 1/2 second

li $v0 33	#play MIDI sound
syscall		#do it


# go back to beginning
li $a0 76	# play E5 
li $a1 125	# play for 1/8 second

li $v0 33	# play sound (midi)
syscall		# do it

li $a0 76	# play E5 
li $a1 125	# play for 1/8 second

li $v0 33	# play sound (midi)
syscall		# do it

li $a0 125    	#rest for 1/8 second
li $v0 32    
syscall        	#do it

li $a0 76    	#play E5
li $a1 125    	#play for 1/8 second

li $v0 33    	#play MIDI sound
syscall		#do it

li $a0 125  	#rest for 1/8 second
li $v0 32    
syscall		#do it

li $a0 72	#play C5
li $a1 125	#play for 1/8 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 76	#play E5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 79	#play G5
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 250	#rest for 1/4 second
li $v0 32    
syscall		#do it

li $a0 67	#play G4
li $a1 250	#play for 1/4 second

li $v0 33	#play MIDI sound
syscall		#do it

li $a0 250	#rest for 1/4 second
li $v0 32    
syscall		#do it



li $v0 10 	#exit safely
syscall 	#do it
