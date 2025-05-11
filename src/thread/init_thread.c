/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_thread.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:07:07 by algadea           #+#    #+#             */
/*   Updated: 2025/05/10 15:25:50 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

// void	init_mutex_task(t_cub3d *cub3d, t_thread *thread)
// {
// 	int	i;

// 	i = 0;
// 	while (i < thread->cpu_core_nbr - 1)
// 	{

// 	}
// }

void	init_mutex(t_cub3d *cub3d, t_thread *thread)
{
	(void)cub3d;
	if (pthread_mutex_init(&thread->lock, NULL) == -1)
		// || pthread_mutex_init(&thread->task_giver, NULL) == -1
		// || pthread_mutex_init(&thread->render, NULL) == -1
		// || pthread_mutex_init(&thread->init, NULL) == -1)
	{
		printf(BOLD RED"ERROR MUTEX INIT\n"DEFAULT);
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
	// init_mutex_task(cub3d, thread);
}

void	init_thread_task_init(t_cub3d *cub3d, t_thread *thread)
{
	thread->task_init.task_nbr = 4;
	// thread->task_init.init_asset = init_asset;
	thread->task_init.init_scene = init_main_menu;
	thread->task_init.init_main_menu = init_main_menu;
	thread->task_init.init_mandatory_assets = init_mandatory_assets;
	thread->task_init.init_bonus_assets = init_bonus_assets;
}

void	init_thread_task(t_cub3d *cub3d, t_thread *thread)
{
	init_thread_task_init(cub3d, thread);
}

void	init_thread(t_cub3d *cub3d, t_thread *thread)
{
	int	i;
	
	thread->cpu_core_nbr = sysconf(_SC_NPROCESSORS_ONLN);
	if (thread->cpu_core_nbr == -1)
	{
		printf(BOLD RED"SYSCONF ERROR\n"DEFAULT);
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
	thread->tid = malloc(sizeof(pthread_t) * (thread->cpu_core_nbr - 1));
	if (!thread->tid)
	{
		printf(BOLD RED"MALLOC ERROR\n"DEFAULT);
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
	i = 0;
	while (i < thread->cpu_core_nbr - 1)
	{
		if (pthread_create(&cub3d->thread.tid[i], NULL, thread_pool, &cub3d) == -1)
		{
			printf(BOLD RED"PTHREAD CREATE ERROR\n"DEFAULT);
			free_program(cub3d);
			exit(EXIT_FAILURE);
		}
		i++;
	}
	i = 0;
	while (i < thread->cpu_core_nbr - 1)
	{
		if (pthread_join(cub3d->thread.tid[i], NULL) == -1)
		{
			printf(BOLD RED"PTHREAD CREATE ERROR\n"DEFAULT);
		}
		i++;
	}
	exit(0);
}
