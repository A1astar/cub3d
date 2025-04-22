/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_bonus_assets.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 18:07:42 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/22 17:29:12 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

// static void	check_sprite(t_cub3d *cub3d, t_enemy *randy, char *name)
// {
// 	int	i;

// 	i = 0;
// 	while (i < 16)
// 	{
// 		if (!randy->sprite[i])
// 		{
// 			error_msg("Cannot load sprite:", name);
// 			free_program(cub3d);
// 		}
// 		i++;
// 	}
// 	return (0);
// }

// static int	load_angry_sprites(t_cub3d *cub3d, t_enemy *randy)
// {
// 	randy->sprite[0] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[1] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[2] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[3] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[4] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[5] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[6] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[7] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[8] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[9] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[10] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[11] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[12] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[13] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[14] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[15] = mlx_xpm_file_to_image(); // TODO
// 	check_sprite(cub3d, randy, "angry_randy");
// }

// static int	load_stoned_sprites(t_cub3d *cub3d, t_enemy *randy)
// {
// 	randy->sprite[0] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[1] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[2] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[3] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[4] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[5] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[6] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[7] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[8] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[9] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[10] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[11] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[12] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[13] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[14] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[15] = mlx_xpm_file_to_image(); // TODO
// 	check_sprite(cub3d, randy, "stoned_randy");
// }

// static int	load_drunk_sprites(t_cub3d *cub3d, t_enemy *randy)
// {
// 	randy->sprite[0] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[1] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[2] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[3] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[4] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[5] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[6] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[7] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[8] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[9] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[10] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[11] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[12] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[13] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[14] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[15] = mlx_xpm_file_to_image(); // TODO
// 	check_sprite(cub3d, randy, "drunk_randy");
// }

// static int	load_godlike_sprites(t_cub3d *cub3d, t_enemy *randy)
// {
// 	randy->sprite[0] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[1] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[2] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[3] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[4] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[5] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[6] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[7] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[8] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[9] = mlx_xpm_file_to_image();  // TODO
// 	randy->sprite[10] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[11] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[12] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[13] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[14] = mlx_xpm_file_to_image(); // TODO
// 	randy->sprite[15] = mlx_xpm_file_to_image(); // TODO
// 	check_sprite(cub3d, randy, "godlike_randy");
// }

// static void	load_randy_assets(t_cub3d *cub3d)
// {
// 	uint32_t	i;

// 	i = 0;
// 	while (i < cub3d->nb_enemy)
// 	{
// 		if (cub3d->randy[i].state == angry)
// 			if (load_angry_sprites(cub3d, &cub3d->randy[i]) == -1)
// 				return (-1);
// 		if (cub3d->randy[i].state == stoned)
// 			if (load_stoned_sprites(cub3d, &cub3d->randy[i]) == -1)
// 				return (-1);
// 		if (cub3d->randy[i].state == drunk)
// 			if (load_drunk_sprites(cub3d, &cub3d->randy[i]) == -1)
// 				return (-1);
// 		if (cub3d->randy[i].state == godlike)
// 			if (load_godlike_sprites(cub3d, &cub3d->randy[i]) == -1)
// 				return (-1);
// 		i++;
// 	}
// }

static void	load_texture(t_cub3d *cub3d, t_img *texture, char *asset_path)
{
	texture->ptr = mlx_xpm_file_to_image(cub3d->window.mlx_ptr, asset_path,
			&texture->width, &texture->height);
	if (!texture->ptr)
	{
		error_msg("Wrong asset address", NULL);
		free_program(cub3d);
	}
	texture->addr = mlx_get_data_addr(texture->ptr, &texture->bpp,
			&texture->size_line, &texture->endian);
	if (!texture->addr)
	{
		error_msg("WCannot load asset", NULL);
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
	load_texture(cub3d, &textures->viewmodel,
		"asset/viewmodel/xpm/viewmodel.xpm");
	load_texture(cub3d, &textures->trip_viewmodel,
		"asset/viewmodel/xpm/trip_viewmodel.xpm");
}

static void	load_trip_assets(t_cub3d *cub3d, t_textures *textures)
{
	load_texture(cub3d, &textures->shroom, "asset/item/xpm/shroom.xpm");
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

void	init_bonus_assets(t_cub3d *cub3d)
{
	load_env_assets(cub3d, &cub3d->textures);
	load_trip_assets(cub3d, &cub3d->textures);
}
