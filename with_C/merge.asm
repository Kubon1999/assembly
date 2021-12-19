.686
.model flat
public _merge
.data
	tablica dd 8 dup(?)
.code
_merge PROC
	push ebp
	mov ebp, esp

	;00
	;
	;...
	;-2
	;-1
	;0| esp = ebp
	;+1
	;+2
	;...
	;4 call
	;8 tab1 offset = esi
	;12 tab2 offset = edi
	;16 n = edx
	;
	;FF
	;eax - adres na tablice wynikowa
	mov esi, [ebp+8]
	mov edi, [ebp+12]
	mov edx, [ebp+16]

	mov eax, offset tablica

	cmp edx, 4
	ja	tablica_za_mala

	mov ecx, edx
	lp:
		mov ebx, [esi]
		mov [eax], ebx
		add eax,4
		add esi,4
	loop lp

	mov ecx, edx
	lp2:
		mov ebx, [edi]
		mov [eax], ebx
		add eax,4
		add edi,4
	loop lp2

	jmp koniec
	tablica_za_mala:
		mov eax, 0

	koniec:
	mov eax, offset tablica ; 
	pop ebp
	ret
_merge ENDP
END