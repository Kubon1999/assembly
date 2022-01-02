#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
float mnozenie32(float* liczba);
int main()
{
	float q = 15.75;
	float wynik = mnozenie32(&q);
	printf("%f", wynik);
}
