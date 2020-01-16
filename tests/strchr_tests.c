/*
** EPITECH PROJECT, 2018
** strchr
** File description:
** strchr
*/

#include "tests.h"

static int strchr_basic(void)
{
	char *str = strdup("l'asm c'est genial");

	char *tmp = strchr(str, 'e');
	if (strchr(str, 'e') == str + 8)
		return (1);
	return (0);
}

static int strchr_not_found(void)
{
	char *str = strdup("l'asm c'est genial");

	if (strchr(str, 'z') == NULL)
		return (1);
	return (0);
}

static int strchr_special_char(void)
{
	char *str = strdup("l'asm c'est genial");

	if (strchr(str, '\0') == str + 18)
		return (1);
	return (0);
}

void strchr_tests(void)
{
	assert("strchr_basic", &strchr_basic);
	assert("strchr_not_found", &strchr_not_found);
	assert("strchr_special_char", &strchr_special_char);
}
