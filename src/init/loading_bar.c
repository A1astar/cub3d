/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   loading_bar.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/12 17:11:59 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/13 18:57:53 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	load_img(t_cub3d *cub3d, t_img *texture, char *asset_path)
{
	texture->ptr = mlx_xpm_file_to_image(cub3d->window.mlx_ptr, asset_path,
			&texture->width, &texture->height);
	if (!texture->ptr)
	{
		error_msg("Wrong asset address: ", asset_path);
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
	texture->addr = mlx_get_data_addr(texture->ptr, &texture->bpp,
			&texture->size_line, &texture->endian);
	if (!texture->addr)
	{
		error_msg("Cannot load asset: ", asset_path);
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
}

void	display_loadbar(t_window *window, t_textures *textures)
{
	static int	img_ref = 0;
	static int	loaded_count = 0;

	if ((loaded_count % 2 == 0 || loaded_count == 0) && img_ref < 33)
	{
		mlx_put_image_to_window(window->mlx_ptr, window->win_ptr,
			textures->load[img_ref].ptr, 0, 0);
		img_ref++;
	}
	loaded_count++;
}

void	load_loadbar_pt2(t_cub3d *cub3d)
{
	load_img(cub3d, &cub3d->textures.load[24], "asset/load/xpm/load_25.xpm");
	load_img(cub3d, &cub3d->textures.load[25], "asset/load/xpm/load_26.xpm");
	load_img(cub3d, &cub3d->textures.load[26], "asset/load/xpm/load_27.xpm");
	load_img(cub3d, &cub3d->textures.load[27], "asset/load/xpm/load_28.xpm");
	load_img(cub3d, &cub3d->textures.load[28], "asset/load/xpm/load_29.xpm");
	load_img(cub3d, &cub3d->textures.load[29], "asset/load/xpm/load_30.xpm");
	load_img(cub3d, &cub3d->textures.load[30], "asset/load/xpm/load_31.xpm");
	load_img(cub3d, &cub3d->textures.load[31], "asset/load/xpm/load_32.xpm");
	load_img(cub3d, &cub3d->textures.load[32], "asset/load/xpm/load_33.xpm");
}

void	init_loadbar(t_cub3d *cub3d)
{
	load_text(cub3d, &cub3d->textures.load[0], "asset/load/xpm/load_01.xpm");
	load_img(cub3d, &cub3d->textures.load[1], "asset/load/xpm/load_02.xpm");
	load_img(cub3d, &cub3d->textures.load[2], "asset/load/xpm/load_03.xpm");
	load_img(cub3d, &cub3d->textures.load[3], "asset/load/xpm/load_04.xpm");
	load_img(cub3d, &cub3d->textures.load[4], "asset/load/xpm/load_05.xpm");
	load_img(cub3d, &cub3d->textures.load[5], "asset/load/xpm/load_06.xpm");
	load_img(cub3d, &cub3d->textures.load[6], "asset/load/xpm/load_07.xpm");
	load_img(cub3d, &cub3d->textures.load[7], "asset/load/xpm/load_08.xpm");
	load_img(cub3d, &cub3d->textures.load[8], "asset/load/xpm/load_09.xpm");
	load_img(cub3d, &cub3d->textures.load[9], "asset/load/xpm/load_10.xpm");
	load_img(cub3d, &cub3d->textures.load[10], "asset/load/xpm/load_11.xpm");
	load_img(cub3d, &cub3d->textures.load[11], "asset/load/xpm/load_12.xpm");
	load_img(cub3d, &cub3d->textures.load[12], "asset/load/xpm/load_13.xpm");
	load_img(cub3d, &cub3d->textures.load[13], "asset/load/xpm/load_14.xpm");
	load_img(cub3d, &cub3d->textures.load[14], "asset/load/xpm/load_15.xpm");
	load_img(cub3d, &cub3d->textures.load[15], "asset/load/xpm/load_16.xpm");
	load_img(cub3d, &cub3d->textures.load[16], "asset/load/xpm/load_17.xpm");
	load_img(cub3d, &cub3d->textures.load[17], "asset/load/xpm/load_18.xpm");
	load_img(cub3d, &cub3d->textures.load[18], "asset/load/xpm/load_19.xpm");
	load_img(cub3d, &cub3d->textures.load[19], "asset/load/xpm/load_20.xpm");
	load_img(cub3d, &cub3d->textures.load[20], "asset/load/xpm/load_21.xpm");
	load_img(cub3d, &cub3d->textures.load[21], "asset/load/xpm/load_22.xpm");
	load_img(cub3d, &cub3d->textures.load[22], "asset/load/xpm/load_23.xpm");
	load_img(cub3d, &cub3d->textures.load[23], "asset/load/xpm/load_24.xpm");
	load_loadbar_pt2(cub3d);
}
