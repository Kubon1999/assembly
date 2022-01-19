.686
.model flat
public _binarne_rozkazy
.code
_binarne_rozkazy PROC
	push ebp
	mov ebp,esp
	
	;mov ------
	;1.mov eax,2
	db 10111000b
	db 00000010b
	db 00000000b
	db 00000000b
	db 00000000b
	nop
	;2. brak

	;3.mov al,bl
	db 10001010b
	db 11000011b
	nop
	;4.mov esi,[ebp+8]
	db 10001011b
	db 10110101b
	db 00001000b
	db 00000000b
	db 00000000b
	db 00000000b
	nop


	pop ebp
	ret
_binarne_rozkazy ENDP
END