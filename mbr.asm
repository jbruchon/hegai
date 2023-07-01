[bits 16]
[org 0x7c00]

; code goes here one day
jmp $

%include "print.asm"

MSG_HELLO db "Hello world, this is Hegai", 0

times 510-($-$$) db 0
db 0x55
db 0xaa
