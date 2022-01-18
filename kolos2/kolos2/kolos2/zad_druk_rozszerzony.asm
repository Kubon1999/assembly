.686
.model flat
public _druk_rozszerzony
extern _malloc : PROC
extern _write : PROC
.code
;zadanie  2 15.01.2018
_druk_rozszerzony PROC
	push ebp
	mov ebp,esp

	mov ecx,4 ;liczba liter
	push ecx
	mov esi, [ebp+8]
	mov eax,ecx
	shl eax,1
	push eax
	call _malloc
	add esp,4

	mov edi,eax
	pop ecx
	push edi
	lp:
		mov al, [esi]
		inc esi
		mov [edi], al
		inc edi
		mov al,32
		mov [edi],al
		inc edi
		loop lp
	pop edi

	mov ecx, 4
	shl ecx,1
	push ecx
	push edi
	push 1
	call _write
	add esp,12

	pop ebp
	ret
_druk_rozszerzony ENDP
END