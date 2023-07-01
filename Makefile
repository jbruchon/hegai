# Hegai Makefile

CFLAGS ?= -O2 -g
CC ?= gcc
INSTALL = install
RM      = rm -f

ASM_OBJS += mbr.bin

all: hegai

hegai: $(ASM_OBJS)

%.bin: %.asm
	nasm -f bin -o $@ $<

clean:
	$(RM) $(ASM_OBJS) $(IMAGEFILE) *~ .*.un~ *.gcno *.gcda *.gcov
