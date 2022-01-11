#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <xmmintrin.h>
float find_max_range(float v, float alpha);
__m128 mul_at_once(__m128 one, __m128 two);
int main() {
	float v = 3.3;
	float alpha = 30;
	float w = find_max_range(v,alpha);
	printf("%f", w);

	__m128 val1;
	val1.m128_i32[0] = 1;
	val1.m128_i32[1] = 2;
	val1.m128_i32[2] = 3;
	val1.m128_i32[3] = 4;
	__m128 val2;
	val2.m128_i32[0] = -1;
	val2.m128_i32[1] = 2;
	val2.m128_i32[2] = -3;
	val2.m128_i32[3] = 4;
	__m128 w2 = mul_at_once(val1, val2);
	printf("\n%d\n", w2.m128_i32[0]);
	printf("%d\n", w2.m128_i32[1]);
	printf("%d\n", w2.m128_i32[2]);
	printf("%d\n", w2.m128_i32[3]);
	return 0;
}