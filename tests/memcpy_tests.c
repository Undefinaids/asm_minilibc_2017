/*
** EPITECH PROJECT, 2018
** strlen
** File description:
** strlen
*/

#include <stdlib.h>
#include "tests.h"

static int memcpy_basic(void)
{
	char *str = calloc(sizeof(char), 15);

	for (int i = 0; i < 10; i++)
		str[i] = 'a';
	str = memcpy(str, "BBBBBBBBB", 3);
	if (str[0] == 'B' && str[1] == 'B' && str[2] == 'B' && str[3] == 'a')
		return (1);
	return (0);
}

static int memcpy_zero(void)
{
	char *str = calloc(sizeof(char), 15);

	for (int i = 0; i < 10; i++)
		str[i] = 'a';
	str = memcpy(str, "BBBBBBBBB", 0);
	if (str[0] == 'a' && str[1] == 'a' && str[2] == 'a' && str[3] == 'a')
		return (1);
	return (0);
}

static int memcpy_big(void)
{
	char *str = calloc(sizeof(char), 15);

	for (int i = 0; i < 10; i++)
		str[i] = 'a';
	str = memcpy(str, "BBBBBBBBB", 10);
	if (str[0] == 'B' && str[1] == 'B' && str[2] == 'B' && str[3] == 'B')
		return (1);
	return (0);
}

void memcpy_tests(void)
{
	assert("memcpy_basic", &memcpy_basic);
	assert("memcpy_zero", &memcpy_zero);
	assert("memcpy_big", &memcpy_big);
}
