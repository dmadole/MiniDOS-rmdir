
all: rmdir.bin

lbr: rmdir.lbr

clean:
	rm -f rmdir.lst
	rm -f rmdir.bin
	rm -f rmdir.lbr

rmdir.bin: rmdir.asm include/bios.inc include/kernel.inc
	asm02 -L -b rmdir.asm
	rm -f rmdir.build

rmdir.lbr: rmdir.bin
	rm -f rmdir.lbr
	lbradd rmdir.lbr rmdir.bin

