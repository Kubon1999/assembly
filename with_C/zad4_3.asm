.686
.model flat
public _odejmij_jeden

.code
	_odejmij_jeden PROC
		push ebp
		mov ebp, esp
		push ebx

		mov eax, [ebp+8]
		mov eax, [eax]
		mov ebx, [eax]
		dec ebx
		mov [eax], ebx

		pop ebx
		pop ebp
		ret
	_odejmij_jeden ENDP
END