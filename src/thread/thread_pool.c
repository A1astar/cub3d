/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   thread_pool.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:44:05 by algadea           #+#    #+#             */
/*   Updated: 2025/05/11 19:39:04 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

uint8_t	get_program_state(t_cub3d *cub3d, t_thread *thread)
{
	uint8_t	program_state;

	pthread_mutex_lock(thread->lock);
	program_state = cub3d->program_state;
	pthread_mutex_unlock(thread->lock);
	return (program_state);
}

bool	init_task_done(t_thread *thread)
{
	pthread_mutex_lock(thread->lock);
	if (thread->task->init.task_done
		== thread->task->init.task_nbr)
	{
		printf("%d | %d\n", thread->task->init.task_done, 
			thread->task->init.task_nbr);
		pthread_mutex_unlock(thread->lock);
		return (true);
	}
	pthread_mutex_unlock(thread->lock);
	return (false);
}

bool	init_task_all_assigned(t_thread *thread)
{
	pthread_mutex_lock(thread->lock);
	if (thread->task->init.task[0] == assigned
		&& thread->task->init.task[1] == assigned
		&& thread->task->init.task[2] == assigned
		&& thread->task->init.task[3] == assigned)
	{
		pthread_mutex_unlock(thread->lock);
		return (true);
	}
	pthread_mutex_unlock(thread->lock);
	return (false);
}

void	assign_init_task(t_thread *thread)
{
	pthread_mutex_lock(thread->lock);
	if (thread->task->init.task[0] == not_assigned)
	{
		printf("init scene\n");
		thread->task->init.task[0] = assigned;
		thread->task_to_execute = init_scene;
	}
	else if (thread->task->init.task[1] == not_assigned)
	{
		printf("init main_menu\n");
		thread->task->init.task[1] = assigned;
		thread->task_to_execute = init_main_menu;
	}
	else if (thread->task->init.task[2] == not_assigned)
	{
		printf("init mandatory asset\n");
		thread->task->init.task[2] = assigned;
		thread->task_to_execute = init_mandatory_assets;
	}
	else if (thread->task->init.task[3] == not_assigned)
	{
		printf("init bonus asset\n");
		thread->task->init.task[3] = assigned;
		thread->task_to_execute = init_bonus_assets;
	}
	pthread_mutex_unlock(thread->lock);
}

void	execute_task(t_thread *thread)
{
	if (thread->task_to_execute)
	{
		thread->task_to_execute(thread->cub3d);	
		pthread_mutex_lock(thread->lock);
		thread->task->init.task_done++;
		printf("task_done = %d\n", thread->task->init.task_done);
		pthread_mutex_unlock(thread->lock);
		thread->task_to_execute = NULL;
	}
}

void	*thread_pool(void *args)
{
	t_thread	*thread;
	
	thread = (t_thread *)args;
	while (!init_task_done(thread) && !init_task_all_assigned(thread))
	{
		assign_init_task(thread);
		execute_task(thread);
	}
	return (NULL);
}
