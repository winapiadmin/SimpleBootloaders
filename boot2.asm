bits 		16 ; 16-bit code
org 		0x7c00 ; Set image base
jmp 		main

main:
	mov ah, 0x0E
	mov al, 'Y'
	int 10h
	hlt
	mov al, 'o'
	int 10h
	hlt
	mov al, 'u'
	int 10h
	hlt
	mov al, 'r'
	int 10h
	hlt
	mov al, ' '
	int 10h
	hlt
	mov al, 'c'
	int 10h
	hlt
	mov al, 'o'
	int 10h
	hlt
	mov al, 'm'
	int 10h
	hlt
	mov al, 'p'
	int 10h
	hlt
	mov al, 'u'
	int 10h
	hlt
	mov al, 't'
	int 10h
	hlt
	mov al, 'e'
	int 10h
	hlt
	mov al, 'r'
	int 10h
	hlt
	mov al, ' '
	int 10h
	hlt
	mov al, 'h'
	int 10h
	hlt
	mov al, 'a'
	int 10h
	hlt
	mov al, 'd'
	int 10h
	hlt
	mov al, ' '
	int 10h
	hlt
	mov al, 'b'
	int 10h
	hlt
	mov al, 'e'
	int 10h
	hlt
	mov al, 'e'
	int 10h
	hlt
	mov al, 'n'
	int 10h
	hlt
	mov al, ' '
	int 10h
	hlt
	mov al, 'd'
	int 10h
	hlt
	mov al, 'e'
	int 10h
	hlt
	mov al, 's'
	int 10h
	hlt
	mov al, 't'
	int 10h
	hlt
	mov al, 'r'
	int 10h
	hlt
	mov al, 'o'
	int 10h
	hlt
	mov al, 'y'
	int 10h
	hlt
	mov al, 'e'
	int 10h
	hlt
	mov al, 'd'
	int 10h
	hlt
	mov al, ' '
	int 10h
	hlt
	mov al, 'b'
	int 10h
	hlt
	mov al, 'y'
	int 10h
	hlt
	mov al, ' '
	int 10h
	hlt
	mov al, 'P'
	int 10h
	hlt
	mov al, 'r'
	int 10h
	hlt
	mov al, 'o'
	int 10h
	hlt
	mov al, 'j'
	int 10h
	hlt
	mov al, 'e'
	int 10h
	hlt
	mov al, 'c'
	int 10h
	hlt
	mov al, 't'
	int 10h
	hlt
	mov al, '1'
	int 10h
	hlt
	mov al, '!'
	int 10h
	hlt
	mov al, ' '
	int 10h
	hlt
	jmp fillscreen

fillscreen:
	mov 			ah, 06h
	mov				al, 00h
	inc				bh
	mov				ch, 0
	mov				cl, 0
	mov				dh, 25
	mov				dl, 80
	int 			10h
	jmp 			fillscreen
Sleep:
    push ax
    push dx

    mov cx, 0x07 ; number of microseconds to sleep (1 second)
    mov dx, 0x4240 ; high word of delay time
    mov ax, 0x86 ; BIOS delay function
    int 0x15 ; call BIOS

    pop dx
    pop ax
    ret
times 510 - ($ - $$) db 0
dw 0xAA55 ; Signature