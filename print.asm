; Print a string to the console using BIOS interrupt services
print:
lodsb
test al, al
jz print_done
mov ah, 0x0e
int 0x10
jmp print

print_done:
ret
