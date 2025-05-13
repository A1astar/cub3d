/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   framerate.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/04 19:03:29 by algadea           #+#    #+#             */
/*   Updated: 2025/05/13 16:56:38 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

long	get_time(struct timeval *start_time)
{
	struct timeval	current_time;

	gettimeofday(&current_time, NULL);
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

	gettimeofday(&time, NULL);
	while (get_time(&time) < frame_delay)
		usleep(100);
}

void	update_frame_rate(t_time *time)
{
	double	sleep_time;

	time->current_frame = get_time_seconds();
	time->delta_time = time->current_frame - time->previous_frame;
	if (time->delta_time < time->target_frame_time)
	{
		sleep_time = time->target_frame_time - time->delta_time;
		usleep((int)(sleep_time * 1000000.0));
	}
	else if (time->delta_time > time->target_frame_time)
		time->delta_time = time->target_frame_time;
	time->fps_counter++;
	time->previous_frame = time->current_frame;
}
