NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror
SRCS = ft_bzero.c \
			 ft_isalnum.c \
			 ft_isalpha.c \
			 ft_isascii.c \
			 ft_isdigit.c \
			 ft_isprint.c \
			 ft_memcpy.c \
			 ft_memset.c \
			 ft_memmove.c \
			 ft_strlen.c \
			 ft_strlcpy.c \
			 ft_strlcat.c \
			 ft_toupper.c \
			 ft_tolower.c \
			 ft_strchr.c \
			 ft_strrchr.c \
			 ft_strncmp.c \
			 ft_memchr.c \
			 ft_memcmp.c \
			 ft_strnstr.c \
			 ft_atoi.c \
			 ft_calloc.c \
			 ft_strdup.c \
			 ft_substr.c \
			 ft_strjoin.c \
			 ft_strtrim.c
OBJDIR = obj
OBJS = $(patsubst %.c,$(OBJDIR)/%.o,$(SRCS))

all: $(OBJDIR) $(NAME)

$(OBJDIR):
	mkdir -p $(OBJDIR)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

$(OBJDIR)/%.o: %.c libft.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJDIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re

