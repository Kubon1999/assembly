.686
.xmm
.model flat
;void int2float (int * calkowite, float * zmienno_przec);
public _int2float

.data
.code
_int2float PROC
	push ebp
	mov ebp,esp
	push esi
	push edi

	;0 ebp
	;4 call
	;8 adres calkowite
	;12 adres zmiennoprzec
	
	mov esi, [ebp+8]
	mov edi, [ebp+12]
	cvtpi2ps xmm5, qword PTR [esi]
	movups [edi], xmm5

	pop edi
	pop esi
	pop ebp
	ret
_int2float ENDP
END