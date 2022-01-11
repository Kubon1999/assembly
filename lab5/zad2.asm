.686
.model flat
.xmm
public _mul_at_once
.code
_mul_at_once PROC
	push ebp
	mov ebp,esp
	push ebx
	;0 ebp
	;4 call
	;20 adres one
	;36 adres two
	movdqa xmm2,xmm0
	pmulld xmm1,xmm2
	movdqa xmm0,xmm1
	pop ebx
	pop ebp
	ret
_mul_at_once ENDP
END