# COLORS
_GREY		=	$'\033[1;30m
_RED		=	$'\033[1;31m
_GREEN		=	$'\033[1;32m
_YELLOW		=	$'\033[1;33m
_BLUE		=	$'\033[1;34m
_PURPLE		=	$'\033[1;35m
_CYAN		=	$'\033[1;36m
_WHITE		=	$'\033[1;37m
_NO_COLOR	=	$'\033[m

# VARIABLE
NAME	= push_swap
NAME_BONUS	= checker

CC		= gcc

CFLAGS	= -Wall		\
		  -Wextra	\
		  -Werror	\
		  -g
IFLAGS	= -I./includes/ -I./libft/includes/

SRCS_PATH	= srcs/
OBJS_PATH	= objs/
SRCS		= push_swap.c					\
			  check_and_fix.c				\
			  operations-push.c				\
			  operations-reverse_rotate.c	\
			  operations-rotate.c			\
			  operations-swap.c				\
			  parsing.c						\
			  sorting.c						\
			  sorting2.c					\
			  sorting3.c					\
			  utils-stack.c					\
			  utils-stack2.c				\
			  utils.c
SRCS_BONUS	= checker_bonus.c				\
			  check_and_fix.c				\
			  operations-push.c				\
			  operations-reverse_rotate.c	\
			  operations-rotate.c			\
			  operations-swap.c				\
			  parsing.c						\
			  sorting.c						\
			  sorting2.c					\
			  sorting3.c					\
			  utils-stack.c					\
			  utils-stack2.c				\
			  utils.c
OBJS		= $(addprefix $(OBJS_PATH), $(SRCS:.c=.o))
OBJS_BONUS	= $(addprefix $(OBJS_PATH), $(SRCS_BONUS:.c=.o))
vpath %.c $(SRCS_PATH)

LIBFT = libft/libft.a

# COMPILATION
$(NAME): $(LIBFT) $(OBJS)
	@$(CC) $(CFLAGS) -o $@ $(OBJS) $(LIBFT)
	@echo "$(_GREEN)[Push_swap: Executable created]$(_NO_COLOR)"

$(NAME_BONUS)	: $(LIBFT) $(OBJS_BONUS)
	@$(CC) $(CFLAGS) -o $@ $(OBJS_BONUS) $(LIBFT)
	@echo "$(_GREEN)[Checker: Executable created]$(_NO_COLOR)"

$(LIBFT):
	@make -C libft/

$(OBJS_PATH)%.o : %.c
	@mkdir -p $(OBJS_PATH)
	@echo "$(_GREY)Compiling : $<$(_NO_COLOR)"
	@$(CC) $(CFLAGS) $(IFLAGS) -c $< -o $@

# RULES
all	: $(NAME)

bonus	: $(NAME_BONUS)

clean : 
	@make -C libft/ clean
	@rm -rf $(OBJS) $(OBJS_BONUS) $(OBJS_PATH)
	@echo "$(_RED)[Push_swap: All objects removed]$(_NO_COLOR)"

fclean : clean
	@make -C libft/ fclean
	@rm -rf $(NAME) $(NAME_BONUS)
	@echo "$(_RED)[Push_swap: Executable removed]$(_NO_COLOR)"

re : fclean all

.PHONY : all clean fclean re bonus
