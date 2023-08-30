	bits 	32
	org 	0x7c00
	xor	ax, 		ax
	xor	bx, 		bx
	xor 	cx, 		cx
	xor	dx, 		dx
	xor 	eax, 		eax
	xor	ebx, 		ebx
	xor 	ecx, 		ecx
	xor	edx, 		edx
	;set video mode
	mov 	ah, 		0x00
	mov 	al, 		0x13

	int 	10h
	mov 	ah, 		0x0C
	mov 	bh, 		0
	jmp 	main

main:
	xor 	bh, 		bh
	inc 	cx 			; increment CX
	push 	ax
	push	cx
	push 	dx
	mov 	al, 		0Dh
	inc	cx
	dec	dx
	int 	10h
	inc	al
	mov 	bh, 		al
	pop 	cx
	pop	dx
	pop	ax
	inc	dx
	mov 	al, 		bh
	inc 	al
	and	al, 		0xFF
	mov 	ah, 		0x0C
	int 	10h
	;hlt
	jmp 	main
	
times 		510 - ($ - $$) db 0
dw 		0xAA55 ; Signature
