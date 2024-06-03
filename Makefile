NAME = libft.a
CC = cc
CFLAGS = -Wall -Werror -Wextra
AR = ar
ARFLAGS = rcs
SRCS = ./
SOURCES = ft_isalpha.c \
			ft_isdigit.c \
			ft_isalnum.c \
			ft_isascii.c \
			ft_isprint.c \
			ft_strlen.c \
			ft_memset.c \
			ft_bzero.c \
			ft_memcpy.c \
			ft_memmove.c \
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
			ft_strtrim.c \
			ft_split.c \
			ft_itoa.c \
			ft_strmapi.c \
			ft_striteri.c \
			ft_putchar_fd.c \
			ft_putstr_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c 

BONUS_SOURCES = ft_lstnew_bonus.c \
				ft_lstadd_front_bonus.c \
				ft_lstsize_bonus.c \
				ft_lstlast_bonus.c \
				ft_lstadd_back_bonus.c \
				ft_lstdelone_bonus.c \
				ft_lstclear_bonus.c \
				ft_lstiter_bonus.c \
				ft_lstmap_bonus.c

OBJECTS = ${addprefix ${SRCS}, ${SOURCES:.c=.o}}
BONUS_OBJECTS = ${addprefix ${SRCS}, ${BONUS_SOURCES:.c=.o}}

all : ${NAME} 

${NAME} : ${OBJECTS}
		${AR} ${ARFLAGS} $@ $^

${SRCS}%.o : ${SRCS}%.c
			${CC} ${CFLAGS} -I ./libft.h -o $@ -c $<

bonus: ${BONUS_OBJECTS}
		${AR} ${ARFLAGS} ${NAME} ${BONUS_OBJECTS}

clean :
		rm -rf ${OBJECTS} ${BONUS_OBJECTS}

fclean : clean
		rm -rf ${NAME}

re : fclean all