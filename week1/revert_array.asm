SECTION	.data
arr	db 0x1a, 0xfc, 0x11,  0x8f, 0x55, 0x1b, 0x2c
len	equ	7

SECTION .bss
wArr	resb	3

SECTION .text

global	_start
_start:
main:
	mov	ecx, len
	xor	esi, esi


_exit:
	mov	eax,1
	int	0x80