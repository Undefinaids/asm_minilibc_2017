/*
** EPITECH PROJECT, 2018
** strcasecmp
** File description:
** strcasecmp
*/

#include "tests.h"

static int strcasecmp_equal(void)
{
	if (strcasecmp("ABC", "abc") == 0)
		return (1);
	return (0);
}

static int strcasecmp_negatif(void)
{
	if (strcasecmp("ABC", "abd") == -1)
		return (1);
	return (0);
}

static int strcasecmp_positif(void)
{
	if (strcasecmp("ABZ", "abd") == 22)
		return (1);
	return (0);
}

void strcasecmp_tests(void)
{
	assert("strcasecmp_equal", &strcasecmp_equal);
	assert("strcasecmp_negatif", &strcasecmp_negatif);
	assert("strcasecmp_positif", &strcasecmp_positif);
}
