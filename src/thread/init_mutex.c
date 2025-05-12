/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_thread_mutex.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/10 12:20:34 by algadea           #+#    #+#             */
/*   Updated: 2025/05/12 20:43:17 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	init_mutex(t_cub3d *cub3d)
{
	if (pthread_mutex_init(&cub3d->lock, NULL) == -1)
	{
		printf(BOLD RED"ERROR MUTEX INIT\n"DEFAULT);
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
}

