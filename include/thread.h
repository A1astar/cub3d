/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   thread.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/03 13:07:05 by algadea           #+#    #+#             */
/*   Updated: 2025/05/10 15:26:32 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef THREAD_H
# define THREAD_H

# include "cub3d.h"
# include "types.h"
# include <pthread.h>

enum e_task
{
	initalization,
	rendering,
	game_logic
};

typedef struct s_task
{
	uint8_t	task_nbr;
	void	(*init_asset)(t_cub3d *);
	void	(*init_scene)(t_cub3d *, t_window *, t_scene *);
	void	(*init_main_menu)(t_cub3d *);
	void	(*init_mandatory_assets)(t_cub3d *, char **);
	void	(*init_bonus_assets)(t_cub3d *);
}				t_task;

typedef struct s_thread
{
	t_task				task_init;
	t_task				task_rendering;
	t_task				task_game_logic;
	uint8_t				task;
	uint8_t				state;
	long				cpu_core_nbr;
	pthread_t			*tid;
	pthread_mutex_t		lock;
	pthread_mutex_t 	task_giver;
	pthread_mutex_t		render;
	pthread_mutex_t		init;
}						t_thread;

#endif
