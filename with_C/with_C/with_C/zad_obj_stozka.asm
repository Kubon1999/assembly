.686
.model flat
public _obj_stozka_sc
.data
	trzy dd 3.0
.code
_obj_stozka_sc PROC
	push ebp
	mov ebp,esp
	push ebx

	fld dword ptr [ebp+16] ; h
	fld dword ptr [ebp+8]; r
	fld dword ptr [ebp+12] ; R

	;st0 R st1 r st2 h

	fmul st(0), st(0)
	fxch st(1)
	fld dword ptr [ebp+12]
	fmulp 
	faddp
	fld dword ptr [ebp+8]
	fld dword ptr [ebp+8]
	fmulp
	faddp
	fmulp
	fldpi
	fld dword ptr trzy
	fdivp
	fmulp

	pop ebx
	pop ebp
	ret
_obj_stozka_sc ENDP
END