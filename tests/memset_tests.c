/*
** EPITECH PROJECT, 2018
** strlen
** File description:
** strlen
*/

#include <stdlib.h>
#include "tests.h"

static int memset_basic(void)
{
	char *str = calloc(sizeof(char), 15);

	for (int i = 0; i < 10; i++)
		str[i] = 'a';
	str = memset(str, 'B', 3);
	if (str[0] == 'B' && str[1] == 'B' && str[2] == 'B' && str[3] == 'a')
		return (1);
	return (0);
}

static int memset_zero(void)
{
	char *str = calloc(sizeof(char), 15);

	for (int i = 0; i < 10; i++)
		str[i] = 'a';
	str = memset(str, 'B', 0);
	if (str[0] == 'a' && str[1] == 'a' && str[2] == 'a' && str[3] == 'a')
		return (1);
	return (0);
}

static int memset_big(void)
{
	char *str = calloc(sizeof(char), 15);

	for (int i = 0; i < 10; i++)
		str[i] = 'a';
	str = memset(str, 'B', 10);
	if (str[0] == 'B' && str[1] == 'B' && str[2] == 'B' && str[3] == 'B')
		return (1);
	return (0);
}

void memset_tests(void)
{
	assert("memset_basic", &memset_basic);
	assert("memset_zero", &memset_zero);
	assert("memset_big", &memset_big);
}
