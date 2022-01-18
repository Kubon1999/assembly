.686
.model flat
public _miesz2float
.data
	dwapiecszesc dd 256.0
.code
;15.01.2018 zad 1
_miesz2float PROC
	push ebp
	mov ebp,esp
	push ebx
	;mov eax,[ebp+8] ;eax = miesz32
	mov eax, 4A0h ;4.625 w miesz32
	mov ecx,0 ;licznik przesuniec w lewo
	lp:
		rcl eax,1 ;patrzymy kiedy z lewej wypadnie 1
		jc stop ;
		inc ecx
		jmp lp

	stop:
		;"wypadnieta" jedynka to niejawna jedynka wiec mozna ja pominac
		; i nie przywracac
		shr eax,9 ;przesuwamy mantyse na poczartek floata, 9 bo o 1 bit znaku i8 bitow wykladnika w prawo
		; --- wykladnik ---
		mov ebx,23 ;miesz od lewej ma na 23 miejscu kropke
		sub ebx,ecx ;odejmujemy przesuniecia 
		add ebx,127  ;dodajemy offset floatowy
		shl ebx,23 ;przesuwamy na miejsce wykladnika
		xor eax,ebx ;wklejamy obliczony wykladnik

		push eax
		finit
		fld dword ptr [esp]
		add esp,4



	;sposob 2
	mov eax, 4A0h ;4.625 w miesz32
	finit
	push eax
	fild dword ptr [esp]
	add esp,4
	fld dwapiecszesc
	fdivp
		
	pop ebx
	pop ebp
	ret

_miesz2float ENDP
END