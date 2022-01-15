.686
.model flat
public _nwd
.code
;oblicza nwd wg wzoru na kartce
;nwd z kiedy
;zad 1 kolos2
_nwd PROC
	push ebp
	mov ebp,esp
	push ebx

	mov eax, [ebp+8]
	cmp eax,[ebp+12]
	je wyn_a
	ja wyn_nwd_a_b
	;nwd a, b-a
	mov ebx,[ebp+12]
	sub ebx,eax
	push ebx
	push eax
	call _nwd
	add esp,8
	jmp koniec

	wyn_a:
	mov eax,[ebp+8]
	jmp koniec

	wyn_nwd_a_b:
	sub eax, [ebp+12]
	mov ebx, [ebp+12]
	push ebx
	push eax
	call _nwd
	add esp,8
	jmp koniec

	koniec:

	pop ebx
	pop ebp
	ret
_nwd ENDP
END