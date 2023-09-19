#include <stdio.h>
#include <stdlib.h>
extern int ft_strlen( char *str);
extern char *ft_strcpy( char *dst, char *src);

int main()
{
    printf("------------------\n");
    printf("Tester start...\n");
    printf("ft_strlen:\n");
    printf("\t'NULL' -> 0 | %i\n",ft_strlen(NULL));
    printf("\t'some words' -> 10 | %i\n",ft_strlen("some words"));

    char *dst = malloc(4);
    char *src = "Say";
    printf("ft_strcpy:\n");
    printf("\t '%s' | '%s'\n", src,  ft_strcpy(dst, src));

    return (0);
}