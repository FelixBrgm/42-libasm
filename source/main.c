#include <stdio.h>
#include <stdlib.h>
extern int  ft_strlen( char *str);
extern char *ft_strcpy( char *dst, char *src);
extern int  ft_strcmp(char *s1, char *s2);
extern char *ft_strdup(char *str);
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

    char *s1 = "a";
    char *s2 = "d";
    char *s3 = "a";
    printf("ft_strcmp:\n");
    printf("\t Should be -3 %i\n", ft_strcmp(s1, s2));
    printf("\t Should be  3 %i\n", ft_strcmp(s2, s1));
    printf("\t Should be  0 %i\n", ft_strcmp(s3, s1));
    
    // printf("STRING: |%s|", ft_strdup("TEST"));
    return (0);
}