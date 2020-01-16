/*
** EPITECH PROJECT, 2018
** rindex
** File description:
** rindex
*/

#include "tests.h"

static int rindex_basic(void)
{
	char *str = strdup("l'asm c'est genial");

	char *tmp = rindex(str, 'e');
	if (rindex(str, 'e') == str + 13)
		return (1);
	return (0);
}

static int rindex_not_found(void)
{
	char *str = strdup("l'asm c'est genial");

	if (rindex(str, 'z') == NULL)
		return (1);
	return (0);
}

static int rindex_special_char(void)
{
	char *str = strdup("l'asm c'est genial");

	if (rindex(str, '\0') == str + 18)
		return (1);
	return (0);
}

void rindex_tests(void)
{
	assert("rindex_basic", &rindex_basic);
	assert("rindex_not_found", &rindex_not_found);
	assert("rindex_special_char", &rindex_special_char);
}
