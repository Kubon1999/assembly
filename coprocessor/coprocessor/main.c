#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <xmmintrin.h>
float funkcja(long n);
__m128 szybki_max(short int t1[], short int t2[]);
void EvalRowsWeights(int n, int m, double* M, double* W);
float avg_wd(int n, void* tablica, void* wag);
float sr_kwadrat(float*, int n);
int main() {

	//float w = funkcja(500);
	//printf("%f", w);
	/*short int val1[8] = {1,-1,2,-2,3,-3,4,-4};
	short int val2[8] = { -4,-3,-2,-1,0,1,2,3 };
	__m128 t1 = szybki_max(val1, val2);
	for (int i = 0; i < 8; i++) {
		printf("%d\n", t1.m128_i16[i]);
	}*/
 
	//srednia wazona 
	/*float tab[4] = {2.0,3.0,4.0,5.0};
	float wagi[4] = { 5.0,1.0,7.0,6.0 };
	float w = avg_wd(4, tab, wagi);
	printf("%f", w);*/
	int n = 5;
	float ai[5] = { 1.2,-1.5,2.5,100,52.5 };
	float w = sr_kwadrat(ai, n);
	printf("%f", w);
	return 0;
}