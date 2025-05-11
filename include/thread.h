/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   thread.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/03 13:07:05 by algadea           #+#    #+#             */
/*   Updated: 2025/05/11 14:43:48 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef THREAD_H
# define THREAD_H

enum e_task_state
{
	assigned,
	not_assigned
};

enum e_task
{
	initalization,
	game_logic
};

typedef struct s_task_init
{
	uint8_t	task_nbr;
	uint8_t	task_done;
	bool	task[4];
	void	(*init_scene)(t_cub3d *, t_window *, t_scene *);
	void	(*init_main_menu)(t_cub3d *);
	void	(*init_mandatory_assets)(t_cub3d *, char **);
	void	(*init_bonus_assets)(t_cub3d *);
}			t_task_init;

typedef struct s_thread
{
	t_task_init			initialization;
	uint8_t				state;
	long				cpu_core_nbr;
	pthread_t			*tid;
	pthread_mutex_t		lock;
}						t_thread;

void	get_cpu_core_number(t_cub3d *cub3d, t_thread *thread);
void	destroy_thread(t_cub3d *cub3d, t_thread *thread);

#endif
