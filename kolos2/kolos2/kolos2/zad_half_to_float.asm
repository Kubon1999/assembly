.686
.model flat
public _half_to_float
.code
;zadanie 1 z kolosa 2 zmienic half w 16bit na float w 32bit
_half_to_float PROC
	push ebp
	mov ebp,esp
	push esi
	push edi

	mov esi, 0000C000H ;-2.0 w half
	mov esi, 1011101111110100b
	mov edi,0
	mov eax,0FFFFFFFFh
	mov eax,7c00h
	and eax,esi
	shr eax,10
	sub eax,15
	add eax,127
	shl eax,23
	xor edi,eax
	mov eax,3ffh
	and eax,esi
	shl eax,13
	xor edi,eax
	bt esi,15
	jc znak
	jmp koniec
	znak:
	 bts edi,31
	koniec:
	push edi ; sprawdzy czy dziala powinien zaladowac 2.0
	fld dword ptr [esp]
	add esp,4

	pop edi
	pop esi
	pop ebp
	ret
_half_to_float ENDP
END