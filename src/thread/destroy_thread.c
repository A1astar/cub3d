/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   destroy_thread.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/09 23:04:11 by algadea           #+#    #+#             */
/*   Updated: 2025/05/11 12:35:43 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	destroy_thread_mutex(t_cub3d *cub3d, t_thread *thread)
{
	(void)cub3d;
	pthread_mutex_destroy(&thread->lock);
	if (thread->tid)
		free(thread->tid);
}

void	destroy_thread(t_cub3d *cub3d, t_thread *thread)
{
	destroy_thread_mutex(cub3d, thread);
}
