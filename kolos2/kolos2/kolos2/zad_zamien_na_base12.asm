.686
.model flat
public _zamien_na_base12
extern _malloc : PROC
;zadanie 1 18.01.2016
.data
	source dw 0030h,0031h,0032h,0033h,0034h,0035h,0036h,0037h,0038h,0039h,218ah,218bh
.code
_zamien_na_base12 PROC
	push ebp
	mov ebp,esp
	push esi
	push edi
	push ebx


	push 20
	call _malloc
	add esp,4

	mov edi, eax
	mov eax, [ebp+8]
	mov ebx,12
	push edi
	lp:
		mov edx,0
		div ebx
		shl edx,1 ;*2 cuz word
		mov dx,source[edx]
		mov [edi],dx
		add edi,2
		cmp eax,0
		jne lp
	pop edi
	mov eax, edi

	pop ebx
	pop edi
	pop esi
	pop ebp
	ret
_zamien_na_base12 ENDP
END