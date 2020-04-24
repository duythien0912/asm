section	.data
hello	db	'netwide assembly',10
len	equ	$-hello
key	db	5
section	.bss
encodeArr	resb	20
decodeArr	resb	20
section	.text

global	_start
_start:
main:
	xor	esi,esi
	mov	ecx,len
e_loop:
	mov	al,byte[hello+esi]
	xor	al,key
	mov	byte[encodeArr+esi],al
	inc	esi
	loop e_loop
e_print:
	mov	eax,4
	mov	ebx,1
	mov	ecx,encodeArr
	mov	edx,len
	int	0x80

	xor	esi,esi
	mov	ecx,len
d_loop:
	mov	al,byte[encodeArr+esi]
	xor	al,key
	mov	byte[decodeArr+esi],al
	inc	esi
	loop d_loop
d_print:
	mov	eax,4
	mov	ebx,1
	mov	ecx,decodeArr
	mov	edx,len
	int	0x80

_exit:
	mov	eax,1
	int	0x80



