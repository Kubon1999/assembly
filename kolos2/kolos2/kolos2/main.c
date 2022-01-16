#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
void rozklad(unsigned __int64* tabl, unsigned int n);
unsigned int nwd(unsigned int a, unsigned int b);
float obj_stozka_sc(float r, float R, float h);
float half_to_float(float x); //powinno byc half x
float uint48_float(float typuint48);//powienine byc uint48
int main() {
	/*
	unsigned __int64 tab[4] = { 6,16,123,16 };
	unsigned int n = 4;
	rozklad(tab, n);
	*/
	/*unsigned int a = nwd(56, 74);
	printf("%d", a);
	*/
	/*float w = obj_stozka_sc(2, 3, 7);
	printf("%f", w);*/
	//half_to_float(2.0);
	float w = uint48_float(1.0);
	printf("%f", w);
	return 0;
}