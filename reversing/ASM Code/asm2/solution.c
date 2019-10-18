#include <stdio.h>

extern int asm2(int a, int b);

int main(void) {
	
	printf("0x%x\n", asm2(0x7,0x18));

	return 0;
}
