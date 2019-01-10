
org 100h

mov ax, [liczba16bit]
push ax
shr ax, 15

cmp ax, 1
je ujemna
jne dodatnia



dodatnia:
pop ax
mov cx, 16
poczatek:	
	mov dx, 0
	mov bx, 10
	div bx
	push dx  
loop poczatek

mov cx, 16
wypisz:
	pop DX
	add DX, '0'
	mov AH, 02h
	int 21h
loop wypisz

mov ax, 4c00h
int 21h

ujemna:

mov dx, '-'
mov AH, 02h
int 21h

pop ax
neg ax


mov cx, 16
poczatek2:	
	mov dx, 0
	mov bx, 10
	div bx
	push dx  
loop poczatek2

mov cx, 16
wypisz2:
	pop DX
	add DX, '0'
	mov AH, 02h
	int 21h
loop wypisz2

mov ax, 4c00h
int 21h


liczba16bit dw 1000000000000001b
