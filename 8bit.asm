org 100h



mov cl, 8

petla:
mov ah, 1
int 0x21h
mov [numbers], al
add byte [numbers], 1
loop petla

mov cl, 8

wypisanie:
mov dl, [numbers]
mov ah, 04h
int 0x21h
add byte [numbers], 1
loop wypisanie


ret

numbers dw 0