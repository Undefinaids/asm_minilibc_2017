/*
** EPITECH PROJECT, 2018
** tests
** File description:
** tests
*/

#include <wait.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include "tests.h"

void assert(char *str, int (*function_test)(void))
{
	int res = 0;
	int status;
	pid_t pid;

	pid = fork();
	if (pid == 0) {
		res = function_test();
		printf("[%s] %s\n", res == 1 ?
		"\033[0;32mOK\033[0m" : "\033[0;31mKO\033[0m", str);
		exit(0);
	}
	while (wait(&status) != pid) {
	}
	if (status != 0)
		printf("\033[0;31mKO\033[0m %s\n", str);
}

int main(int ac, char **av)
{
	strlen_tests();
	memcpy_tests();
	memmove_tests();
	memset_tests();
	rindex_tests();
	strcasecmp_tests();
	strcmp_tests();
	strncmp_tests();
	strchr_tests();
	strcspn_tests();
	gnl_tests();
}
