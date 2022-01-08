#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
double ciag(unsigned int* x);
float* XYZ2R(float* tablCIEXYZ, int n);
char* spaces(char znak);
void* palindrom(wchar_t* tekst);
unsigned int NWD(unsigned int a, unsigned int b);
float obj_stozka_sc(float r, float R, float h);
int main()
{
	/* 
	create recurrent function 
	prototype: double ciag(unsigned int* x);

	x>0:
	5						x = 1
	6						x = 2
	(3-ciag(x-1))/x			x > 2
	*/
	//unsigned int *x = 5;
	//double wynik = ciag(&x);
	//printf("%f", wynik);

	/*
	create function with prototype:
	float* XYZ2R(float* tablCIEXYZ, int n);

	task:
		-tablCIEXYZ.length = 3*n
		-function returns address to allocated array of size n that stores sums of the 3 next elements from tablCIEXYZ
		-function sums the 3 elements with this equation: 3.064*x - 1.393*y - 0.475*z
	*/
	/*
	int n = 3;
	float arr[3 * 3] = { 1,2,3,4,5,6,7,8,9 };
	float* wynik = XYZ2R(arr, n);
	printf("%f", wynik[0]);
	printf("%f", wynik[1]);
	printf("%f", wynik[2]);
	*/

	/* fill memory of size 129 with ( char, 127 spaces, 1 zero )
	
	
	*/
	/*char znak = 'a';
	char* znaki = "asdfdsfsf";
	char* w = spaces(znak);
	*/
	//find all palindromes in text and safe its effective address and lengt
	//returns address to table that contains: (address where starts the palindrome, length of palindrome)
	//int* wsk = palindrom("kajak");

	/* napiszac podprogram w asemblerze */
	//nwd
	//unsigned int w = NWD(28,35);
	//printf("%d", w);

	//
	float w = obj_stozka_sc(5, 6, 7);
	printf("%f", w);

	return 0;
}
