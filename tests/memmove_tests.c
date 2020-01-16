/*
** EPITECH PROJECT, 2018
** strlen
** File description:
** strlen
*/

#include <stdlib.h>
#include "tests.h"

static int memmove_basic(void)
{
	char *str = calloc(sizeof(char), 15);

	for (int i = 0; i < 10; i++)
		str[i] = 'a';
	str = memmove(str, "BBBBBBBBB", 3);
	if (str[0] == 'B' && str[1] == 'B' && str[2] == 'B' && str[3] == 'a')
		return (1);
	return (0);
}

static int memmove_zero(void)
{
	char *str = calloc(sizeof(char), 15);

	for (int i = 0; i < 10; i++)
		str[i] = 'a';
	str = memmove(str, "BBBBBBBBB", 0);
	if (str[0] == 'a' && str[1] == 'a' && str[2] == 'a' && str[3] == 'a')
		return (1);
	return (0);
}

static int memmove_big(void)
{
	char *str = calloc(sizeof(char), 15);

	for (int i = 0; i < 10; i++)
		str[i] = 'a';
	str = memmove(str, "BBBBBBBBB", 10);
	if (str[0] == 'B' && str[1] == 'B' && str[2] == 'B' && str[3] == 'B')
		return (1);
	return (0);
}

void memmove_tests(void)
{
	assert("memmove_basic", &memmove_basic);
	assert("memmove_zero", &memmove_zero);
	assert("memmove_big", &memmove_big);
}
