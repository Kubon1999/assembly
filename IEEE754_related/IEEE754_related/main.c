#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
float mnozenie32(float* liczba);
float dziel16(float* liczba);
int main()
{
	float q = 32.5;
	float wynik = dziel16(&q);
	printf("%f", wynik);
}
