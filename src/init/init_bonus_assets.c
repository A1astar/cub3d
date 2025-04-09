/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_bonus_assets.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 18:07:42 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/09 18:08:06 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

// static int	check_sprite(t_enemy *randy, char *name)
// {
// 	uint32_t	i;

// 	i = 0;
// 	while (i < 16)
// 	{
// 		if (!randy->sprite[i])
// 			return (error_msg(TEXT, name), -1);
// 		i++;
// 	}
// 	return (0);
// }

// static int	load_angry_sprites(t_enemy *randy)
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
// 	return (check_sprite(randy, "angry_randy"));
// }

// static int	load_stoned_sprites(t_enemy *randy)
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
// 	return (check_sprite(randy, "stoned_randy"));
// }

// static int	load_drunk_sprites(t_enemy *randy)
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
// 	return (check_sprite(randy, "drunk_randy"));
// }

// static int	load_godlike_sprites(t_enemy *randy)
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
// 	return (check_sprite(randy, "godlike_randy"));
// }

// static int	load_randy_assets(t_cub3d *game)
// {
// 	uint32_t	i;

// 	i = 0;
// 	while (i < game->enemy_nb)
// 	{
// 		if (game->randy[i].state == angry)
// 			if (load_angry_sprites(&game->randy[i]) == -1)
// 				return (-1);
// 		if (game->randy[i].state == stoned)
// 			if (load_stoned_sprites(&game->randy[i]) == -1)
// 				return (-1);
// 		if (game->randy[i].state == drunk)
// 			if (load_drunk_sprites(&game->randy[i]) == -1)
// 				return (-1);
// 		if (game->randy[i].state == godlike)
// 			if (load_godlike_sprites(&game->randy[i]) == -1)
// 				return (-1);
// 		i++;
// 	}
// 	return (0);
// }

// static int	load_env_assets(t_cub3d *game)
// {
// 	game->map.viewmodel = mlx_xpm_file_to_image(); // TODO
// 	if (!game->map.viewmodel)
// 		return (error(TEXT, "viewmodel"), -1);
// 	game->map.floor = mlx_xpm_file_to_image(); // TODO
// 	if (!game->map.floor)
// 		return (error(TEXT, "floor"), -1);
// 	game->map.closed_door = mlx_xpm_file_to_image(); // TODO
// 	if (!game->map.closed_door)
// 		return (error(TEXT, "closed_door") - 1);
// 	game->map.open_door = mlx_xpm_file_to_image(); // TODO
// 	if (!game->map.open_door)
// 		return (error(TEXT, "open_door"), -1); // TODO
// 	return (0);
// }

// int	load_bonus_assets(t_cub3d *game)
// {
// 	if (!game->map.bonus)
// 		return (0);
// 	if (load_env_assets(game) == -1)
// 		return (-1);
// 	if (load_randy_assets(game) == -1)
// 		return (-1);
// }
