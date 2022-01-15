.686
.model flat
public _rozklad
extern _malloc : PROC
.code
;27.01.2015
;program dizeli kazda liczbe przez 16 
;dla kazdej reszty z dzielenia jest tablica wynikowa ktora zapisuje ile reszt z dzielenia wyszlo np 16/16 = 0 tab[0]++
;17/16 = 1 reszta 1 tab[1]++ itd
_rozklad PROC
	push ebp
	mov ebp,esp

	push 16
	call _malloc
	add esp,4
	mov edi,eax
	mov ecx,16
	lp2:
		mov [eax],byte ptr 0
		inc eax
		loop lp2

	mov esi, [ebp+8]


	mov ecx, [ebp+12]

	mov ebx,16
	lp:
		mov eax, [esi]
		add esi,4
		mov edx, [esi]
		div ebx
		mov al, [edi][edx]
		inc al
		mov [edi][edx],al
		add esi,4
		loop lp

	mov eax, edi
	pop ebp
	ret
_rozklad ENDP
END