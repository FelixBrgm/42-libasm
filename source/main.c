#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>

extern int  ft_strlen( char *str);
extern char *ft_strcpy( char *dst, char *src);
extern int  ft_strcmp(char *s1, char *s2);
extern char *ft_strdup(char *str);
extern ssize_t ft_read(int fd, void *buf, size_t count);
extern ssize_t ft_write(int fd, const void *buf, size_t count);

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
    
    printf("ft_strdup:\n");
    char *s4 = "";
    char *s5 = "TestString";
    printf("\t strdup: |%s|, ft_strdup: |%s|\n", strdup(s4), ft_strdup(s4));
    printf("\t strdup: |%s|, ft_strdup: |%s|\n", strdup(s5), ft_strdup(s5));


    char *str = "Hello, world!";
    char buffer[100];
    printf("Testing ft_read:\n");
    int fd = open("source/main.c", O_RDONLY);
    ssize_t count = read(fd, buffer, 99);
    buffer[count] = '\0';
    printf("Expected: \n%s\n", buffer);
    lseek(fd, 0, SEEK_SET);
    count = ft_read(fd, buffer, 99);
    buffer[count] = '\0';
    printf("Got: \n%s\n", buffer);
    close(fd);

    printf("Testing ft_write:\n");
    write(1, str, strlen(str));
    write(1, "\n", 1);
    ft_write(1, str, strlen(str));
    ft_write(1, "\n", 1);

    printf("Tester end...\n");
    printf("Return value: %li\n", ft_read(0, NULL, 0));
    printf("Errorno: %i\n", errno);
    printf("Return value: %li\n", read(0, NULL, 0));
    printf("Errorno: %i\n", errno);

    return (0);
}