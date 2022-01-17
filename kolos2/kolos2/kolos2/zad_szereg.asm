.686
.model flat
public _szereg
.code
;zadanie 2 18.01.2016
_szereg proc
	push ebp
	mov ebp,esp

	mov ecx,[ebp+8]
	finit
	fldz
	fld1
	lp:
		fld1
		faddp
		fld1
		fld st(1)
		fdivp
		fxch st(1)
		fxch st(2)
		faddp
		fxch
		loop lp

	fxch

	pop ebp
	ret
_szereg ENDP
END