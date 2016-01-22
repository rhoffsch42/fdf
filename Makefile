# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rhoffsch <rhoffsch@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/10 20:07:50 by rhoffsch          #+#    #+#              #
#    Updated: 2015/01/27 08:11:54 by rhoffsch         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME	=	fdf
CFLAGS	=	-Wall -Wextra -Werror
GCC		=	gcc

SRC		=	./main.c \
			./get_next_line.c \
			./ft_clear_tab.c \
			./ft_get_coo.c \
			./ft_itaballoc.c \
			./ft_putnbr_str.c \
			./ft_putnbr_tab.c \
			./ft_tablen_int.c \
			./ft_valid_line.c \
			./ft_valid_tab.c \
			./ft_assign_xy.c \
			./ft_print_win.c \
			./ft_case.c \
			./ft_color.c \
			./ft_altitude.c \
			./ft_diff_altitude.c \
			./ft_mlx_image_put_pixel.c \
			./ft_launch_mlx.c \
			./ft_keys.c

OBJ		=	$(SRC:.c=.o)

all: $(NAME)

$(NAME): $(SRC)
	@make -C libft/ fclean
	@make -C libft/
	@echo Libft.a created
	@$(GCC) $(CFLAGS) -I includes/ -I libft/includes/ -c $(SRC)
	@$(GCC) -o $(NAME) $(OBJ) -L libft/ -lft -L/usr/X11/lib -lmlx -lXext -lX11
	@echo End

clean:
	@rm -f $(OBJ)
	@echo All objects deleted	

fclean: clean
	@rm -f $(NAME)
	@echo $(NAME) deleted

re: fclean all
