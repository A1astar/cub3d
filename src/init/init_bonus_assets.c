/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_bonus_assets.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 18:07:42 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/11 19:15:01 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	load_enemy_assets(t_cub3d *cub3d)
{
	int	i;

	i = 0;
	while (i < cub3d->nb_enemy)
	{
		if (cub3d->randy[i].state == angry)
			load_asset(cub3d, &cub3d->randy[i].sprite,
				"asset/enemy/xpm/angry_randy.xpm");
		else if (cub3d->randy[i].state == stoned)
			load_asset(cub3d, &cub3d->randy[i].sprite,
				"asset/enemy/xpm/stoned_randy.xpm");
		else if (cub3d->randy[i].state == drunk)
			load_asset(cub3d, &cub3d->randy[i].sprite,
				"asset/enemy/xpm/drunk_randy.xpm");
		else
			load_asset(cub3d, &cub3d->randy[i].sprite,
				"asset/enemy/xpm/godlike_randy.xpm");
		i++;
	}
}

void	init_bonus_assets(t_cub3d *cub3d)
{
	load_env_assets(cub3d, &cub3d->textures);
	load_trip_assets(cub3d, &cub3d->textures);
	load_fireball_assets(cub3d, &cub3d->textures);
	load_slash_assets(cub3d, &cub3d->textures);
	load_others_assets(cub3d, &cub3d->item, &cub3d->textures);
	load_normal_viewmodel(cub3d, &cub3d->player.viewmodel);
	load_trip_viewmodel(cub3d, &cub3d->player.viewmodel);
	load_enemy_assets(cub3d);
}
