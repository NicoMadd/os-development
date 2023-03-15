;
; Simple code for functions implentation in Assembler
;

_main:
mov bp, 0x8000
mov sp, bp
push 'a'
call print
jmp end

print:
mov ah, 0x0e
mov al, 'a'
int 0x10
pop bx
mov al,bl
int 0x10
ret

end:

jmp $

times 510 -($-$$) db 0

dw 0xaa55
