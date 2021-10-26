#include <stdio.h>

int main()
{
    char c[5];
    int i;

    for (i = 0; i < 5; i++)
        scanf(" %c", &c[i]);
    for ( ; i >= 0; i--)
        printf("%c ", c[i]);
    putchar('\n');

    return 0;
}