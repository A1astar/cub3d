/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_thread.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:07:07 by algadea           #+#    #+#             */
/*   Updated: 2025/05/04 01:24:17 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	*routine(void *args)
{
	t_cub3d	*cub3d;
	
	cub3d = (t_cub3d *)args;
}

void	init_thread(t_cub3d *cub3d, t_thread *thread)
{
	int	i;
	
	thread->cpu_core_nbr = sysconf(_SC_NPROCESSORS_ONLN);
	if (thread->cpu_core_nbr == -1)
	{
		printf(BOLD RED"SYSCONF ERROR\n"DEFAULT);
		free_program(cub3d);
	}
	thread->tid = malloc(sizeof(pthread_t) * (thread->cpu_core_nbr - 1));
	if (!thread->tid)
	{
		printf(BOLD RED"MALLOC ERROR\n"DEFAULT);
		free_program(cub3d);
	}
	i = 0;
	while (i < thread->cpu_core_nbr - 1)
	{
		if (pthread_create(&cub3d->thread, NULL, routine, &cub3d) == -1)
		{
			printf(BOLD RED"PTHREAD CREATE ERROR\n"DEFAULT);
			free_program(cub3d);
		}
		i++;
	}
	exit(0);
}
