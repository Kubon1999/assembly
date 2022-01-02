.686
.model flat
public _mnozenie32

.data

.code
_mnozenie32 PROC
	push ebp
	mov ebp, esp

	;0 ebp
	;4 call
	;8 adres liczby 

	mov esi, [ebp+8]
	mov ebx, [esi]
	push ebx
	fld dword ptr [esp]
	pop ebx
	and ebx, 7F800000h ;wykladnik
	shl ebx,1
	shr ebx,24
	add ebx,5 ;pomnoz przez 2^5 = 32
	shl ebx,24
	shr ebx,1
	mov eax, [esi]
	and eax, 007FFFFFh
	xor eax,ebx
	push eax
	fld dword ptr [esp]
	pop eax
	pop ebp
	ret
_mnozenie32 ENDP
END