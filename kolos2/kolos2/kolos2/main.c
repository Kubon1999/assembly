#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
void rozklad(unsigned __int64* tabl, unsigned int n);
unsigned int nwd(unsigned int a, unsigned int b);
float obj_stozka_sc(float r, float R, float h);
float half_to_float(float x); //powinno byc half x
float uint48_float(float typuint48);//powienine byc uint48
void aktualna_godzina(char* godzina);
void aktualna_godzina2(char* godzina);
wchar_t* zamien_na_base12(unsigned int liczba);
float szereg(unsigned int n);
float miesz2float(int liczba);
float float_to_half(float l); //powinno zwraca  half
char* druk_rozszerzony(char* druk);
unsigned __int64 sortowanie_64bit(unsigned __int64* tab, unsigned int n);
void binarne_rozkazy();
void wyrownaj(float a, float b, float c );
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
	/*float w = uint48_float(1.0);
	printf("%f", w);*/
	//char* godzina = "11";
	//aktualna_godzina2(&godzina);
	//printf("%s", godzina);
	//wchar_t* w = zamien_na_base12(1234);
	//printf("%s", w);S
	//float w = szereg(4);
	//printf("%f", w);
	//miesz2float(123);
	//druk_rozszerzony("kuba");
	//float_to_half(123.41);
	/*unsigned __int64 tab[10] = {15,14123,421,543,234,3454,3454,3454,123123123,123123};
	unsigned int n = 10;
	sortowanie_64bit(tab, n);
	for (int i = 0; i < n; i++) {
		printf("\n%ld", tab[i]);
	}*/
	//binarne_rozkazy();
	/*int a, b, * wsk, wynik;
	wsk = &b;
	a = 21; b = 25;
	wynik = roznica(&a, &wsk);
	printf("%d", wynik);
	*/
	wyrownaj(2.0, 3.0, 4.0);
	return 0;
}