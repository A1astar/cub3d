/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   memory_utils.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/29 14:04:53 by agadea            #+#    #+#             */
/*   Updated: 2024/07/29 18:11:17 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	free_2d_char(char **data)
{
	int	i;

	i = 0;
	while (data[i])
	{
		free(data[i]);
		data[i] = NULL;
		i++;
	}
	free(data);
	data = NULL;
}

void	free_img(t_img *img)
{
	if (img->ptr)
		free(img->ptr);
	// if (img->addr)
	// 	free(img->addr);
	img->ptr = NULL;
	img->addr = NULL;
	free(img);
}

void	free_xpm_file(t_xpm *xpm)
{
	if (xpm->ptr)
		free(xpm->ptr);
	xpm->ptr = NULL;
	free(xpm);
	xpm = NULL;
}