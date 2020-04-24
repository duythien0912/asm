section	.data
bArr	db	1,2,3,4,5,7,8,9
len	equ	$-bArr
section	.text
global	start
start:
main:
	xor	esi,esi
	mov	edi,len-1
	mov	ecx,len
	shr	ecx,1
swap_loop:
	mov	al,byte[bArr+esi]
	xchg	al,byte[bArr+edi]
	mov	byte[bArr+esi],al
	inc	esi
	dec	edi
	loop	swap_loop
_exit:
	mov	eax,1
	int	0x80
