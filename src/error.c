/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   error.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 17:55:25 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/08 18:24:44 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/cub3d.h"

void	error_msg(const char *msg, const char *context)
{
	ft_putendl_fd("Error", STDERR_FILENO);
	if (!context)
		ft_putendl_fd((char *)msg, STDERR_FILENO);
	else
	{
		ft_putstr_fd((char *)msg, STDERR_FILENO);
		ft_putendl_fd((char *)context, STDERR_FILENO);
	}
}
