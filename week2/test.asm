%macro	sysexit	0
	mov	eax,1
	int 	0x80
%endmacro

section	.data
testArr	db	0x12,0x34,0xfa,0xf7,0x15,0x44,0x7e
section	.text
	extern space
	extern newline
    extern write_char
    extern write_hex_digit
    extern write_hex
    extern write_bin

global _start
_start:	
    mov esi,testArr
    mov ecx,4
    cld
_print_loop
    lodsb
    call    write_char
    call    space
    loop    _print_loop
    call    newline
_exit:
	sysexit
