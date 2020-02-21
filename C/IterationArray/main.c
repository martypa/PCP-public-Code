
#include <stdio.h>
#include <stdlib.h>

void printNumbersGoto(int n) {
    int i = 0;
    start:
    printf("%d ", i);
    if (i < n){
        i++;
        goto start;
    }
}

void printNumbersFor(int n) {
 int i = 0;
 for(int i = 0; i<= n; i++){
     printf("%d ", i);
 }
}

void helpRecursive(int n, int m){
    printf("%d ", m);
    if(m<n){
        helpRecursive(n,m+1);
    }
}

void printNumbersRecursiveFunction(int n) {
    helpRecursive(n,0);
}




int main(int argc, char** argv) {
    int n = 7;

    printNumbersGoto(n);
    printf("= printNumbersGoto(%d)\n", n);

    printNumbersFor(n);
    printf("= printNumbersFor(%d)\n", n);

    printNumbersRecursiveFunction(n);
    printf("= printNumbersRecursiveFunction(%d)\n", n);

    return (0);
}