/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_thread.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:07:07 by algadea           #+#    #+#             */
/*   Updated: 2025/05/11 23:28:19 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	init_mutex(t_cub3d *cub3d)
{
	if (pthread_mutex_init(&cub3d->lock, NULL) == -1)
	{
		printf(BOLD RED"ERROR MUTEX INIT\n"DEFAULT);
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
}

void	init_thread_attributes(t_cub3d *cub3d, t_thread *thread, t_task *task)
{
	thread->cub3d = cub3d;
	thread->task = task;
	thread->lock = &cub3d->lock;
	thread->task_to_execute = NULL;
}

void	init_task(t_task *task)
{
	task->init.task_done = 0;
	task->init.task_nbr = 4;
	task->init.task[0] = not_assigned;
	task->init.task[1] = not_assigned;
	task->init.task[2] = not_assigned;
	task->init.task[3] = not_assigned;
}

void	wait_init_thread(t_cub3d *cub3d)
{
	int	i;

	i = 0;
	while (i < cub3d->cpu_core_nbr - 1)
	{
		pthread_join(cub3d->thread[i].tid, NULL);
		i++;
	}
}

void	create_thread(t_cub3d *cub3d)
{
	int				i;
	t_task			task;

	cub3d->thread = malloc(sizeof(t_thread) * (cub3d->cpu_core_nbr - 1));
	if (!cub3d->thread)
	{
		printf(BOLD RED"MALLOC ERROR\n"DEFAULT);
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
	i = 0;
	init_task(&task);
	init_mutex(cub3d);
	pthread_mutex_lock(&cub3d->lock);
	while (i < cub3d->cpu_core_nbr - 1)
	{
		init_thread_attributes(cub3d, &cub3d->thread[i], &task);
		if (pthread_create(&cub3d->thread[i].tid,
				NULL, thread_pool, &cub3d->thread[i]) == -1)
		{
			printf(BOLD RED"PTHREAD CREATE ERROR\n"DEFAULT);
			free_program(cub3d);
			exit(EXIT_FAILURE);
		}
		i++;
	}
	pthread_mutex_unlock(&cub3d->lock);
	wait_init_thread(cub3d);
}

void	init_thread(t_cub3d *cub3d)
{
	get_cpu_core_number(cub3d);
	create_thread(cub3d);
}
