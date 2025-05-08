/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   framerate.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/04 19:03:29 by lgadea            #+#    #+#             */
/*   Updated: 2025/05/08 12:48:26 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

long	get_game_time(struct timeval *game_start_time,
			struct timeval *current_time)
{
	return ((current_time->tv_sec - game_start_time->tv_sec) * 1000
		+ (current_time->tv_usec - game_start_time->tv_usec) / 1000);
}

long	get_time(struct timeval *start_time)
{
	struct timeval	current_time;

	gettimeofday(&current_time, NULL);
	return ((current_time.tv_sec - start_time->tv_sec) * 1000
		+ (current_time.tv_usec - start_time->tv_usec) / 1000);
}

void	frame_delay(long frame_end, long frame_delay)
{
	struct timeval	time;
	long	current;

	gettimeofday(&time, NULL);
	current = get_time(&time);
	// while (get_time(&time) - frame_end < frame_delay)
	while (current - frame_end < frame_delay)
	{
		printf("current = %ld | frame_end = %ld | frame delay = %ld\n", current, frame_end, frame_delay);
		current = get_time(&time);
		usleep(100);
	}
}

void	update_frame_rate(t_cub3d *cub3d, t_scene *scene)
{
	static struct timeval	time;

	(void)cub3d;
	if (time.tv_sec == 0)
		gettimeofday(&time, NULL);
	scene->frame_delay_ms = scene->frame_ms - (scene->frame_end - scene->frame_start);
	scene->delta_time = scene->frame_end - scene->frame_start;
	scene->game_start = get_time(&scene->game_start_timeval);
	frame_delay(scene->frame_end - scene->game_start, scene ->frame_delay_ms);
	scene->fps_counter++;
	if (get_time(&time) >= 1000)
	{
		printf("FPS = %d\n", scene->fps_counter);
		scene->fps_counter = 0;
		time.tv_sec = 0;
	}
}
