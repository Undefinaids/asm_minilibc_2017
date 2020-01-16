/*
** EPITECH PROJECT, 2018
** strlen
** File description:
** strlen
*/

#include "tests.h"

static int strlen_basic(void)
{
	if (strlen("l'asm c'est genial") == 18)
		return (1);
	return (0);
}

static int strlen_short(void)
{
	if (strlen("") == 0)
		return (1);
	return (0);
}

static int strlen_special_char(void)
{
	if (strlen("\tcoucou\t") == 8)
		return (1);
	return (0);
}

void strlen_tests(void)
{
	assert("strlen_basic", &strlen_basic);
	assert("strlen_short", &strlen_short);
	assert("strlen_special_char", &strlen_special_char);
}
