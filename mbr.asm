[bits 16]
[org 0x7c00]

; Zero out AX/segment registers
xor ax, ax
mov ds, ax
mov es, ax
mov ss, ax
mov sp, 0x9c00

; Boot banner
mov si, MSG_HELLO
call print

mov si, MSG_STRCPY_TEST
mov di, MSG_HELLO_END
call strcpy

mov si, MSG_HELLO
call print

; Loop forever on failure
hlt

%include "print.asm"
%include "strcpy.asm"

MSG_HELLO db "Hegai boot", 13, 10
MSG_HELLO_END db 0, "what", 13, 10
MSG_STRCPY_TEST db "strcpy string", 13, 10, 0

times 510-($-$$) db 0xff
db 0x55, 0xaa
