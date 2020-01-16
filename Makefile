##
## EPITECH PROJECT, 2018
## make
## File description:
## make
##

NASM	=	nasm

LD	=	ld

RM	=	rm -f

LDFLAGS	=	-shared

INC	=	include

NAME	=	libasm.so

OBJS	=	$(SRCS:.asm=.o)

SRCS	=	src/memcpy.asm \
		src/memmove.asm \
		src/memset.asm \
		src/rindex.asm \
		src/strchr.asm \
		src/strcmp.asm \
		src/strlen.asm \
		src/strstr.asm \
		src/strpbrk.asm \
		src/strcspn.asm \
		src/strcasecmp.asm \
		src/strncmp.asm \
		src/read.asm \
		src/write.asm \
		bonus/allocate.asm \
		bonus/getnextline.asm \
		bonus/strcpy.asm \
		bonus/strdup.asm 

OBJTEST =	$(SRCTEST:.c=.o)

SRCTEST = 	tests/main.c \
		tests/strlen_tests.c \
		tests/memcpy_tests.c \
		tests/memmove_tests.c \
		tests/memset_tests.c \
		tests/rindex_tests.c \
		tests/strcasecmp_tests.c \
		tests/strcmp_tests.c \
		tests/strncmp_tests.c \
		tests/strcspn_tests.c \
		tests/gnl_tests.c \
		tests/strchr_tests.c

all: $(NAME)

$(NAME): $(OBJS)
	$(LD) $(LDFLAGS) -o $(NAME) $(OBJS)

tests_run: 	$(OBJS)
	gcc -fno-builtin -o unit_tests $(OBJS) $(SRCTEST) -Iinclude
	./unit_tests

%.o:	%.asm
	$(NASM) -f elf64 -o $@ $<

clean:
	$(RM) $(OBJS)
	$(RM) $(OBJTEST)

fclean: clean
	$(RM) $(NAME)

re: clean all

.PHONY: all clean fclean re
