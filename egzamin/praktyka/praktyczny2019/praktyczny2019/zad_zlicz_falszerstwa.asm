.686
.model flat
public _zlicz_falszerstwa
.data 
	licz_falsz dd 0
.code
_zlicz_falszerstwa PROC
	push ebp
	mov ebp, esp
	push ebx

	mov esi, [ebp+8]
	mov edi, [ebp+12]

	lp:
		mov al,[esi]
		cmp al, 0
		je koniec
		cmp al, ':'
		je czytaj_pole
		cmp al, '}'
		je zlicz_falsz2
		inc esi
		jmp lp
	
	czytaj_pole:
		inc esi
		mov al, [esi]
		cmp al, '0'
		je czytaj_szyfr
		;czytamy tekst
		mov dl, al
		lp_tekst:
			inc esi
			mov al, [esi]
			cmp al, ','
			je lp
			xor dl, al
			jmp lp_tekst

	czytaj_szyfr:
		inc esi
		inc esi
		mov al, [esi]
		sub al,'0'
		mov bl,16
		mul bl
		inc esi
		add al, [esi]
		sub al, '0'
		mov bl, al
		jmp lp

	zlicz_falsz2:
		xor dl, [ebp+12]
		cmp bl,dl
		jne dod_falsz
		jmp lp

	dod_falsz:
		mov ebx, licz_falsz
		inc ebx
		mov licz_falsz,ebx
		jmp lp


		



	koniec:
	pop ebx
	pop ebp
	ret
_zlicz_falszerstwa ENDP
END