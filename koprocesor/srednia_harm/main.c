/* Program przyk³adowy ilustruj¹cy operacje SSE procesora
 Program jest przystosowany do wspó³pracy z podprogramem
 zakodowanym w asemblerze (plik arytm_SSE.asm)
*/
#include <stdio.h>
void dodaj_SSE(float*, float*, float*);
void pierwiastek_SSE(float*, float*);
void odwrotnosc_SSE(float*, float*);
void sum_char(char* liczbyA, char* liczbyB, char* wynik);
void int2float(int* calkowite, float* zmienno_przec);
void pm_jeden(float* tabl);
void dodawanie_SSE(float* a);
int main()
{
	/*
	float p[4] = { 1.0, 1.5, 2.0, 2.5 };
	float q[4] = { 0.25, -0.5, 1.0, -1.75 };
	float r[4];
	dodaj_SSE(p, q, r);
	printf("\n%f %f %f %f", p[0], p[1], p[2], p[3]);
	printf("\n%f %f %f %f", q[0], q[1], q[2], q[3]);
	printf("\n%f %f %f %f", r[0], r[1], r[2], r[3]);
	printf("\n\nObliczanie pierwiastka");
	pierwiastek_SSE(p, r);
	printf("\n%f %f %f %f", p[0], p[1], p[2], p[3]);
	printf("\n%f %f %f %f", r[0], r[1], r[2], r[3]);
	printf("\n\nObliczanie odwrotnoœci - ze wzglêdu na \
stosowanie");
	printf("\n12-bitowej mantysy obliczenia s¹ ma³o dok³adne");
	odwrotnosc_SSE(p, r);
	printf("\n%f %f %f %f", p[0], p[1], p[2], p[3]);
	printf("\n%f %f %f %f", r[0], r[1], r[2], r[3]);
	*/
	/*5.3
	char liczby_A[16] = { -128, -127, -126, -125, -124, -123, -122,
		-121, 120, 121, 122, 123, 124, 125, 126, 127 };
	char liczby_B[16] = { -3, -3, -3, -3, -3, -3, -3, -3,
			3, 3, 3, 3, 3, 3, 3, 3 };	char wynik[16];

	sum_char(liczby_A, liczby_B, wynik);

	for (int i = 0; i < 16; i++) {
		printf("%d ", liczby_A[i]);
	}
	printf("\n");
	for (int i = 0; i < 16; i++) {
		printf("%d ", liczby_B[i]);
	}
	printf("\n");
	for (int i = 0; i < 16; i++) {
		printf("%d ", wynik[i]);
	}
	*/
	/*5.4
	int a[2] = { -17, 24 };
	float r[4];
	// podany rozkaz zapisuje w pamiêci od razu 128 bitów,
	// wiêc musz¹ byæ 4 elementy w tablicy
	int2float(a, r);
	printf("\nKonwersja = %f %f\n", r[0], r[1]);
	*/

	//5.5
	/*
	float tablica[4] = { 27.5,143.57,2100.0, -3.51 };
	printf("\n%f %f %f %f\n", tablica[0],
		tablica[1], tablica[2], tablica[3]);
	pm_jeden(tablica);
	printf("\n%f %f %f %f\n", tablica[0],
		tablica[1], tablica[2], tablica[3]);		*/
	//5.6

	float wyniki[4];
	dodawanie_SSE(wyniki);
	printf("\nWyniki = %f %f %f %f\n",
		wyniki[0], wyniki[1], wyniki[2], wyniki[3]);
	return 0;
}