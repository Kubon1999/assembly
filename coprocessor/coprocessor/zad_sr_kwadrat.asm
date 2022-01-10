.686
.model flat
public _sr_kwadrat
.code
_sr_kwadrat PROC
	push ebp
	mov ebp,esp
	push esi
	;0 ebp
	;4 call
	;8 adres tab
	;12 n

	finit
	mov ecx, [ebp+12]
	mov esi, [ebp+8]
	fldz
	lp:
		fld dword ptr [esi]
		fld dword ptr [esi]
		fmulp
		faddp
		add esi,4
		loop lp

	fild dword ptr [ebp+12]
	fdivp
	fsqrt
	sub esp,4
	fst dword ptr [esp]
	mov eax, [esp]
	add esp,4

	pop esi
	pop ebp
	ret
_sr_kwadrat ENDP
END