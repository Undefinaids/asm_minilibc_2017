/*
** EPITECH PROJECT, 2018
** strncmp
** File description:
** strncmp
*/

#include "tests.h"

static int strncmp_equal(void)
{
	if (strncmp("abc", "abc", 2) == 0)
		return (1);
	return (0);
}

static int strncmp_negatif(void)
{
	if (strncmp("ABC", "abd", 1) == -32)
		return (1);
	return (0);
}

static int strncmp_positif(void)
{
	if (strncmp("aBZ", "Abd", 1) == 32)
		return (1);
	return (0);
}

void strncmp_tests(void)
{
	assert("strncmp_equal", &strncmp_equal);
	assert("strncmp_negatif", &strncmp_negatif);
	assert("strncmp_positif", &strncmp_positif);
}
