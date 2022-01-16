.686
.model flat
public _uint48_float
.data
dwa dd 2.0
trzydziesci_dwa dd 32.0
xd dd 65536.0
.code
;zadanie 2015 kolo s 2
;zmienic uint48 na float 
; uint48 to wymyslony jakis chyba przez dziubicha na kartce jest wytlumaczony
; xd to 2^16 bo na 16 miejscu liczba ma przecinek wiec po zaladowaniu jej trzeba ja przesunac o 16 miejsc w prawo czyli podzielic 16 razy przez 2 czyli podzielic przez 2^16

_uint48_float PROC
	push ebp
	mov ebp,esp

	mov eax,[ebp+8]
	push 00008000h
	push 00024000h

	fild qword ptr [esp]
	fld xd
	fdivp

	add esp,8

	pop ebp
	ret

_uint48_float ENDP
END