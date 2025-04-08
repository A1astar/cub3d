/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/15 09:38:09 by agadea            #+#    #+#             */
/*   Updated: 2023/05/23 09:46:29 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

void	ft_putnbr(int n, int fd)
{
	if (n == -2147483648)
		write(fd, "-2147483648", 11);
	else if (n < 0)
	{
		n *= -1;
		ft_putchar_fd('-', fd);
		ft_putnbr(n, fd);
	}
	else if (n >= 0 && n <= 9)
	{
		ft_putchar_fd(n + '0', fd);
	}
	else
	{
		ft_putnbr(n / 10, fd);
		ft_putnbr(n % 10, fd);
	}
}
