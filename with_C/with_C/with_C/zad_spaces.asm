.686
.model flat
public _spaces
extern _malloc : PROC

.code
_spaces PROC
	push ebp
	mov ebp,esp 
	push ebx
	push 129
	call _malloc
	add esp,4
	;check if malloc allocated memory
	cmp eax,0
	je koniec

	mov ecx,128
	push eax
	lp:
		mov bl,' '
		mov [eax], bl
		inc eax
		loop lp
	mov bl, 0
	mov [eax], bl ;zero koncowe
	pop eax
	mov bl, [ebp+8]
	mov [eax], bl


	koniec:

	pop ebx
	pop ebp
	ret
_spaces ENDP
END