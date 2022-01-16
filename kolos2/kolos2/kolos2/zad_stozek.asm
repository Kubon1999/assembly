.686
.model flat
public _obj_stozka_sc
.data
	trzy dd 3.0
.code
_obj_stozka_sc PROC
	push ebp
	mov ebp,esp

	finit
	fldz
	fld dword ptr [ebp+12]
	fld dword ptr [ebp+12]
	fmulp
	faddp
	fld dword ptr [ebp+12]
	fld dword ptr [ebp+8]
	fmulp
	faddp
	fld dword ptr [ebp+8]
	fld dword ptr [ebp+8]
	fmulp
	faddp
	fld dword ptr [ebp+16]
	fmulp
	fldpi
	fld trzy
	fdivp
	fmulp

	pop ebp
	ret
_obj_stozka_sc ENDP
END