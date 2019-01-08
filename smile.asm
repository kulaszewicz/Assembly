org 100h

mov al, 6
mov ah, 0
int 0x10

mov bx, 0b800h

mov es, bx

mov ax, 80
mov bx, [y]
mul bx
mov bx, ax
add bx, [x]

mov ax, 2
mul bx

mov bx, ax

add bx, 4h
mov word [es:bx], 2000h

add bx, 0x10
mov word [es:bx], 2000h

mov ax, 80
add byte [y], 3
mov bx, [y]
mul bx
mov bx, ax
add bx, [x]

mov ax, 2
mul bx

mov bx, ax

mov word [es:bx], 2000h

add bx, 4h
mov word [es:bx], 2000h

add bx, 0x10
mov word [es:bx], 2000h
add bx, 0x4
mov word [es:bx], 2000h


mov ax, 80
add byte [y], 1
mov bx, [y]
mul bx
mov bx, ax
add bx, [x]

mov ax, 2
mul bx

mov bx, ax

add bx, 0x8
mov word [es:bx], 2000h
add bx, 0x4
mov word [es:bx], 2000h
add bx, 0x4
mov word [es:bx], 2000h

mov ax, 0
mov ax, 80*4
mov bx, 0
add bx, ax


ret

x dw 55
y dw 20

