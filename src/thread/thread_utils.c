/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   thread_utils.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/10 12:36:55 by algadea           #+#    #+#             */
/*   Updated: 2025/05/11 18:14:07 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	get_cpu_core_number(t_cub3d *cub3d)
{
	cub3d->cpu_core_nbr = sysconf(_SC_NPROCESSORS_ONLN);
	if (cub3d->cpu_core_nbr == -1)
	{
		printf(BOLD RED"SYSCONF ERROR\n"DEFAULT);
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
}
