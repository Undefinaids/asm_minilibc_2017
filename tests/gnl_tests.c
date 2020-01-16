/*
** EPITECH PROJECT, 2018
** strlen
** File description:
** strlen
*/

#include "tests.h"

static int gnl_eds(void)
{
	puts("taupin=");
	if (strcmp(get_next_line(0), "taupin") == 0)
		return (1);
	return (0);
}

void gnl_tests(void)
{
	assert("gnl_standard_entry", &gnl_eds);
}
