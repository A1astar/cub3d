/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_thread.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:07:07 by algadea           #+#    #+#             */
/*   Updated: 2025/05/10 16:37:20 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

// void	*thread_pool(void *args)
// {
// 	t_cub3d	*cub3d;

// 	cub3d = (t_cub3d *)args;
// 	return (NULL);
// }

// // void	init_mutex_task(t_cub3d *cub3d, t_thread *thread)
// // {
// // 	int	i;

// // 	i = 0;
// // 	while (i < thread->cpu_core_nbr - 1)
// // 	{

// // 	}
// // }

// void	init_mutex(t_cub3d *cub3d, t_thread *thread)
// {
// 	(void)cub3d;
// 	if (pthread_mutex_init(&thread->task_giver, NULL) == -1
// 		|| pthread_mutex_init(&thread->render, NULL) == -1
// 		|| pthread_mutex_init(&thread->init, NULL) == -1)
// 	{
// 		printf("ERROR\n");
// 	}
// 	// init_mutex_task(cub3d, thread);
// }

// void	init_thread(t_cub3d *cub3d, t_thread *thread)
// {
// 	int	i;

// 	thread->cpu_core_nbr = sysconf(_SC_NPROCESSORS_ONLN);
// 	printf("%ld\n", thread->cpu_core_nbr);
// 	exit(0);
// 	if (thread->cpu_core_nbr == -1)
// 	{
// 		printf(BOLD RED"SYSCONF ERROR\n"DEFAULT);
// 		free_program(cub3d);
// 	}
// 	thread->tid = malloc(sizeof(pthread_t) * (thread->cpu_core_nbr - 1));
// 	if (!thread->tid)
// 	{
// 		printf(BOLD RED"MALLOC ERROR\n"DEFAULT);
// 		free_program(cub3d);
// 	}
// 	i = 0;
// 	while (i < thread->cpu_core_nbr - 1)
// 	{
// 		if (pthread_create(&cub3d->thread.tid[i], NULL, thread_pool, &cub3d) == -1)
// 		{
// 			printf(BOLD RED"PTHREAD CREATE ERROR\n"DEFAULT);
// 			free_program(cub3d);
// 			exit(EXIT_FAILURE);
// 		}
// 		i++;
// 	}
// 	i = 0;
// 	while (i < thread->cpu_core_nbr - 1)
// 	{
// 		if (pthread_join(cub3d->thread.tid[i], NULL) == -1)
// 		{
// 			printf(BOLD RED"PTHREAD CREATE ERROR\n"DEFAULT);

// 		}
// 		i++;
// 	}
// 	exit(0);
// }
