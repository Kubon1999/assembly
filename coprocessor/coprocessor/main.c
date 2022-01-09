#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <xmmintrin.h>
float funkcja(long n);
__m128 szybki_max(short int t1[], short int t2[]);
int main() {

	//float w = funkcja(500);
	//printf("%f", w);
	short int val1[8] = { 1,-1,2,-2,3,-3,4,-4 };
	short int val2[8] = { -4,-3,-2,-1,0,1,2,3 };
	__m128 t1 = szybki_max(val1, val2);
	for (int i = 0; i < 8; i++) {
		printf("%d\n", t1.m128_i16[i]);
	}


	return 0;
}