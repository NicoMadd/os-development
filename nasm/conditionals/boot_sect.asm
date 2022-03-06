            ;
            ; A simple boot sector program that demonstrates conditionals.
            ;

mov ax, 3
cmp ax, 4 ; compare the value in ax to 4
je then_block ; jump to then_block if they were equal
mov bl, 'b' ; otherwise , execute this code
mov bh, 'o'
jmp printreg ; important : jump over the ’then ’ block ,
; so we don ’t also execute that code.
then_block:
mov bl,'c'
mov bh,'a'

printreg:
mov ah, 0x0e
mov al, bl
int 0x10
mov al, bh
int 0x10



the_end:
jmp $               ; Jump forever.
                    ; Padding and magic BIOS number.
times 510 -( $ - $$ ) db 0
dw 0xaa55

; In a language such as C or Java, this would look like this:
; if( ax == 4) {
; bx = 23;
; } else {
; bx = 45;
; }