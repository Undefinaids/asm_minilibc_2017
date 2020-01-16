/*
** EPITECH PROJECT, 2018
** tests
** File description:
** tests
*/

#ifndef TESTS_H_
#define TESTS_H_

#include <string.h>
#include <stddef.h>

void strlen_tests(void);
void memcpy_tests(void);
void *memcpy(void *dest, const void *src, size_t n);
void memmove_tests(void);
void gnl_tests(void);
void *memmove(void *dest, const void *src, size_t n);
void memset_tests(void);
void *memset(void *s, int c, size_t n);
void rindex_tests(void);
char *rindex(const char *s, int c);
void strcasecmp_tests(void);
void strcmp_tests(void);
void strncmp_tests(void);
void strchr_tests(void);
void strcspn_tests(void);
void assert(char *str, int (*function_test)(void));
char *get_next_line(int fd);
int puts(const char *s);
#endif /* TESTS_H_ */
