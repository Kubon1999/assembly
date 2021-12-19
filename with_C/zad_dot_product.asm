.686
.model flat

public _dot_product
.code
_dot_product PROC
	push ebp
	mov ebp, esp
	;n - 16 edx
	;tab2 - 12 esi
	;tab1 - 8 edi
	;call - 4 
	;ebp - 0
	;wynik eax
	mov edx, [ebp+16]
	mov esi, [ebp+12]
	mov edi, [ebp+8]

	mov eax, 0 ;wynik
	mov ecx, edx ; odtwarzaj n razy
	lp:
		push eax
		mov eax, [edi] ; eax = a1
		mov ebx, [esi]; ebx = b1
		imul ebx ;eax = eax*ebx
		mov ebx, eax
		pop eax
		add eax,ebx
		add edi,4
		add esi,4
	loop lp


	mov ebx,0
	pop ebp
	ret
_dot_product ENDP
END