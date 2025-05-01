/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_bonus_assets.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 18:07:42 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/01 12:50:30 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	load_texture(t_cub3d *cub3d, t_img *texture, char *asset_path)
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

static void	load_env_assets(t_cub3d *cub3d, t_textures *textures)
{
	load_texture(cub3d, &textures->floor, "asset/vanilla_tiles/xpm/floor.xpm");
	load_texture(cub3d, &textures->o_door,
		"asset/vanilla_tiles/xpm/open_door.xpm");
	load_texture(cub3d, &textures->c_door,
		"asset/vanilla_tiles/xpm/closed_door.xpm");
	load_texture(cub3d, &textures->wall_one,
		"asset/vanilla_tiles/xpm/wall_1.xpm");
	load_texture(cub3d, &textures->wall_two,
		"asset/vanilla_tiles/xpm/wall_2.xpm");
}

static void	load_trip_assets(t_cub3d *cub3d, t_textures *textures)
{
	load_texture(cub3d, &textures->trip_n_wall,
		"asset/trip_tiles/xpm/trip_north_wall.xpm");
	load_texture(cub3d, &textures->trip_s_wall,
		"asset/trip_tiles/xpm/trip_south_wall.xpm");
	load_texture(cub3d, &textures->trip_e_wall,
		"asset/trip_tiles/xpm/trip_east_wall.xpm");
	load_texture(cub3d, &textures->trip_w_wall,
		"asset/trip_tiles/xpm/trip_west_wall.xpm");
	load_texture(cub3d, &textures->trip_wall_one,
		"asset/trip_tiles/xpm/trip_wall_1.xpm");
	load_texture(cub3d, &textures->trip_wall_two,
		"asset/trip_tiles/xpm/trip_wall_2.xpm");
	load_texture(cub3d, &textures->trip_floor,
		"asset/trip_tiles/xpm/trip_floor.xpm");
	load_texture(cub3d, &textures->trip_c_door,
		"asset/trip_tiles/xpm/trip_closed_door.xpm");
	load_texture(cub3d, &textures->trip_o_door,
		"asset/trip_tiles/xpm/trip_open_door.xpm");
}

static void	load_normal_viewmodel(t_cub3d *cub3d, t_viewmodel *viewmodels)
{
	load_texture(cub3d, &viewmodels->normal_stand,
		"asset/viewmodel/xpm/normal_stand.xpm");
	load_texture(cub3d, &viewmodels->normal_sword_sprite[0],
		"asset/viewmodel/xpm/normal_sword_1.xpm");
	load_texture(cub3d, &viewmodels->normal_sword_sprite[1],
		"asset/viewmodel/xpm/normal_sword_2.xpm");
	load_texture(cub3d, &viewmodels->normal_sword_sprite[2],
		"asset/viewmodel/xpm/normal_sword_3.xpm");
	load_texture(cub3d, &viewmodels->normal_sword_sprite[3],
		"asset/viewmodel/xpm/normal_sword_4.xpm");
	load_texture(cub3d, &viewmodels->normal_wand_sprite[0],
		"asset/viewmodel/xpm/normal_wand_1.xpm");
	load_texture(cub3d, &viewmodels->normal_wand_sprite[1],
		"asset/viewmodel/xpm/normal_wand_2.xpm");
	load_texture(cub3d, &viewmodels->normal_wand_sprite[2],
		"asset/viewmodel/xpm/normal_wand_3.xpm");
	load_texture(cub3d, &viewmodels->normal_wand_sprite[3],
		"asset/viewmodel/xpm/normal_wand_4.xpm");
}

static void	load_trip_viewmodel(t_cub3d *cub3d, t_viewmodel *viewmodels)
{
	load_texture(cub3d, &viewmodels->trip_stand,
		"asset/viewmodel/xpm/trip_stand.xpm");
	load_texture(cub3d, &viewmodels->trip_sword_sprite[0],
		"asset/viewmodel/xpm/trip_sword_1.xpm");
	load_texture(cub3d, &viewmodels->trip_sword_sprite[1],
		"asset/viewmodel/xpm/trip_sword_2.xpm");
	load_texture(cub3d, &viewmodels->trip_sword_sprite[2],
		"asset/viewmodel/xpm/trip_sword_3.xpm");
	load_texture(cub3d, &viewmodels->trip_sword_sprite[3],
		"asset/viewmodel/xpm/trip_sword_4.xpm");
	load_texture(cub3d, &viewmodels->trip_cig_sprite[0],
		"asset/viewmodel/xpm/trip_cig_1.xpm");
	load_texture(cub3d, &viewmodels->trip_cig_sprite[1],
		"asset/viewmodel/xpm/trip_cig_2.xpm");
	load_texture(cub3d, &viewmodels->trip_cig_sprite[2],
		"asset/viewmodel/xpm/trip_cig_3.xpm");
	load_texture(cub3d, &viewmodels->trip_cig_sprite[3],
		"asset/viewmodel/xpm/trip_cig_4.xpm");
}

static void	load_items_assets(t_cub3d *cub3d, t_item *item)
{
	load_texture(cub3d, &item->sprite, "asset/item/xpm/shroom.xpm");
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
	load_items_assets(cub3d, &cub3d->item);
	load_normal_viewmodel(cub3d, &cub3d->player.viewmodel);
	load_trip_viewmodel(cub3d, &cub3d->player.viewmodel);
	load_enemy_assets(cub3d);
}
