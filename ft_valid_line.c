/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_valid_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rhoffsch <rhoffsch@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/12/15 04:30:18 by rhoffsch          #+#    #+#             */
/*   Updated: 2015/01/07 05:03:48 by rhoffsch         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "fdf.h"

void		ft_bad_digit(char **l)
{
	int		i;

	i = 0;
	while ((*l)[i] != '\0')
	{
		if (i > 0 && ((*l)[i] == '-' || (*l)[i] == '+') && \
				ft_isdigit((*l)[i - 1]) == 1)
			while ((*l)[i] == '-' || (*l)[i] == '+' || ft_isdigit((*l)[i]) == 1)
			{
				(*l)[i] = ' ';
				i++;
			}
		i++;
	}
}

void		ft_bad_char(char **l)
{
	int		i;

	i = 0;
	while ((*l)[i] != '\0')
	{
		if (ft_isdigit((*l)[i]) == 0 && (*l)[i] != '-' && (*l)[i] != '+')
			(*l)[i] = ' ';
		i++;
	}
}

void		ft_valid_line(char **l)
{
	ft_bad_char(l);
	ft_bad_digit(l);
}
