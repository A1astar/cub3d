/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_viewmodel.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/28 19:02:41 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/29 12:12:32 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	draw_viewmodel(t_img *viewmodel, t_scene *scene, int x_start,
		int y_start)
{
	int				x;
	int				y;

	x = 0;
	y = 0;
	while (y < viewmodel->height)
	{
		x = 0;
		while (x < viewmodel->width)
		{
			draw_pixel_asset(&scene->img,
				x_start + x,
				y_start + y,
				get_pixel(viewmodel, x, y));
			x++;
		}
		y++;
	}
}

t_img	*select_viewmodel(t_cub3d *cub3d, t_viewmodel *viewmodel)
{
	if (cub3d->rendering_state == normal)
		return (&viewmodel->normal_stand);
	else
		return (&viewmodel->trip_stand);
}

void	render_viewmodel(t_cub3d *cub3d, t_viewmodel *viewmodel, t_scene *scene)
{
	int		x_start;
	int		y_start;
	t_img	*img;

	img = select_viewmodel(cub3d, viewmodel);
	x_start = WINDOW_WIDTH / 2 - viewmodel->normal_stand.width / 2;
	y_start = WINDOW_HEIGHT - viewmodel->normal_stand.height
		+ viewmodel->draw_pos;
	draw_viewmodel(img, scene, x_start, y_start);
}
