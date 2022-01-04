#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
float funkcja(long n);
int main() {

	float w = funkcja(500);
	printf("%f", w);

	return 0;
}