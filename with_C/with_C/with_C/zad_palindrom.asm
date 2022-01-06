.686
.model flat
public _palindrom
extern _malloc : PROC
.code
_palindrom PROC
	
	push ebp
	mov ebp,esp
	push ebx
	push esi
	push edi

	mov ebx, [ebp+8]
	mov ecx,0
	lp:
		mov al, [ebx]
		cmp al,0
		je koniecstringa
		inc ebx
		inc ecx
		jmp lp

	koniecstringa:
	;ecx=n
	mov ebx,ecx
	push ebx
	call _malloc
	add esp,4
	;eax - adres pamiec
	cmp eax,0
	je malloc_failed
	;ebx n
	push eax
	;edi 
	mov edi, [ebp+8]
	mov esi, [ebp+8]

	add edi, ebx ;dodaj n
	dec edi
	mov ecx, ebx
	shr ecx,1 ;n/2
	lp2:
		mov al, [edi]
		cmp al,[esi]
		jne koniec
		dec edi
		inc esi
		loop lp2

	;wrzuc do pamieci palindrom
	pop edi
	mov eax, edi
	mov edx, [ebp+8]
	mov [edi], edx
	add eax,4
	mov [eax], ebx
	sub eax,4
	jmp malloc_failed
	koniec:
	pop eax ;aders zapisu
	malloc_failed:

	pop edi
	pop esi
	pop ebx
	pop ebp

	ret
_palindrom ENDP
END