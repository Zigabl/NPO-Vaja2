#include <stdio.h>
#include <stdlib.h>

#define STEVILO 10

int izracun(int x) {
    return x * 2;
}

int main()
{
    int rezultat = izracun(STEVILO);
    #if STEVILO > 5
    printf("Vecje od 5\n");
    #else
    printf("Manjse ali enako 5\n");
    #endif

    printf("Rezultat: %d\n", rezultat);

    return 0;
}