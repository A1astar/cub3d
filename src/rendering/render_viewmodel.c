/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_viewmodel.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/28 19:02:41 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/28 19:14:38 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static int	get_pixel(t_img *img, int x, int y)
{
	char	*pixel;
	int		color;

	if (x < 0 || y < 0 || x >= img->width || y >= img->height)
		return (0x000000);
	pixel = img->addr + (y * img->size_line + x * (img->bpp / 8));
	color = *(unsigned int *)pixel;
	return (color);
}

void	draw_viewmodel(t_img *viewmodel, t_scene *scene, int x_start,
		int y_start)
{
	unsigned int	color;
	int				x;
	int				y;

	x = 0;
	y = 0;
	while (y < viewmodel->height)
	{
		x = 0;
		while (x < viewmodel->width)
		{
			color = get_pixel(viewmodel, x, y);
			if ((color >> 24) == 0)
				draw_pixel(&scene->img, x_start + x, y_start + y, color);
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
