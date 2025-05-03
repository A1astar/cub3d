/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   framerate.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/03 14:54:42 by algadea           #+#    #+#             */
/*   Updated: 2025/05/03 18:18:06 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	get_tick(struct timeval *time)
{
	gettimeofday(time, NULL);
}

long	get_time(struct timeval *start_time)
{
	struct timeval	current_time;

	gettimeofday(&current_time, NULL);
	return ((current_time.tv_sec - start_time->tv_sec) * 1000
		+ (current_time.tv_usec - start_time->tv_usec) / 1000);
}

void	frame_delay(long frame_delay_ms)
{
	struct timeval	time;
	long			start_time;

	gettimeofday(&time, NULL);
	start_time = get_time(&time);
	while ((get_time(&time) - start_time) < frame_delay_ms)
	{
		printf("frame delay : %ld\n", frame_delay_ms);
		usleep(100);
	}
}


void	update_frame_rate(t_cub3d *cub3d, t_scene *scene)
{
	get_tick(&cub3d->scene.frame_end);
	printf("here\n");
	scene->frame_delay_ms = scene->frame_ms
		- ((scene->frame_end.tv_sec - scene->frame_start.tv_sec) / 1000);
	frame_delay(scene->frame_delay_ms);
}

