section .text
global asm2


asm2:
	push   ebp
	mov    ebp,esp
	sub    esp,0x10
	mov    eax,DWORD [ebp+0xc]
	mov    DWORD [ebp-0x4],eax
	mov    eax,DWORD [ebp+0x8]
	mov    DWORD [ebp-0x8],eax
	jmp    part_a

part_b:
	add    DWORD [ebp-0x4],0x1
	add    DWORD [ebp-0x8],0xcc

part_a:	
	cmp    DWORD [ebp-0x8],0x3937
	jle    part_b
	
	mov    eax,DWORD [ebp-0x4]
	leave  
	ret  