##
## Makefile for Makefile in yoann.wargnier/rendu/ASM/asm_minilibc
##
## Made by anony
## Login   <yoann.wargnier@epitech.eu>
##
## Started on  Thu Mar 23 16:23:36 2017 anony
## Last update Sun Mar 26 23:14:32 2017 anony
##

NAME	= libasm.so

SRCS	= strlen.S \
	strchr.S \
	strcmp.S \
	strncmp.S \
	rindex.S

OBJS	= $(SRCS:.S=.o)

LD	= ld

LDFLAGS += -shared

ASM	= nasm -f elf64

RM	= rm -f

.S.o:
	$(ASM) -o $@ $<

$(NAME): $(OBJS)
	 $(LD) $(LDFLAGS) -o $(NAME) $(OBJS)

all: $(NAME)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
