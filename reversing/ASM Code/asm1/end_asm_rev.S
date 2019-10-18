section .text
global asm1

asm1:
	push   ebp
	mov    ebp,esp
	cmp    DWORD [ebp+0x8],0x37a
	jg     part_a
	
	cmp    DWORD [ebp+0x8],0x345
	jne    part_b
	
	mov    eax,DWORD [ebp+0x8]
	add    eax,0x3
	jmp    part_c
	
part_b: 
	mov    eax,DWORD [ebp+0x8]
	sub    eax,0x3
	jmp    part_c

part_a:
	cmp    DWORD [ebp+0x8],0x5ff
	jne    part_d

	mov    eax,DWORD [ebp+0x8]
	sub    eax,0x3
	jmp    part_c

part_d:
	mov    eax,DWORD [ebp+0x8]
	add    eax,0x3

part_c:
	pop    ebp
	ret   