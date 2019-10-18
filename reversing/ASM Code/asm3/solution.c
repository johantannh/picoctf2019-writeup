#include <stdio.h>

extern int asm3(int a, int b, int c);

int main(void) {
	
	printf("0x%x\n", asm3(0xc264bd5c,0xb5a06caa,0xad761175));

	return 0;
}
