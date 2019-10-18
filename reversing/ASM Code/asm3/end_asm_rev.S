section .text
global asm3

asm3:
	push   ebp
	mov    ebp,esp
	xor    eax,eax
	mov    ah,BYTE [ebp+0x9]
	shl    ax,0x10
	sub    al,BYTE [ebp+0xd]
	add    ah,BYTE [ebp+0xf]
	xor    ax,WORD [ebp+0x10]
	nop
	pop    ebp
	ret 