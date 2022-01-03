.686
.model flat
public _ciag
.data
	dwa dq 2.0
	trzy dq 3.0
	piec dq 5.0
	szesc dq 6.0
	adres_x dd ?
.code
_ciag PROC
	push ebp
	mov ebp,esp
	push ebx
	push esi
	push edi
	;0 ebp
	;4 call
	;8 x address
	mov eax, [ebp+8]
	mov eax, [eax]
	finit
	push eax
	fild dword ptr [esp]
	pop eax

	fldz
	fcomi st(0),st(1) ;0>x?
	jae ret_0
	fstp st(0) ;remove0

	fld1
	fcomi st(0),st(1) ;1=x?
	je ret_5
	fstp st(0) ;remove1

	fld dwa
	fcomi st(0),st(1) ;2=x?
	je ret_6
	fstp st(0) ;remove2

	fstp st(0) ;remove x

	;(3-ciag(x-1))/x
	mov eax, [ebp+8];x
	mov eax,[eax]
	dec eax;x-1
	mov adres_x, eax
	push offset adres_x
	call _ciag
	add esp,4
	;st0 = ciag(x-1)
	fld trzy ;st0 3 st1 ciag(x-1)
	fxch st(1) ;st0 ciag(x-1) st1 3
	fsubp ;st0 = 3-ciag(x-1)
	;ladowanie x
	mov eax, [ebp+8]
	mov eax, [eax]
	push eax
	fild dword ptr [esp]
	pop eax
	fdivp  ; st0 = st1/st0 



	jmp koniec
	ret_0:
		fstp st(0) ;remove0
		fstp st(0) ;remove x
		fldz
		jmp koniec
	ret_5:
		fstp st(0) ;remove1
		fstp st(0) ;remove x
		fld piec ;result is 5 for  x=1
		jmp koniec
	ret_6:
		fstp st(0) ;remove2
		fstp st(0) ;remove x
		fld szesc ;result is 6 for x =2
		jmp koniec


	koniec:
	pop edi
	pop esi
	pop ebx
	pop ebp
	ret
_ciag ENDP
END