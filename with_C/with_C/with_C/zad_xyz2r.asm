.686
.model flat
public _XYZ2R
extern _malloc : PROC
.data
	wsp1 dq 3.063
	wsp2 dq 1.393
	wsp3 dq 0.476
.code
_XYZ2R PROC
	push ebp
	mov ebp, esp
	push esi
	;0 ebp
	;4 call
	;8 array address 
	;12 n
	mov esi, [ebp+8]
	mov edx, [ebp+12]

	push edx
	call _malloc
	add esp,4

	mov ecx, [ebp+12]
	push eax
	lp:
		fld wsp1 
		fld dword ptr [esi]
		fmulp
		fld wsp2
		add esi,4
		fld dword ptr [esi]
		fmulp
		fsubp
		fld wsp3
		add esi,4
		fld dword ptr [esi]
		fmulp
		fsubp
		add esi,4
		fstp dword ptr[eax]
		add eax,4
		loop lp

	pop eax
	pop esi
	pop ebp
	ret
_XYZ2R ENDP
END