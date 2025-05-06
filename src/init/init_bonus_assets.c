/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_bonus_assets.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 18:07:42 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/06 12:09:11 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	load_texture(t_cub3d *cub3d, t_img *texture, char *asset_path)
{
	texture->ptr = mlx_xpm_file_to_image(cub3d->window.mlx_ptr, asset_path,
			&texture->width, &texture->height);
	if (!texture->ptr)
	{
		error_msg("Wrong asset address: ", asset_path);
		free_program(cub3d);
	}
	texture->addr = mlx_get_data_addr(texture->ptr, &texture->bpp,
			&texture->size_line, &texture->endian);
	if (!texture->addr)
	{
		error_msg("Cannot load asset: ", asset_path);
		free_program(cub3d);
	}
}

static void	load_enemy_assets(t_cub3d *cub3d)
{
	int	i;

	i = 0;
	while (i < cub3d->nb_enemy)
	{
		if (cub3d->randy[i].state == angry)
			load_texture(cub3d, &cub3d->randy[i].sprite,
				"asset/enemy/xpm/angry_randy.xpm");
		else if (cub3d->randy[i].state == stoned)
			load_texture(cub3d, &cub3d->randy[i].sprite,
				"asset/enemy/xpm/stoned_randy.xpm");
		else if (cub3d->randy[i].state == drunk)
			load_texture(cub3d, &cub3d->randy[i].sprite,
				"asset/enemy/xpm/drunk_randy.xpm");
		else
			load_texture(cub3d, &cub3d->randy[i].sprite,
				"asset/enemy/xpm/godlike_randy.xpm");
		i++;
	}
}

void	init_bonus_assets(t_cub3d *cub3d)
{
	load_env_assets(cub3d, &cub3d->textures);
	load_trip_assets(cub3d, &cub3d->textures);
	load_fireball_assets(cub3d, &cub3d->textures);
	load_others_assets(cub3d, &cub3d->item, &cub3d->textures);
	load_normal_viewmodel(cub3d, &cub3d->player.viewmodel);
	load_trip_viewmodel(cub3d, &cub3d->player.viewmodel);
	load_enemy_assets(cub3d);
}
