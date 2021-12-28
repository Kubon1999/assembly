.686
.model flat
public _nowy_exp

.data
	cyfra_1 dd 1.0
.code
_nowy_exp PROC
	push ebp
	mov ebp, esp
	;ebp 0
	;call 4
	;float x 8
	finit
	fld1 
	fld1
	fld1 ;st(0) = licznik, st(1) = mianownik, st(2) = suma
	mov eax,1
	mov ecx, 20
	lp:
		fmul dword ptr [ebp+8] ;licznik * x
		fstp st(3) ;st0 mianownik st1 suma st2 licznik*x
		push eax
		fild dword ptr [esp] ;wrzuc eax na stos koprocesora
		pop eax
		inc eax
		;fld st(0) ;st0 mianownik st1 mianownik st2 suma st3 licznik
		;fadd cyfra_1 ;st0 mianownik+1 st1 mianownik st2 suma st3 licznik
		;st0 eax st1 mianownik st2 suma st3 licznik
		fmulp ;st0 eax*mianownik  st1 suma st2 licznik
		fst st(3) ;zapisz mianownik w st3 
		;st0 mianownik st1 suma st2 licznik st3 mianownik
		fld st(2) ;st0 licznik st1 mianownik s2 suma st3 licznik st4 mianownik
		fdiv st(0),st(1) 
		;st0 licznik/mianownik st1 mianownik st2 suma st3 licznik st4 mianownik 
		fxch st(1)
		fstp st(0)
		;st0 licznik/mianiwnik st1 suma st2 licznik st3 mianownik
		faddp ;st0 suma + licznik/mianownik st1 licznik st2 mianownik
		fxch st(2) ;st0 mianownik st1 licznik st2 suma
		fxch st(1) ;st0 licznik st1 mianwnik st2 suma
	loop lp

	fxch st(2) ;wrzuc sume na wiercholek stosu koproc.
	pop ebp

	ret
_nowy_exp ENDP
END