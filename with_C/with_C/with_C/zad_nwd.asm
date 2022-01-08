.686
.model flat
public _NWD
.code
_NWD PROC
	push ebp
	mov ebp,esp
	push ebx

	mov eax, [ebp+8] ;a
	mov ebx, [ebp+12] ;b
	cmp eax,ebx
	je ret_a
	ja nwd_a_b
	;else
	;nwd(a,b-a)
	sub ebx,eax
	push ebx
	push eax
	call _NWD
	add esp,8
	jmp ret_a

	nwd_a_b:
	;nwd(a-b,b)
	sub eax,ebx
	push ebx
	push eax
	call _NWD
	add esp,8
	jmp ret_a

	ret_a:

	pop ebx
	pop ebp
	ret
_NWD ENDP
END