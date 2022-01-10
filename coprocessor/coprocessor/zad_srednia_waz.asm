.686
.model flat
public _avg_wd
.code
_avg_wd PROC
	push ebp
	mov ebp,esp
	push esi
	push edi
	;0 ebp
	;4 call
	;8 n
	;12 adres tab
	;16 adres wagi
	finit
	fldz
	mov esi, dword ptr [ebp+12]
	mov edi, dword ptr [ebp+16]
	mov ecx, dword ptr [ebp+8]
	lp:
		fld dword ptr [esi] ;tab 
		fld dword ptr [edi] ;waga
		fmulp ;tab*waga
		faddp ;st0+=tab*Waga
		add esi,4
		add edi,4
		loop lp

	fild dword ptr [ebp+8]
	fdivp 

	sub esp,4
	fst dword ptr [esp]
	mov eax, [esp]
	add esp,4
	pop edi
	pop esi
	pop ebp
	ret
_avg_wd ENDP
END