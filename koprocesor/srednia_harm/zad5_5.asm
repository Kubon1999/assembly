.686
.xmm
.model flat
;void pm_jeden (float * tabl);
public _pm_jeden
.data
	liczby1 dd 1.0, 1.0, 1.0, 1.0
.code
_pm_jeden PROC
	push ebp
	mov ebp,esp
	push esi
	;0 ebp
	;4 call
	;8 tabl
	mov esi, [ebp+8]


	movups xmm5, [esi]
	movups xmm6, xmmword ptr liczby1
	ADDSUBPS xmm5,xmm6
	movups [esi], xmm5

	pop esi
	pop ebp
	ret
_pm_jeden ENDP
END