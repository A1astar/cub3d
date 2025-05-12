/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   thread.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/03 13:07:05 by algadea           #+#    #+#             */
/*   Updated: 2025/05/12 20:33:55 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef THREAD_H
# define THREAD_H

typedef struct s_cub3d t_cub3d;
typedef struct s_window t_window;
typedef struct s_scene t_scene;

# define TASK_NBR_INIT 20
# define TASK_NBR_RENDERING 10
# define TASK_NBR_GAME_LOGIC 10

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


typedef struct s_task
{
	void	(*task_to_execute)(t_cub3d *);
}				t_task;

typedef struct s_thread
{
	pthread_t			tid;
	uint8_t				state;
	t_cub3d				*cub3d;
	t_task				*task;
	pthread_mutex_t		*lock;
	void				(*task_to_execute)(t_cub3d *);
}						t_thread;

void	init_task(t_cub3d *cub3d);
void	get_cpu_core_number(t_cub3d *cub3d);
void	destroy_thread(t_cub3d *cub3d, t_thread *thread);

#endif
