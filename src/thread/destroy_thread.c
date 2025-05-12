/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   destroy_thread.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/09 23:04:11 by algadea           #+#    #+#             */
/*   Updated: 2025/05/12 20:44:20 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	destroy_mutex(t_cub3d *cub3d, t_thread *thread)
{
	(void)thread;
	pthread_mutex_destroy(&cub3d->lock);
	if (cub3d->thread)
		free(cub3d->thread);
}

void	destroy_thread(t_cub3d *cub3d, t_thread *thread)
{
	destroy_mutex(cub3d, thread);
}
