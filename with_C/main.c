#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
int szukaj_max(int a, int b, int c, int d);
void liczba_przeciwna(int *a);
void odejmij_jeden(int** a);
void przestaw(int tab1[], int n);
int dot_product(int tab1[], int tab2[], int n);
int* merge(int tab1[], int tab2[], int n);

int main()
{
	/* 4.1
	int x, y, z, z2, wynik;
	printf("\nProszę podać trzy liczby całkowite ze znakiem: ");
	scanf_s("%d %d %d %d", &x, &y, &z, &z2);
	wynik = szukaj_max(x, y, z, z2);


	printf("\nSpośród podanych liczb %d, %d, %d, %d, \
 liczba %d jest największa\n", x, y, z, z2, wynik);
	return 0;
	*/
	/* 4.2
	int x,wynik;
	printf("\nProszę podać trzy liczby całkowite ze znakiem: ");
	scanf_s("%d", &x);
	liczba_przeciwna(&x);


	printf("\n %d \n", x);
	return 0;
	*/
	/* 4.3
	int k;
	int* wsk;
	wsk = &k;
	printf("\nProsze napisac liczbe: ");
	scanf_s("%d", &k, 12);
	odejmij_jeden(&wsk);
	printf("\nWynik = %d\n", k);
	return 0;
	*/
	/*
	int n = 5;
	int tab[5] = { 100, 5, 12, 210 ,44 };

	for (int i = 0; i < n; i++) {
		printf("%d\n", tab[i]);
	}

	for (int i = 0; i < n; i++) {
		przestaw(tab, n);
	}

	for (int i = 0; i < n; i++) {
		printf("2:%d\n", tab[i]);
	}*/

	int n;
	printf("podaj n: ");
	scanf("%d", &n);
	int* tab1 = malloc(sizeof(int) * n);
	int* tab2 = malloc(sizeof(int) * n);
	printf("podaj tab1:\n");
	for(int i = 0; i < n; i++) {
		int temp;
		scanf("%d", &temp);
		tab1[i] = temp;
	}
	printf("podaj tab2:\n");
	for (int i = 0; i < n; i++) {
		int temp;
		scanf("%d", &temp);
		tab2[i] = temp;
	}


	printf("wynik:\n");
	for (int i = 0; i < n; i++) {
		printf("(tab1)(tab2) %d: %d %d\n", i, tab1[i], tab2[i]);
	}
	/* 
	int wynik = dot_product(tab1, tab2, n);
	*/
	int* res = merge(tab1, tab2, n);
	for (int i = 0; i < 2*n; i++) {
		printf("merge[ %d ]: %d\n", i, res[i]);
	}
}
