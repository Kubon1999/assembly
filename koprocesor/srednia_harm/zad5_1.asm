.686
.model flat
;float srednia_harm (float * tablica, unsigned int n);
public _srednia_harm
.data

.code
_srednia_harm PROC
	push ebp
	mov ebp,esp
	;ebp = 0
	;call 4
	;esi address 8 
	;n 12
	push ebx
	push esi
	push edi



	mov esi, [ebp+8] ;esi = adres tablicy
	mov ebx, [ebp+12] ;ebx = n

	mov ecx, ebx
	finit
	fldz
	lp:
		fld1 ;ladujemy wartosc = 1 na wierzcholek koprocesor
		fdiv dword ptr [esi] ;dzielimy wierzcholek koprocesora (1) przez to co w pamieci (float)
		faddp st(1),st(0) ;dodajemy aktualny wynik do st1 i popujemy

		add esi, 4 ;zwiekszamy esi o 4 bo float = 4 bajty
		loop lp

	fild dword ptr [ebp+12]
	fdiv st(0), st(1)

	pop edi
	pop esi
	pop ebx
	pop ebp
	ret
_srednia_harm ENDP
END