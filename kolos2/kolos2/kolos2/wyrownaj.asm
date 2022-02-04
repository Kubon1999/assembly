.686
.model flat
public _wyrownaj
.data
trzy dd 3.0
.code
_wyrownaj PROC
	push ebp
	mov ebp,esp

	finit 
	fld dword ptr [ebp+8]
	fld st(0)
	fmulp
	fld dword ptr [ebp+12]
	fld st(0)
	fmulp
	fld dword ptr [ebp+16]
	fld st(0)
	fmulp
	faddp
	faddp
	fld trzy
	fdivp
	fsqrt


	pop ebp
	ret
_wyrownaj ENDP
END