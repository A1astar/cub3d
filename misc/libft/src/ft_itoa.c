/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/14 14:10:58 by agadea            #+#    #+#             */
/*   Updated: 2024/11/17 16:27:47 by algadea          ###   ########.fr       */
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
	char	*str;

	i = 0;
	n *= -1;
	len = ft_count_char(n);
	str = malloc(sizeof(char) * len + 2);
	if (!str)
		return (NULL);
	str[i++] = '-';
	while (len > 0)
	{
		str[len] = n % 10 + '0';
		n = n / 10;
		len--;
		i++;
	}
	str[i] = '\0';
	return (str);
}

static char	*ft_put_positive_nbr(int n)
{
	int		i;
	int		len;
	char	*str;

	i = 0;
	len = ft_count_char(n);
	str = malloc(sizeof(char) * len + 1);
	if (!str)
		return (NULL);
	while (len > 0)
	{
		str[len - 1] = n % 10 + '0';
		n = n / 10;
		len--;
		i++;
	}
	str[i] = '\0';
	return (str);
}

char	*ft_itoa(int n)
{
	int		i;
	char	*str;

	i = 0;
	if (n == -2147483648)
		str = ft_strdup("-2147483648");
	else if (n < 0)
		str = ft_put_negative_nbr(n);
	else if (n > 0)
		str = ft_put_positive_nbr(n);
	else
	{
		str = malloc(sizeof(char) * 2);
		if (!str)
			return (NULL);
		str[i++] = '0';
		str[i] = '\0';
	}
	return (str);
}
