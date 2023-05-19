#include <stdio.h>
#include <stdlib.h>

int main() {
    int number = 0;
    printf("Введи число: ");
    int tmp = scanf("%d", &number);
    if (tmp == 1) {
        if (number > 0) {
        exit(1);
        } else if (number < 0) {
            exit(2);
        } else {
            exit(0);
        }
    } else {
        exit(5);
    }
}