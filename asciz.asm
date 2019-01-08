org 100h


mov bx, 0b800h
mov es, bx

mov dx, 1
mov bx, 80

imul bx, dx

add bx, 20

imul bx , 2

mov ax, napis
mov cx, 30
lp:
	push ax
	push bx
	mov bx, ax
	mov dl, [bx]
	cmp dl, 0
	je koniec
	pop bx
	mov byte [es:bx], dl
	add bx, 2
	pop ax
	add ax, 1
loop lp

ret

koniec:
pop bx
pop ax

ret

napis db 'ala ma kota', 0


