org 100h

mov al, [liczba8bit]
push ax
shr al, 7

cmp al, 1
je ujemna
jne dodatnia



dodatnia:
pop ax
mov cx, 8
poczatek:	
	mov dx, 0
	mov bx, 10
	div bx
	push dx  
loop poczatek

mov cx, 8
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
neg al
mov ah, 0

mov cx, 8
poczatek2:	
	mov dx, 0
	mov bx, 10
	div bx
	push dx  
loop poczatek2

mov cx, 8
wypisz2:
	pop DX
	add DX, '0'
	mov AH, 02h
	int 21h
loop wypisz2

mov ax, 4c00h
int 21h


liczba8bit dw 0xFF
