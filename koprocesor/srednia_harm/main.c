#define _CRT_SECURE_NO_WARNINGS
float srednia_harm(float* tablica, unsigned int n);
#include <stdio.h>
int main() {

	float wynik;
	unsigned int n;
	int debug = 0;
	//pobieramy n
	printf("Podaj n: ");
	scanf("%d", &n);

	float* tablica = malloc(sizeof(float) * n);
	printf("Podaj wartosci w tablicy: \n");
	for(int i = 0; i < n; i++) {
		scanf("%f", &tablica[i]);
	}

	wynik = srednia_harm(tablica, n);
	
	printf("%f", wynik);
	return 0;
}