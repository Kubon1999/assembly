#define _CRT_NO_WARNINGS
#include <stdio.h>
unsigned int zlicz_falszerstwa(char* wejscie, char klucz);
int znajdz_plik(char* root_path, char* file_name);
int main() {
	/*
	char* wejscie = ";{\"tekst\":sdasd,\"szyfr\":0x34};{\"tekst\":ssss,\"szyfr\":0x47};{\"tekst\":foo,\"szyfr\":0xAB}";
	char klucz = 'a';
	int w = zlicz_falszerstwa(wejscie, klucz);
	printf("%d", w);
	*/

	int w = znajdz_plik("D:\\pa", "xd.txt");
	printf("%d", w);
	return 0;
}