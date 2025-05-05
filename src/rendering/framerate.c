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

struct timeval	get_tick(void)
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
	long			time_value;
	long			start_time;

	gettimeofday(&time, NULL);
	start_time = get_time(&time);
	time_value = 0;
	while ((get_time(&time) - start_time) < frame_delay_ms)
	// while ((time_value - start_time) < frame_delay_ms)
	{
		// time_value = get_time(&time);
		// printf("time value sec %ld, time value usec %ld\n",	
		// 	time.tv_sec, time.tv_usec);
		usleep(100);
	}
	// return (time_value);
}

void	update_frame_rate(t_cub3d *cub3d, t_scene *scene)
{
	struct timeval			time;
	static struct timeval	previous_time;
	// static struct timeval	sec;
	static long	sec;

	gettimeofday(&time, NULL);
	scene->delta_time = get_time(&time) - get_time(&previous_time);
	printf("%d\n", scene->delta_time);
	cub3d->scene.frame_end = get_tick();
	scene->frame_delay_ms = scene->frame_ms
		- ((scene->frame_end.tv_sec - scene->frame_start.tv_sec) / 1000);
	// scene->fps_time += frame_delay(scene->frame_delay_ms);
	// printf("fps_time = %ld | framerate = %d\n", scene->fps_time, scene->framerate);
	frame_delay(scene->frame_delay_ms);
	scene->fps_counter++;
	sec += get_time(&time);
	if (sec >= 1000)
	{
		printf("FPS: %d | sec: %ld | delay = %ld\n", 
			scene->fps_counter, sec, scene->frame_delay_ms);
		scene->fps_counter = 0;
		scene->fps_time = 0;
		sec = 0;
	}
	previous_time.tv_sec = time.tv_sec;
	previous_time.tv_usec = time.tv_usec;
}
