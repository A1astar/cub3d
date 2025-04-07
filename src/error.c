/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   error.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 17:55:25 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/07 18:03:49 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "cub3d.h"

void	error_msg(const char *msg, const char *context)
{
	ft_putendl_fd("Error", STDERR_FILENO);
	if (!context)
		ft_putendl_fd(msg, STDERR_FILENO);
	else
	{
		ft_putstr_fd(msg, STDERR_FILENO);
		ft_putendl_fd(context, STDERR_FILENO);
	}
}
