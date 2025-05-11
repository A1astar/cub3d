/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   thread_pool.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:44:05 by algadea           #+#    #+#             */
/*   Updated: 2025/05/10 16:59:25 by algadea          ###   ########.fr       */
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

// void	thread_game_logic_task(t_cub3d *cub3d)
// {

// }

// void	thread_rendering_task(t_cub3d *cub3d)
// {

// }

void	thread_init_task(t_cub3d *cub3d)
{
	while (get_program_state(cub3d, &cub3d->thread) == initalization)
	{
		if

	}
}

void	*thread_pool(void *args)
{
	uint8_t	program_state;
	t_cub3d	*cub3d;
	
	cub3d = (t_cub3d *)args;
	while (RUNNING)
	{
		program_state = get_program_state(cub3d, &cub3d->thread);
		if (program_state == initalization)
			thread_init_task(cub3d);
		// else if (program_state == game_logic)
		// 	thread_game_logic_task(cub3d);
		// else if (program_state == rendering)
		// 	thread_rendering_task(cub3d);
		else
			break ;
	}
	return (NULL);
}
