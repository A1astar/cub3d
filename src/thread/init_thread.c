/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_thread.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:07:07 by algadea           #+#    #+#             */
/*   Updated: 2025/05/11 14:45:39 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	init_mutex(t_cub3d *cub3d, t_thread *thread)
{
	(void)cub3d;
	if (pthread_mutex_init(&thread->lock, NULL) == -1)
	{
		printf(BOLD RED"ERROR MUTEX INIT\n"DEFAULT);
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
}

void	init_thread_task_init(t_cub3d *cub3d, t_thread *thread)
{
	thread->initialization.task_nbr = 4;
	thread->initialization.task[0] = not_assigned;
	thread->initialization.task[1] = not_assigned;
	thread->initialization.task[2] = not_assigned;
	thread->initialization.task[3] = not_assigned;
	thread->initialization.init_scene = init_scene;
	thread->initialization.init_main_menu = init_main_menu;
	thread->initialization.init_mandatory_assets = init_mandatory_assets;
	thread->initialization.init_bonus_assets = init_bonus_assets;
}

void	init_thread_task(t_cub3d *cub3d, t_thread *thread)
{
	init_thread_task_init(cub3d, thread);
	// init_thread_task_game_loop(cub3d, thread);
}

void	wait_thread(t_cub3d *cub3d, t_thread *thread)
{
	int	i;

	i = 0;
	while (i < thread->cpu_core_nbr - 1)
	{
		if (pthread_join(cub3d->thread.tid[i], NULL) == -1)
		{
			printf(BOLD RED"PTHREAD CREATE ERROR\n"DEFAULT);
		}
		i++;
	}
}

void	create_thread(t_cub3d *cub3d, t_thread *thread)
{
	int	i;

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
}

void	init_thread(t_cub3d *cub3d, t_thread *thread)
{
	get_cpu_core_number(cub3d, thread);
	create_thread(cub3d, thread);
}
