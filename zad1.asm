	;this program does change characters from small letters to big
.686
.model flat

extern __write : PROC
extern __read : PROC
extern _ExitProcess@4 : PROC
public _main

.data
	readBuffer db 255 dup (?)
.code
changeLetters PROC
	mov ecx, eax ; ecx = buffer size
	sub ecx,2
	mov bl, 20h ;we need to substract this number from small letter in order to get big letters (look at ascii table)
	lp:
		sub readBuffer[ecx], bl
	loop lp ;ecx-1, cmp thats why when ecx = 0 it does not change the first letter
	sub readBuffer[ecx], bl
	ret
changeLetters ENDP

_main PROC
	push 255 ; buffer size
	push OFFSET readBuffer;pointer to the buffer
	push 0;keyboard id
	call __read
	add esp, 12 ;remove data from stack

	;change characters from small letters to big
	call changeLetters

	push eax ; buffer size
	push OFFSET readBuffer;pointer to the buffer
	push 1;keyboard id
	call __write
	add esp, 12 ;remove data from stack

	push 0
	call _ExitProcess@4
_main ENDP
END