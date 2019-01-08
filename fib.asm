org 100h

push word 11
push word 0
push word 1

call f
add sp, 4

mov ax, 0
mov ax, 4c00h
int 21h



f:
	push bp
	mov bp, sp
	add bp, 4
	pusha
	
	mov dl, [bp+4]
	cmp dl, 1
	jl less
	jge greater
	
	less:
	popa
	pop bp
	mov ax, 0
	mov ax, 4c00h
	int 21h
	
	
	
	greater:
	mov ax, [bp+4]
	mov bx, [bp+2]
	mov dx, [bp]
	add bx, dx
	push bx
	push dx
	push ax
	
	mov cx, 0
	mov ax, bx
	
	beginW:
		cmp ax, 0
		je write
		mov dx, 0
		mov bx, 10
		div bx
		inc cx   
		push dx 
	jmp beginW

	write:

	cmp cx, 0
	jle contin
		pop DX
		add DX, '0'
		mov AH, 02h
		int 21h
		dec cx
	jmp write

	contin:
	
	pop ax
	sub ax, 1
	pop dx
	pop bx
	push ax
	push dx
	push bx
	call f
	add sp, 4
	

	




