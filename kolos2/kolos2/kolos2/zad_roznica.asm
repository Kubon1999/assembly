.686
.model flat
public _roznica
.data
xd dd 20
fg dw 30
pf dw 20
dana dd 4.5
.code
_roznica PROC
	push ebp
	mov ebp,esp
	push ebx
	;-----
	nop
	mov cl,0ffh
	sub esp,1
	mov [esp],cl

	;----
	mov eax,[ebp+8]
	mov ebx,[ebp+12]
	mov eax,[eax]
	mov ebx,[ebx]
	mov ebx,[ebx]

	sub eax,ebx


	pop ebx
	pop ebp
	ret

_roznica ENDP
END