/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_task.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/10 12:20:10 by algadea           #+#    #+#             */
/*   Updated: 2025/05/12 18:36:49 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	init_task_initialization(t_task *task)
{
	// task->init.task_done = 0;
	// task->init.task_nbr = 4;

	// INIT ASSETS
	task[0].task_to_execute = init_scene;
	task[0].task_to_execute = init_asset;
	task[0].task_to_execute = init_asset;

	// INIT ATTRIBUTES
	task[0].task_to_execute = init_minimap;
	task[1].task_to_execute = init_player;
	task[2].task_to_execute = init_enemy;
	task[3].task_to_execute = init_raycast;
	task[4].task_to_execute = init_time;
}

void	init_task_game_logic(t_cub3d *cub3d)
{

}

void	init_task(t_cub3d *cub3d)
{
	init_task_initialization(&cub3d->task_init);
	init_task_game_logic(&cub3d->task_game_logic);
}