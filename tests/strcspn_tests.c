/*
** EPITECH PROJECT, 2018
** strcspn
** File description:
** strcspn
*/

#include "tests.h"

static int strcspn_basic(void)
{
	if (strcspn("l'asm c'est genial", "k'asm c'est geniak") == 1)
		return (1);
	return (0);
}

static int strcspn_short(void)
{
	if (strcspn("", "holà") == 0)
		return (1);
	return (0);
}

static int strcspn_special_char(void)
{
	if (strcspn("coucou\t", "\t") == 6)
		return (1);
	return (0);
}

void strcspn_tests(void)
{
	assert("strcspn_basic", &strcspn_basic);
	assert("strcspn_short", &strcspn_short);
	assert("strcspn_special_char", &strcspn_special_char);
}
