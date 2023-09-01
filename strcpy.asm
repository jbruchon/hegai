; Copy a string in memory
strcpy:
lodsb
test al, al
jz strcpy_done
stosb
jmp strcpy

strcpy_done:
stosb
ret
