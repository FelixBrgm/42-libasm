#include <stdio.h>

extern int ft_strlen( char *str);

int main()
{
    printf("------------------\n");
    printf("Tester start...\n");
    printf("ft_strlen:\n");
    printf("\t'some words' -> 10 | %i\n",ft_strlen(NULL));
    printf("\t'some words' -> 10 | %i\n",ft_strlen("some words"));
    return (0);
}