/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   thread_pool.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:44:05 by algadea           #+#    #+#             */
/*   Updated: 2025/05/11 14:47:26 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

uint8_t	get_program_state(t_cub3d *cub3d, t_thread *thread)
{
	uint8_t	program_state;

	pthread_mutex_lock(&thread->lock);
	program_state = cub3d->program_state;
	pthread_mutex_unlock(&thread->lock);
	return (program_state);
}

// void	thread_game_loop_task(t_cub3d *cub3d)
// {
// 	(void)cub3d;
// }

// void	thread_init_task(t_cub3d *cub3d)
// {
// 	while (get_program_state(cub3d, &cub3d->thread) == initalization)
// 	{
// 		if

// 	}
// }

bool	init_task_done(t_cub3d *cub3d)
{
	pthread_mutex_lock(&cub3d->thread.lock);
	if (cub3d->thread.initialization.task_done
		== cub3d->thread.initialization.task_nbr)
	{
		pthread_mutex_unlock(&cub3d->thread.lock);
		return (true);
	}
	pthread_mutex_unlock(&cub3d->thread.lock);
	return (false);
}

void	assign_init_task(t_thread *thread)
{

}

void	*thread_pool(void *args)
{
	uint8_t	program_state;
	t_cub3d	*cub3d;
	
	cub3d = (t_cub3d *)args;
	while (!init_task_done(cub3d))
	{
		assign_init_task(&cub3d->thread);
		if (cub3d->thread.initialization.task[0] == not_assigned)
		{

			cub3d->thread.initialization.task[0] = assigned;
			init_scene(cub3d, &cub3d->window, &cub3d->scene);
			update_init_task_done
		}
		else if (cub3d->thread.initialization.task[0] == not_assigned)
		else if (cub3d->thread.initialization.task[0] == not_assigned)
		else if (cub3d->thread.initialization.task[0] == not_assigned)
	}
	return (NULL);
}

// void	*thread_pool(void *args)
// {
// 	uint8_t	program_state;
// 	t_cub3d	*cub3d;
	
// 	cub3d = (t_cub3d *)args;
// 	while (RUNNING)
// 	{
// 		program_state = get_program_state(cub3d, &cub3d->thread);
// 		if (program_state == initalization)
// 			thread_init_task(cub3d);
// 		// else if (program_state == game_logic)
// 		// 	thread_game_loop_task(cub3d);
// 		// else
// 		// 	break ;
// 	}
// 	return (NULL);
// }