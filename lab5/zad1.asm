.686
.model flat
public _find_max_range
.data 
	dwa dd 2.0
	g dd 10.0
	sto_osiemdziesiat dd 180.0
.code
_find_max_range PROC
	push ebp
	mov ebp,esp

	;0 ebp
	;4 call
	;8 v
	;12 alpha
	finit
	fld dword ptr dwa
	fld dword ptr [ebp+8]
	fld dword ptr [ebp+8]
	fmulp
	fmulp
	fld dword ptr [ebp+12]
	;zmiana na radiany - a * pi / 180
	fldpi
	fmulp
	fld dword ptr sto_osiemdziesiat
	fdivp 
	;
	fsincos
	fmulp
	fmulp
	fld dword ptr g
	fdivp

	pop ebp
	ret
_find_max_range ENDP
END