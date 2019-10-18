#include <stdio.h>

extern int asm4(char a[]);

int main(void) {
	char a[]="picoCTF_376ee";
	printf("0x%x\n", asm4(a));

	return 0;
}
