/* ************************************************************************** */
/*                                                                            */ /*                                                        :::      ::::::::   */
/*   framerate.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/03 14:54:42 by algadea           #+#    #+#             */
/*   Updated: 2025/05/04 19:03:29by algadea          ###   ########.fr       */
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

double 	get_frame_time(struct timeval *start_time)
{
	struct timeval	current_time;

	gettimeofday(&current_time, NULL);
	return ((double)((current_time.tv_sec - start_time->tv_sec) * 1000)
		+ (double)((current_time.tv_usec - start_time->tv_usec) / 1000));
}

void	frame_delay(long frame_delay_ms)
{
	struct timeval	time;
	long			start_time;

	gettimeofday(&time, NULL);
	start_time = get_time(&time);
	while ((get_time(&time) - start_time) < frame_delay_ms)
		usleep(100);
}

void	update_frame_rate(t_cub3d *cub3d, t_scene *scene)
{
	static struct timeval	time;
	static long				sec;

	(void)cub3d;
	if (time.tv_sec == 0)
		get_tick(&time);
	printf("result : %ld\n", scene->frame_end - scene->frame_start);
	scene->frame_delay_ms = (scene->frame_end - scene->frame_start);
	printf("frame delay = %f\n", scene->frame_delay_ms);
	frame_delay(scene->frame_delay_ms);
	scene->delta_time = (double)(scene->frame_delay_ms / 1000);
	scene->fps_counter++;
	sec += get_time(&time);
	if (sec >= 1000)
	{
		scene->fps_counter = 0;
		sec = 0;
	}
}
