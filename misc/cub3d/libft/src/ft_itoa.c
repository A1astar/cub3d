/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/14 14:10:58 by agadea            #+#    #+#             */
/*   Updated: 2024/03/30 13:17:57 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

static int	ft_count_char(int n)
{
	int	i;

	i = 0;
	while (n > 0)
	{
		n = n / 10;
		i++;
	}
	return (i);
}

static char	*ft_put_negative_nbr(int n)
{
	int		i;
	int		len;
	char	*s;

	i = 0;
	n *= -1;
	len = ft_count_char(n);
	s = malloc(sizeof(char) * len + 2);
	if (!s)
		return (NULL);
	s[i++] = '-';
	while (len > 0)
	{
		s[len] = n % 10 + '0';
		n = n / 10;
		len--;
		i++;
	}
	s[i] = '\0';
	return (s);
}

static char	*ft_put_positive_nbr(int n)
{
	int		i;
	int		len;
	char	*s;

	i = 0;
	len = ft_count_char(n);
	s = malloc(sizeof(char) * len + 1);
	if (!s)
		return (NULL);
	while (len > 0)
	{
		s[len - 1] = n % 10 + '0';
		n = n / 10;
		len--;
		i++;
	}
	s[i] = '\0';
	return (s);
}

char	*ft_itoa(int n)
{
	int		i;
	char	*s;

	i = 0;
	if (n == -2147483648)
		s = ft_strdup("-2147483648");
	else if (n < 0)
		s = ft_put_negative_nbr(n);
	else if (n > 0)
		s = ft_put_positive_nbr(n);
	else
	{
		s = malloc(sizeof(char) * 2);
		if (!s)
			return (NULL);
		s[i++] = '0';
		s[i] = '\0';
	}
	return (s);
}
