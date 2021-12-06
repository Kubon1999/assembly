.686
.model flat

public _main
extern  __write : proc
extern  __read : proc
extern  _ExitProcess@4 : proc

.data
input dw 2, 3, 5, 0, 2, 10, 20 ,15, 12, 14, 15 ;11
output dw 100 dup (?)
.code

_main PROC

	;ebx k - przesuniecie ebx np k = 2 n = 4 (p0,p1,p2,p3), (p2,p3,p4,p5)
	;edx - ilosc wszystkich el
	;ecx - n czyli ilosc elementow zestawu z ktorego brac srednia
	;esi - adres danych
	;edi - adres do zapisu wynikow srednich
	mov edx, 11
	mov ebx, 2
	mov ecx, 3
	mov esi, offset input
	mov edi, offset output
	;init end
	push esi
	push ecx
	;ovlicz ile raz y zewnetrzna petla
	mov eax,edx
	mov edx,0
	div ecx
	mov edx,eax
	;koniec
	mov eax, 0
	lp2:
		cmp edx,1
		je koniec
	lp:
		add ax, [esi]
		add esi,2
		loop lp
	pop ecx
	pop esi
	push edx
	mov edx, 0
	div ecx
	pop edx
	mov [edi], ax
	add edi,2
	add esi,ebx
	dec edx

	jmp lp2

	koniec:
	call _ExitProcess@4
_main ENDP
END
