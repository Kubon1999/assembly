.686
.model flat
extern _malloc : PROC
extern _strlen : PROC
extern _SetCurrentDirectory@4 : PROC
extern _FindFirstFileA@8 : PROC
public _znajdz_plik
.data
	pa db 'pa'
.code
_znajdz_plik PROC
	push ebp
	mov ebp,esp
	push esi
	push edi
	
	mov esi, [ebp+8] ;rootpath
	mov edi, [ebp+12] ;filename

	;ustawienei aktualnego folderu
	push esi
	call _SetCurrentDirectory@4
	add esp,4

	;alokacja 56 bit na wynik findfilea
	push 56
	call _malloc
	add esp, 4

	;sprawdzanie czy istnieje plik
	push eax
	push edi
	call _FindFirstFileA@8
	add esp,8

	cmp eax,-1
	je spr_kat
	cmp eax,0
	je znaleziono_plik

	znaleziono_plik:
	mov eax,1
	jmp koniec

	spr_kat:
	;sprawdzanie czy katalog istnieje
	push pa
	push edi
	call _FindFirstFileA@8
	add esp,8
	cmp eax,-1
	je zwroc_0
	;znaleziono katalog
	push esi
	call _strlen
	add esp,4
	add esi,eax ;dodajemy dlugosc lancucha sciezki folderu i dodajemy folder aby w niego wejsc
	mov bx,pa
	mov [esi],ax
	sub esi,eax
	;szukamy dalej
	push edi;szukany plik
	push esi;sciezka w ktorej szukac
	call _znajdz_plik
	add esp,8
	jmp koniec


	zwroc_0:
		mov eax,0
		jmp koniec


	koniec:
	pop edi
	pop esi
	pop ebp
	ret
_znajdz_plik ENDP
END