/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   load_view_xpm_files.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/06 12:04:58 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/07 12:22:11 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	load_slash_assets(t_cub3d *cub3d, t_textures *text)
{
	load_texture(cub3d, &text->slash[0], "asset/slash/xpm/Slash_1.xpm");
	load_texture(cub3d, &text->slash[1], "asset/slash/xpm/Slash_2.xpm");
	load_texture(cub3d, &text->slash[2], "asset/slash/xpm/Slash_3.xpm");
	load_texture(cub3d, &text->slash[3], "asset/slash/xpm/Slash_4.xpm");
	load_texture(cub3d, &text->slash[4], "asset/slash/xpm/Slash_5.xpm");
	load_texture(cub3d, &text->slash[5], "asset/slash/xpm/Slash_6.xpm");
	load_texture(cub3d, &text->slash[6], "asset/slash/xpm/Slash_7.xpm");
	load_texture(cub3d, &text->slash[7], "asset/slash/xpm/Slash_8.xpm");
	load_texture(cub3d, &text->slash[8], "asset/slash/xpm/Slash_9.xpm");
}

void	load_fireball_assets(t_cub3d *cub3d, t_textures *text)
{
	load_texture(cub3d, &text->fireball[0], "asset/magic/xpm/fireball_01.xpm");
	load_texture(cub3d, &text->fireball[1], "asset/magic/xpm/fireball_02.xpm");
	load_texture(cub3d, &text->fireball[2], "asset/magic/xpm/fireball_03.xpm");
	load_texture(cub3d, &text->fireball[3], "asset/magic/xpm/fireball_04.xpm");
	load_texture(cub3d, &text->fireball[4], "asset/magic/xpm/fireball_05.xpm");
	load_texture(cub3d, &text->fireball[5], "asset/magic/xpm/fireball_06.xpm");
	load_texture(cub3d, &text->fireball[6], "asset/magic/xpm/fireball_07.xpm");
	load_texture(cub3d, &text->fireball[7], "asset/magic/xpm/fireball_08.xpm");
	load_texture(cub3d, &text->fireball[8], "asset/magic/xpm/fireball_09.xpm");
	load_texture(cub3d, &text->fireball[9], "asset/magic/xpm/fireball_10.xpm");
	load_texture(cub3d, &text->fireball[10], "asset/magic/xpm/fireball_11.xpm");
	load_texture(cub3d, &text->fireball[11], "asset/magic/xpm/fireball_12.xpm");
	load_texture(cub3d, &text->fireball[12], "asset/magic/xpm/fireball_13.xpm");
}

void	load_normal_viewmodel(t_cub3d *cub3d, t_viewmodel *viewmodels)
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

void	load_trip_viewmodel(t_cub3d *cub3d, t_viewmodel *viewmodels)
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
