org 100h

mov bx, 0b800h
mov es, bx

mov dx, 1
mov bx, 80

imul bx, dx

add bx, 40

imul bx , 2

mov ah, 1
int 21h

sub al, 30h
mov cl, al
sub cl, 1
mov ax, 0
petla:
	push cx
	push ax
	mov byte [es:bx], '*'
	mov dx, 160
	sub dx, [x]
	add byte [x], 2
	add bx, dx
	mov byte [es:bx], '*'
	add byte [x], 2
	pop ax
	add ax, 2
	mov cx, ax
	petla2:
		add bx, 2
		mov byte [es:bx], '*'
	loop petla2
	pop cx
loop petla
	

ret

x dw 2
