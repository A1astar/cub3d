/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   framerate.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/04 19:03:29 by lgadea            #+#    #+#             */
/*   Updated: 2025/05/09 23:55:09 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

long	get_time(struct timeval *start_time)
{
	struct timeval	current_time;

	gettimeofday(&current_time, NULL);
	// return ((current_time.tv_sec - start_time->tv_sec) * 1000
	// 	+ (current_time.tv_usec - start_time->tv_usec) / 1000);
	return ((current_time.tv_sec - start_time->tv_sec) * 1000
		+ (current_time.tv_usec - start_time->tv_usec) / 1000);
}

double	get_time_seconds() {
    struct timeval	tv;

    gettimeofday(&tv, NULL);
    return (double)tv.tv_sec + (double)tv.tv_usec / 1000000.0;
}

void	frame_delay(long frame_delay)
{
	struct timeval	time;
	long	current;

	gettimeofday(&time, NULL);
	current = get_time(&time);
	// while (get_time(&time) - frame_end < frame_delay)
	while (current < frame_delay)
	{
		// printf("current = %ld | frame_end = %ld | frame delay = %ld\n", current, frame_end, frame_delay);
		current = get_time(&time);
		usleep(100);
	}
}

void	update_frame_rate(t_cub3d *cub3d, t_time *time)
{
	static struct timeval	current_time;
	long	time_val;

	(void)cub3d;
	if (current_time.tv_sec == 0)
		gettimeofday(&current_time, NULL);
	time->current_frame = get_time_seconds();
	time->delta_time = time->current_frame - time->previous_frame;
	printf("delta time = %f | target frame time = %f\n", 
		time->delta_time, time->target_frame_time);
	if (time->delta_time < time->target_frame_time)
	{
		double sleep_time = time->target_frame_time - time->delta_time;
		printf("sleep time = %f\n", sleep_time);
		usleep((int)(sleep_time * 1000000.0));
	}
	else if (time->delta_time > time->target_frame_time)
		time->delta_time = time->target_frame_time;
	time->fps_counter++;
	time_val = get_time(&current_time);
	printf("time val = %ld\n", time_val);
	if (time_val >= time->target_fps * 1000
		|| time->fps_counter == time->target_fps)
	// if (get_time(&current_time) >= time->target_fps * 1000
	// 	|| time->fps_counter == time->target_fps)
	{
		printf("FPS = %d | time = %ld\n", time->fps_counter, time_val);
		time->fps_counter = 0;
		current_time.tv_sec = 0;
		// free_program(cub3d);
		// exit(0);
	}
	time->previous_frame = time->current_frame;
}
