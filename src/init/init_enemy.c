/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_enemy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/13 11:53:56 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/13 11:54:12 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	init_enemy_attr(t_enemy *enemy)
{
	enemy->death_anim.frame_count = 3;
	enemy->death_anim.frame_delay = 5;
	enemy->death_anim.active = false;
	enemy->direction = LEFT;
}

void	init_enemy(t_cub3d *cub3d)
{
	int	i;

	i = 0;
	while (i < cub3d->nb_enemy)
		init_enemy_attr(&cub3d->randy[i++]);
}
