/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_thread.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:07:07 by algadea           #+#    #+#             */
/*   Updated: 2025/05/03 20:10:20 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

// void	*routine()
// {

// }

// void	init_thread(t_cub3d *cub3d, t_thread *thread)
// {
// 	int	i;
	
// 	thread->cpu_core_nbr = sysconf(_SC_NPROCESSORS_ONLN);
// 	if (thread->cpu_core_nbr == -1)
// 	{
// 		printf(BOLD RED"SYSCONF ERROR\n"DEFAULT);
// 		free_program(cub3d);
// 	}
// 	printf("%ld\n", thread->cpu_core_nbr);
// 	i = 0;
// 	while (i < thread->cpu_core_nbr - 1)
// 	{
// 		pthread_create();
// 		i++;
// 	}
// 	exit(0);
// }
