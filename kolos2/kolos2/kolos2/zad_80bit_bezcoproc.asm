.686
.model flat
public _check_dwa
.data 
.code
_check_dwa PROC
	push ebp
	mov ebp,esp
	;27.01.2015 zad 2
	;sprawdzic czy na stosie jest 2.0 ktore jest zapisane na 80bit floatowych
	;jezeli liczba 80bit nie rowna sie 2.0 to clc 
	;jezeli liczba sie rowna to stc

	;0 ebp
	;4 call
	;8 mlodsza czesc mantysy (32)
	;12 starsza czesc mantysy ( 32)
	;16 wykladnik i znak (16bit)
	;=80

	mov eax, [ebp+14] ; druga starsza polowa starszej czesci mantysy + wykladnik i znak
	; stos:
	; +12 starsza czesc mantysy cz1
	; +14 starsza czesc mantysy cz2
	; +16 wykladnik i znak 
	; +18 wykladnik i znak koniec
	;czyli jak pobierzemy od 14 do 18 4 bajty to bedziemy mieli to co nas insteresuje bo 2.0 ma postac
	; 0100 0000 0000 0001 1000 0000....
	; znak,15 wykladnik,  ^jawna jedynka, pozniej same zera 
	;pobieramy te 4 bajty 
	; 0100 0000 0000 0001 1000 0000 0000 0000
	;porownujemy czy sa identyczne na stosie jezeli tak to jest dwojka jesli nie to inna liczba
	cmp eax, 40018000h
	je tak_2
	;nie
	clc
	jmp koniec

	tak_2:
	stc
	jmp koniec

	koniec:
	pop ebp
	ret
_check_dwa ENDP
END