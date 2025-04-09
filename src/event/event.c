/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:10:56 by algadea           #+#    #+#             */
/*   Updated: 2025/04/09 17:03:44 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

int	exit_cub3d(int keynum, t_cub3d *cub3d)
{
	(void)keynum;
	free_program(cub3d);
	exit(EXIT_SUCCESS);
	return (0);
}

