.686
.model flat

extern _ExitProcess@4 : PROC
extern __read : PROC ;read from keyboard function
extern __write : PROC ;write text to monitor
public _main 
.data 
	storage db 80 dup (?) ;pointer to region that stores text
	number_of_characters dd ?
.code
_main	PROC
	;--- read characters from keyboard ---
	;read(device_id, storage_for_text, number_of_characters)
	;in assembly function arguments are pushed into stack from right
	;to left

	push 80 ;number_of_characters 
	push OFFSET storage ;storage_for_text
	push 0 ;device_id
	call __read ;call function to read from keyboard
	add esp,12 ;remove from stack (each argument 4 bytes * 3 =12)

	;--- modify characters ---
	;range of small letters in ascii code 61h -> 7ah (16)
	;eax contains the number of letters read from keyboard
	mov ecx, eax
	mov number_of_characters, eax
	mov ebx, offset storage
	mov eax, 0
	lp:
		mov dl, [ebx+eax]

		cmp dl, 61h ; compare to lower boundary of letters in ascii code
		jb dont_change ;jump if below
		cmp dl, 7ah ; comapre to upper boundary of letters in ascii code
		ja dont_change ;jump if above
		cmp dl, 0A9h

		;change letter from small to big
		sub dl, 20h
		mov [ebx+eax], dl
		dont_change: ;end go to next loop
			inc eax	;increase by 1 the counter to take the next number		
			loop lp



	;--- write characters to monitor ---
	 push number_of_characters
	 push OFFSET storage
	 push 1 ;window handle
	 call __write
	 add esp, 12 ; remove from stack

	;exit program
	push 0
	call _ExitProcess@4
_main endp
end


