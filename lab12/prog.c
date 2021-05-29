#include <stdio.h>
#include <stdlib.h>

int main(){

    int n;

    scanf("%d", &n);

    if (n < 0) {
	exit(1);
    }

    if (n > 0) {
	exit(2);
    }

    exit(0);
}