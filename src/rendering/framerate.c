/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
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
	static long	previous_time;
	static long	current_time;
	static long	sec;

	current_time = get_time(&cub3d->time);
	printf("previous time = %ld | current time = %ld\n", previous_time, current_time);
	scene->delta_time = ((float)get_time(&cub3d->time) - (float)previous_time);
	printf("delta time: %f\n", scene->delta_time / 1000);
	get_tick(&cub3d->scene.frame_end);
	scene->frame_delay_ms = scene->frame_ms
		- ((scene->frame_end.tv_sec - scene->frame_start.tv_sec) / 1000);
	printf("frame_ms %ld | frame delay ms = %f\n", scene->frame_ms, scene->frame_delay_ms);
	frame_delay(scene->frame_delay_ms);
	scene->fps_counter++;
	sec += get_time(&cub3d->time);
	if (sec >= 1000)
	{
		printf("FPS: %d | sec: %ld | delay = %f\n", 
			scene->fps_counter, sec, scene->frame_delay_ms);
		scene->fps_counter = 0;
		sec = 0;
	}
	previous_time = current_time;
}
