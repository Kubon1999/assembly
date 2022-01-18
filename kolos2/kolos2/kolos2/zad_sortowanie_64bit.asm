.686
public _sortowanie_64bit
.model flat
.code
_sortowanie_64bit PROC
	push ebp
	mov ebp,esp
	
	mov esi,[ebp+8]
	mov ecx,[ebp+12]
	lp:
		push ecx
		mov ecx,[ebp+12]
		dec ecx
		lp2:
			mov eax,[esi]
			mov edx,[esi+4]
			cmp edx,[esi+12]
			ja zamien
			cmp eax,[esi+8]
			ja zamien
			wroc:
			add esi,8
			loop lp2
		mov esi, [ebp+8]
		dec ebx
		pop ecx
		loop lp
	jmp koniec
	zamien:
		push eax
		mov eax,[esi+8]
		mov [esi], eax
		pop eax
		mov [esi+8],eax

		push edx
		mov edx,[esi+12]
		mov [esi+4],edx
		pop edx
		mov [esi+12],edx

		jmp wroc
	koniec:

	pop ebp
	ret

_sortowanie_64bit ENDP
END