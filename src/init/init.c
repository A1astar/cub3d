/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 11:27:44 by algadea           #+#    #+#             */
/*   Updated: 2025/04/18 16:30:57 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */


#include "../../include/cub3d.h"

void	init_randy(t_enemy *randy)
{
	ft_bzero(&randy->sprite[0], sizeof(t_img));
	ft_bzero(&randy->sprite[1], sizeof(t_img));
	ft_bzero(&randy->sprite[2], sizeof(t_img));
	ft_bzero(&randy->sprite[3], sizeof(t_img));
	ft_bzero(&randy->sprite[4], sizeof(t_img));
	ft_bzero(&randy->sprite[5], sizeof(t_img));
	ft_bzero(&randy->sprite[6], sizeof(t_img));
	ft_bzero(&randy->sprite[7], sizeof(t_img));
	ft_bzero(&randy->sprite[8], sizeof(t_img));
	ft_bzero(&randy->sprite[9], sizeof(t_img));
	ft_bzero(&randy->sprite[10], sizeof(t_img));
	ft_bzero(&randy->sprite[11], sizeof(t_img));
	ft_bzero(&randy->sprite[12], sizeof(t_img));
	ft_bzero(&randy->sprite[13], sizeof(t_img));
	ft_bzero(&randy->sprite[14], sizeof(t_img));
	ft_bzero(&randy->sprite[15], sizeof(t_img));
}

void	init_textures(t_textures *textures)
{
	ft_bzero(&textures->n_wall , sizeof(t_img));
	ft_bzero(&textures->s_wall , sizeof(t_img));
	ft_bzero(&textures->e_wall , sizeof(t_img));
	ft_bzero(&textures->w_wall , sizeof(t_img));
	ft_bzero(&textures->wall_one , sizeof(t_img));
	ft_bzero(&textures->wall_two , sizeof(t_img));
	ft_bzero(&textures->floor , sizeof(t_img));
	ft_bzero(&textures->o_door , sizeof(t_img));
	ft_bzero(&textures->c_door , sizeof(t_img));
	ft_bzero(&textures->shroom , sizeof(t_img));
	ft_bzero(&textures->trip_n_wall , sizeof(t_img));
	ft_bzero(&textures->trip_s_wall , sizeof(t_img));
	ft_bzero(&textures->trip_e_wall , sizeof(t_img));
	ft_bzero(&textures->trip_w_wall , sizeof(t_img));
	ft_bzero(&textures->trip_wall_one , sizeof(t_img));
	ft_bzero(&textures->trip_wall_two , sizeof(t_img));
	ft_bzero(&textures->trip_floor , sizeof(t_img));
	ft_bzero(&textures->trip_o_door , sizeof(t_img));
	ft_bzero(&textures->trip_c_door , sizeof(t_img));

}

void	init_struct_attributes(t_cub3d *cub3d)
{
	pthread_mutex_init(&cub3d->print, NULL);
	ft_bzero(cub3d, sizeof(cub3d));
	ft_bzero(&cub3d->map, sizeof(t_map));
	ft_bzero(&cub3d->scene, sizeof(t_scene));
	ft_bzero(&cub3d->window, sizeof(t_window));
	ft_bzero(&cub3d->player, sizeof(t_player));
	ft_bzero(&cub3d->player.render, sizeof(t_render));
	ft_bzero(&cub3d->minimap, sizeof(t_minimap));
	ft_bzero(&cub3d->setting, sizeof(t_setting));
	ft_bzero(&cub3d->randy[0], sizeof(t_enemy));
	ft_bzero(&cub3d->randy[1], sizeof(t_enemy));
	ft_bzero(&cub3d->randy[2], sizeof(t_enemy));
	ft_bzero(&cub3d->randy[3], sizeof(t_enemy));
	ft_bzero(&cub3d->main_menu, sizeof(t_main_menu));
	ft_bzero(&cub3d->level_menu, sizeof(t_main_menu));
	ft_bzero(&cub3d->raycast, sizeof(t_raycast));
	init_randy(&cub3d->randy[0]);
	init_randy(&cub3d->randy[1]);
	init_randy(&cub3d->randy[2]);
	init_randy(&cub3d->randy[3]);
	init_textures(&cub3d->textures);
	cub3d->program_state = main_menu;
}

void	init_player(t_player *player, t_minimap *minimap)
{
	if (player->orientation == north)
	{
		player->x_dir = 0;
		player->y_dir = 1;
		player->angle = 90;
	}
	else if (player->orientation == east)
	{
		player->x_dir = 1;
		player->y_dir = 0;
		player->angle = 0;
	}
	else if (player->orientation == west)
	{
		player->x_dir = -1;
		player->y_dir = 0;
		player->angle = 180;
	}
	else if (player->orientation == south)
	{
		player->x_dir = 0;
		player->y_dir = -1;
		player->angle = 270;
	}
	player->radian = player->angle * (PI / 180.0);
	player->height = minimap->tile_height;
	player->width = minimap->tile_width;
}

void	init_minimap(t_minimap *minimap)
{
	int	map_width;
	int	map_height;

	minimap->tile_height = 5;
	minimap->tile_width = 5;
	minimap->scale = 1;
	minimap->x_origin = WINDOW_WIDTH * 0.66;
	map_width = minimap->width * minimap->tile_width;
	if (map_width + minimap->x_origin > WINDOW_WIDTH)
		minimap->x_origin = WINDOW_WIDTH - map_width;
	minimap->y_origin = WINDOW_HEIGHT * 0.8;
	map_height = minimap->height * minimap->tile_height;
	if (map_height + minimap->y_origin > WINDOW_HEIGHT)
		minimap->y_origin = WINDOW_HEIGHT - map_height;
}

void init_raycast(t_raycast *raycast, t_player *player)
{
	raycast->fov = 66.0;
	raycast->fov_rad = raycast->fov * PI / 180.0;
	raycast->x_plane = 0;
	raycast->y_plane = 0.66;
	raycast->x_dir = player->x_dir;
	raycast->y_dir = player->y_dir;
	raycast->width = WINDOW_WIDTH;
	raycast->height = WINDOW_HEIGHT;
}

void	init_program(t_cub3d *cub3d, char **argv)
{
	init_struct_attributes(cub3d);
	parsing(cub3d, argv[1]);
	init_mlx(cub3d, &cub3d->window);
	init_asset(cub3d);
	init_minimap(&cub3d->minimap);
	init_player(&cub3d->player, &cub3d->minimap);
	init_raycast(&cub3d->raycast, &cub3d->player);
}
