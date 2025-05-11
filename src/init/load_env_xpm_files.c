/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   load_env_xpm_files.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/06 12:03:28 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/11 13:03:56 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	load_env_assets(t_cub3d *cub3d, t_textures *textures)
{
	load_asset(cub3d, &textures->floor, "asset/vanilla_tiles/xpm/floor.xpm");
	load_asset(cub3d, &textures->o_door,
		"asset/vanilla_tiles/xpm/open_door.xpm");
	load_asset(cub3d, &textures->c_door,
		"asset/vanilla_tiles/xpm/closed_door.xpm");
	load_asset(cub3d, &textures->wall_one,
		"asset/vanilla_tiles/xpm/wall_1.xpm");
	load_asset(cub3d, &textures->wall_two,
		"asset/vanilla_tiles/xpm/wall_2.xpm");
}

void	load_trip_assets(t_cub3d *cub3d, t_textures *textures)
{
	load_asset(cub3d, &textures->trip_n_wall,
		"asset/trip_tiles/xpm/trip_north_wall.xpm");
	load_asset(cub3d, &textures->trip_s_wall,
		"asset/trip_tiles/xpm/trip_south_wall.xpm");
	load_asset(cub3d, &textures->trip_e_wall,
		"asset/trip_tiles/xpm/trip_east_wall.xpm");
	load_asset(cub3d, &textures->trip_w_wall,
		"asset/trip_tiles/xpm/trip_west_wall.xpm");
	load_asset(cub3d, &textures->trip_wall_one,
		"asset/trip_tiles/xpm/trip_wall_1.xpm");
	load_asset(cub3d, &textures->trip_wall_two,
		"asset/trip_tiles/xpm/trip_wall_2.xpm");
	load_asset(cub3d, &textures->trip_floor,
		"asset/trip_tiles/xpm/trip_floor.xpm");
	load_asset(cub3d, &textures->trip_c_door,
		"asset/trip_tiles/xpm/trip_closed_door.xpm");
	load_asset(cub3d, &textures->trip_o_door,
		"asset/trip_tiles/xpm/trip_open_door.xpm");
}

void	load_others_assets(t_cub3d *cub3d, t_item *item, t_textures *textures)
{
	load_asset(cub3d, &item->sprite, "asset/item/xpm/shroom.xpm");
	load_asset(cub3d, &textures->blood[0], "asset/blood/xpm/blood01.xpm");
	load_asset(cub3d, &textures->blood[1], "asset/blood/xpm/blood02.xpm");
	load_asset(cub3d, &textures->blood[2], "asset/blood/xpm/blood03.xpm");
	load_asset(cub3d, &textures->cadaver, "asset/enemy/xpm/dead.xpm");
}
