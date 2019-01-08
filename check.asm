org 100h


mov dx, napis1
mov bx, napis2

mov cx, 6

lp:
	push bx
	mov bx, dx
	mov ax, [bx]
	pop bx
	cmp [bx], ax
	jne checkFalse
	add bx, 1
	add dx, 1
loop lp



mov bx, 0b800h
mov es, bx

mov dx, 1
mov bx, 80

imul bx, dx

add bx, 20

imul bx , 2

mov byte [es:bx], 'T'
ret

checkFalse:
	mov bx, 0b800h
	mov es, bx
	mov dx, 1
	mov bx, 80
	imul bx, dx
	add bx, 20
	imul bx , 2
	mov byte [es:bx], 'F'
	ret


napis1 dw 'marian',0
napis2 dw 'marian',0


