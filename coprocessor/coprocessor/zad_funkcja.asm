.686
.model flat
public _funkcja
.data
dana dd 1.2

.code
_funkcja PROC
	push ebp
	mov ebp,esp

	finit 
	fild dword ptr [ebp+8]
	fld1
	fcomi st(0),st(1)
	je koniec
	fld1
	faddp 
	fcomi st(0), st(1)
	je koniec
	fstp st(0)
	mov eax, dword ptr [ebp+8]
	dec eax
	push eax
	call _funkcja
	add esp,4
	fld dana
	fxch
	fsubp
	fild dword ptr [ebp+8]
	fdivp
	jmp koniec
	koniec:
	pop ebp
	ret
_funkcja ENDP
END