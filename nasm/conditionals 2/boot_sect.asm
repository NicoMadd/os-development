            ;
            ; A simple boot sector program that demonstrates conditional example.
            ;

; if (bx <= 4) {
; mov al , 'A'
; } else if (bx < 40) {
; mov al , 'B'
; } else {
; mov al , 'C'
; }


mov bx , 45
cmp bx ,4
jle lessorequal
cmp bx, 40
jl less
mov al , 'C'
jmp end

lessorequal:
mov al , 'A'
jmp end

less:
mov al , 'B'
jmp end

end:
mov ah , 0x0e ; int =10/ ah =0 x0e -> BIOS tele - type output
int 0x10 ; print the character in al

jmp $
; Padding and magic number.
times 510 -( $ - $$ ) db 0
dw 0xaa55