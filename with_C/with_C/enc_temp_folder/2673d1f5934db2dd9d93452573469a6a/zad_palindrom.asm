.686
.model flat
public _palindrom
extern _malloc : PROC
.data
	temp db 100
.code
_palindrom PROC
	
	push ebp
	mov ebp,esp
	push ebx
	push esi
	push edi
	sub esp,4 ;adres na dlugosc teksty
	;0 ebp
	;4 call
	;8 tekst


	mov esi, [ebp+8]
	;sprawdzmy jakie jest n
	mov ecx, 0
	lp:
		mov al, [esi]
		cmp al,0
		je koniec
		inc ecx
		inc esi
		jmp lp
	koniec:
	;w ecx n
	mov [ebp-4], ecx
	;zarezerwuj 2*N*4 = 8*n = 2^3
	shl ecx,3
	push ecx
	call _malloc
	add esp,4
	;eax adres docelowy
	cmp eax,0
	je nie_udalo_sie_zarezerwowac_pamieci
	mov edi, offset temp
	mov esi, [ebp+8]
	mov ecx, [ebp-4] ;ecx=n
	add edi, ecx ;dodajemy do edi dlugosc tekstu aby zapisac go od rtylu
	inc ecx
	std ;set direction flag aby movsb zmniejszalo adresy
	rep movsb  



	nie_udalo_sie_zarezerwowac_pamieci:
	add esp,4 ;nasz zmienna dynamiczna dla n usuwana
	pop edi
	pop esi
	pop ebx
	pop ebp

	ret
_palindrom ENDP
END