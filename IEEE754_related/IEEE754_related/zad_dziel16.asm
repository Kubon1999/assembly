;podzielic liczbe float w ebx przez 16
.686
.model flat
public _dziel16
.code
_dziel16 PROC
	push ebp
	mov ebp,esp
	push ebx
	;0 ebp
	;4call
	;8 adres float
	mov esi, [ebp+8]
	mov ebx, [esi]

	mov edx,7F800000h
	and edx,ebx
	shl edx,1
	shr edx,24
	sub edx,4 ; 2^4 = 16
	shl edx,24
	shr edx,1
	and ebx,807FFFFFh
	xor ebx,edx

	push ebx
	fld dword ptr [esp];wynik
	pop ebx
	pop ebx
	pop ebp
	ret
_dziel16 ENDP
END