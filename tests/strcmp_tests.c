/*
** EPITECH PROJECT, 2018
** strcmp
** File description:
** strcmp
*/

#include "tests.h"

static int strcmp_equal(void)
{
	if (strcmp("abc", "abc") == 0)
		return (1);
	return (0);
}

static int strcmp_negatif(void)
{
	if (strcmp("ABC", "abd") == -32)
		return (1);
	return (0);
}

static int strcmp_positif(void)
{
	if (strcmp("aBZ", "Abd") == 32)
		return (1);
	return (0);
}

void strcmp_tests(void)
{
	assert("strcmp_equal", &strcmp_equal);
	assert("strcmp_negatif", &strcmp_negatif);
	assert("strcmp_positif", &strcmp_positif);
}
