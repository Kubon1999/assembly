.686
.model flat
public _aktualna_godzina
extern _malloc : PROC
extern _GetSystemTime@4 : PROC
.code
_aktualna_godzina PROC
	push ebp
	mov ebp,esp
	push edi
	push esi
	push ebx

	push 2 ;rezerwacja pamieci na word wHour
	call _malloc
	add esp,4
	mov esi, eax

	push eax
	call _GetSystemTime@4

	mov ax, [esi+8]
	mov dx,0
	mov bx, 10
	div bx
	mov edi, [ebp+8]
	add dl, 30h
	mov [edi], dl
	mov dl,0
	div bx
	inc edi
	add dl,30h
	mov [edi], dl
	;mov [edi+1], byte ptr 0
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_aktualna_godzina ENDP
END