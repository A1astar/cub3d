/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_struct_attributes.c                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/11 16:20:59 by algadea           #+#    #+#             */
/*   Updated: 2025/04/27 16:45:00 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	init_randy(t_enemy *randy)
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

static void	init_textures(t_textures *textures)
{
	ft_bzero(&textures->n_wall, sizeof(t_img));
	ft_bzero(&textures->s_wall, sizeof(t_img));
	ft_bzero(&textures->e_wall, sizeof(t_img));
	ft_bzero(&textures->w_wall, sizeof(t_img));
	ft_bzero(&textures->wall_one, sizeof(t_img));
	ft_bzero(&textures->wall_two, sizeof(t_img));
	ft_bzero(&textures->floor, sizeof(t_img));
	ft_bzero(&textures->o_door, sizeof(t_img));
	ft_bzero(&textures->c_door, sizeof(t_img));
	ft_bzero(&textures->trip_n_wall, sizeof(t_img));
	ft_bzero(&textures->trip_s_wall, sizeof(t_img));
	ft_bzero(&textures->trip_e_wall, sizeof(t_img));
	ft_bzero(&textures->trip_w_wall, sizeof(t_img));
	ft_bzero(&textures->trip_wall_one, sizeof(t_img));
	ft_bzero(&textures->trip_wall_two, sizeof(t_img));
	ft_bzero(&textures->trip_floor, sizeof(t_img));
	ft_bzero(&textures->trip_o_door, sizeof(t_img));
	ft_bzero(&textures->trip_c_door, sizeof(t_img));
}

static void	init_viewmodel(t_viewmodel *viewmodel)
{
	ft_bzero(&viewmodel->normal_stand, sizeof(t_img));
	ft_bzero(&viewmodel->trip_stand, sizeof(t_img));
	ft_bzero(&viewmodel->normal_sword_sprite[0], sizeof(t_img));
	ft_bzero(&viewmodel->normal_sword_sprite[1], sizeof(t_img));
	ft_bzero(&viewmodel->normal_sword_sprite[2], sizeof(t_img));
	ft_bzero(&viewmodel->normal_sword_sprite[3], sizeof(t_img));
	ft_bzero(&viewmodel->normal_wand_sprite[0], sizeof(t_img));
	ft_bzero(&viewmodel->normal_wand_sprite[1], sizeof(t_img));
	ft_bzero(&viewmodel->normal_wand_sprite[2], sizeof(t_img));
	ft_bzero(&viewmodel->normal_wand_sprite[3], sizeof(t_img));
	ft_bzero(&viewmodel->trip_sword_sprite[0], sizeof(t_img));
	ft_bzero(&viewmodel->trip_sword_sprite[1], sizeof(t_img));
	ft_bzero(&viewmodel->trip_sword_sprite[2], sizeof(t_img));
	ft_bzero(&viewmodel->trip_sword_sprite[3], sizeof(t_img));
	ft_bzero(&viewmodel->trip_cig_sprite[0], sizeof(t_img));
	ft_bzero(&viewmodel->trip_cig_sprite[1], sizeof(t_img));
	ft_bzero(&viewmodel->trip_cig_sprite[2], sizeof(t_img));
	ft_bzero(&viewmodel->trip_cig_sprite[3], sizeof(t_img));
}

void	init_struct_attributes(t_cub3d *cub3d)
{
	pthread_mutex_init(&cub3d->print, NULL);
	ft_bzero(cub3d, sizeof(cub3d));
	ft_bzero(&cub3d->map, sizeof(t_map));
	ft_bzero(&cub3d->scene, sizeof(t_scene));
	ft_bzero(&cub3d->window, sizeof(t_window));
	ft_bzero(&cub3d->player, sizeof(t_player));
	ft_bzero(&cub3d->key_state, sizeof(t_key_state));
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
	ft_bzero(&cub3d->item, sizeof(t_item));
	init_textures(&cub3d->textures);
	init_viewmodel(&cub3d->player.viewmodel);
	cub3d->program_state = main_menu;
	cub3d->rendering_state = normal;
}
