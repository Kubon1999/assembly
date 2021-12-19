.686
.model flat
public _szukaj_max
.code
_szukaj_max PROC
	push ebp ; zapisanie zawartości EBP na stosie
	mov ebp, esp ; kopiowanie zawartości ESP do EBP
	
	;lets define max(a,b) returns the biggest number in the numbers set, for example: a=5,b=4 max(5,4)=5
	;firstly we check if a>b and eax=max(a,b)
	;and c > d then ebx = max(c,d)
	;then we do max(a,b) > max(c,d)? then we have max(a,b,c,d)
	; a = [ebp+8] a = int u2 32bit = 4 bytes, 8+4 = 12 so [ebp+12] = b
	; b = [ebp+12]
	; c = [ebp+16]
	; d = [ebp+20]
	; eax = max(a,b)
	; ebx = max(c,d)
	mov eax, [ebp+8] ; eax = a
	cmp eax, [ebp+12] ; comapre a , b
	jg do_nothing;a>b then jump to a_bigger
	;a < b , set eax = b = max(a,b)
	mov eax, [ebp+12]

	do_nothing:
	;check max(c,d)
	mov ebx, [ebp+16]
	cmp ebx,[ebp+20] ; 
	jg do_nothing2;c>d
	;d>c
	mov ebx, [ebp+20]
	do_nothing2:

	;now lets check if max(a,b) or max(c,d) is bigger
	cmp eax,ebx
	jg do_nothing3;ab>cd
	mov eax, ebx;cd = max
	do_nothing3:

	pop ebp
	ret
_szukaj_max ENDP
END