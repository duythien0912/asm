section	.data
fStr	db	"Found at index:"
flen	equ	$-fStr
nfStr	db	"Not found",10
nflen	equ	$-nfStr

bArr	db	0,0,0,12,5,0,7,-1
len	equ	$-bArr
index	db	0
section	.text
global	_start
_start:
main:
	mov	edi,bArr
	mov	ecx,len
	xor	al,al
	cld
_find_loop:
	scasb
	jnz	_found
	loop	_find_loop
_not_found:
	;print "not found"

_found:
	;Print out the index of found element
	sub	edi,bArr
	mov	ebx,edi
	mov	byte[index],bl


_exit:
	mov	eax,1
	int	0x80
