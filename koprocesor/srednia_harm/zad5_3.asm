.686
.xmm
.model flat
public _sum_char

.data

.code
_sum_char PROC
	push ebp
	mov ebp, esp
	push esi
	push edi
	push ebx
	;0 ebp
	;4 call
	;8 adres tab
	;12 adres tab2
	;16 adres tab_wynik

	mov esi, [ebp+8] ;adres tab1 = esi
	mov ebx, [ebp+12] ;adres tab2 = ebx
	mov edi, [ebp+16] ;adres tab wynikowej = edi

	movups xmm5, [esi]
	movups xmm6, [ebx]

	paddsb xmm5,xmm6
	movups [edi], xmm5

	pop ebx
	pop edi
	pop esi
	pop ebp

	ret
_sum_char ENDP
END