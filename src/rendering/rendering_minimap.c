/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_minimap.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/16 15:58:36 by algadea           #+#    #+#             */
/*   Updated: 2025/05/12 15:32:15 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static inline bool	is_floor(char element)
{
	return (element == '0' || element == 'N' || element == 'S' || element == 'E'
		|| element == 'W' || element == 'R' || element == 'M');
}

void	render_minimap_enemy(t_cub3d *cub3d, t_minimap *minimap, t_enemy *enemy)
{
	double	px;
	double	py;
	double	size;
	double	y;
	double	x;

	px = (enemy->x_pos + 0.5) * minimap->tile_width * minimap->scale
		+ minimap->x_origin;
	py = (enemy->y_pos + 0.5) * minimap->tile_height * minimap->scale
		+ minimap->y_origin;
	size = (minimap->tile_width * minimap->scale) * 0.5;
	y = -size / 2;
	while (y < size / 2)
	{
		x = -size / 2;
		while (x < size / 2)
		{
			draw_pixel_color(&cub3d->scene.img, px + x, py + y, HEX_RED);
			x++;
		}
		y++;
	}
}

void	draw_element(t_cub3d *cub3d, int x, int y, char element)
{
	if (is_floor(element))
		draw_square(cub3d, x, y, HEX_GREY);
	if (element == '1')
		draw_square(cub3d, x, y, HEX_BLACK);
	if (element == 'O' || element == 'C')
		draw_square(cub3d, x, y, HEX_BROWN);
}

void	draw_map(t_cub3d *cub3d, t_map *map, t_minimap *minimap)
{
	int	i;
	int	j;
	int	x;
	int	y;

	i = 0;
	y = minimap->y_origin;
	while (map->map[i])
	{
		j = 0;
		x = minimap->x_origin;
		while (map->map[i][j])
		{
			draw_element(cub3d, x, y, map->map[i][j]);
			j++;
			x += minimap->tile_width * minimap->scale;
		}
		y += minimap->tile_height * minimap->scale;
		i++;
	}
}

void	render_minimap(t_cub3d *cub3d, t_map *map, t_minimap *minimap,
		t_player *player)
{
	int	i;

	i = 0;
	draw_map(cub3d, map, minimap);
	render_minimap_player(cub3d, minimap, player, &cub3d->player.render);
	while (i < cub3d->nb_enemy)
		render_minimap_enemy(cub3d, minimap, &cub3d->randy[i++]);
}
