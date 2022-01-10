.686
.model flat
.xmm
public _szybki_max
.code
_szybki_max PROC
	push ebp
	mov ebp,esp
	push ebx
	;0 ebp
	;4 call
	;8 adres val1
	;12 adres val2
	mov eax, [ebp+8]
	mov ebx, [ebp+12]

	finit
	fld1
	fld1
	;fsubp st(1),st(1)
	movups xmm0, [eax]
	movups xmm1, [ebx]

	pmaxsw xmm0,xmm1
	movups [eax], xmm0

	pop ebx
	pop ebp
	ret
_szybki_max ENDP
END