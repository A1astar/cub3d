/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_bonus_assets.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 18:07:42 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/09 19:27:12 by alacroix         ###   ########.fr       */
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
// 	while (i < cub3d->enemy_nb)
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

// static int	load_env_assets(t_cub3d *cub3d, t_map *map)
// {
// 	map->viewmodel = mlx_xpm_file_to_image(cub3d->scene.mlx_ptr, POV_XPM, map->view_width, map->view_height );
// 	map->floor = mlx_xpm_file_to_image(cub3d->scene.mlx_ptr, FLOOR_XPM, map->texture_width, map->texture_height);
// 	map->closed_door = mlx_xpm_file_to_image(cub3d->scene.mlx_ptr, CLOSED_DOOR_XPM, map->texture_width, map->texture_width);
// 	map->open_door = mlx_xpm_file_to_image(cub3d->scene.mlx_ptr, OPEN_DOOR_XPM, map->texture_width, map->texture_height);
// 	if(!cub3d->map.viewmodel || !cub3d->map.floor || !cub3d->map.closed_door || cub3d->map.open_door)
// 	{
// 		error_msg("Cannot load bonus env sprite:", NULL);
// 		free_program(cub3d);
// 	}
// }

// void init_bonus_assets(t_cub3d *cub3d)
// {
// 	load_env_assets(cub3d, &cub3d->map);
// 	load_randy_assets(cub3d);
// }
