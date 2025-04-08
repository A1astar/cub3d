/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   parsing_texture.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/03 09:44:58 by agadea            #+#    #+#             */
/*   Updated: 2024/07/29 17:08:18 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

char	*get_texture_filename(t_cub3d *cub3d, char *id, char *line)
{
	int		i;
	int		j;
	int		len;
	char	*filepath;

	i = ft_strlen(id);
	while (line[i] && is_space(line[i]))
		i++;
	len = ft_strlen(&line[i]);
	filepath = malloc(len + 1);
	if (!filepath)
		print_error_then_exit_program(cub3d, err_malloc);
	j = 0;
	while (j < len)
	{
		filepath[j] = line[i];
		j++;
		i++;
	}
	filepath[j] = '\0';
	return (filepath);
}

t_xpm	*get_texture_xpm(t_cub3d *cub3d, char *id, char *line)
{
	char	*filename;
	t_xpm	*texture;

	filename = get_texture_filename(cub3d, id, line);
	texture = malloc(sizeof(t_xpm));
	if (!texture)
		print_error_then_exit_program(cub3d, err_malloc);
	texture->ptr = mlx_xpm_file_to_image(cub3d->mlx_ptr, filename,
			&texture->width, &texture->height);
	// if (!texture->ptr)
	// 	print_error_then_exit_program(cub3d, err_xpm_to_image);
	free(filename);
	return (texture);
}

void	extract_texture_data(t_cub3d *cub3d, char *id, int texture_id, char *line)
{
	if (is_element_already_set(texture_id, cub3d->file->mask)
		|| !is_valid_path(line, id))
		print_error_then_exit_program(cub3d, err_id);
	if (texture_id == north)
		cub3d->map->no_texture = get_texture_xpm(cub3d, id, line);
	else if (texture_id == south)
		cub3d->map->so_texture = get_texture_xpm(cub3d, id, line);
	else if (texture_id == west)
		cub3d->map->we_texture = get_texture_xpm(cub3d, id, line);
	else if (texture_id == east)
		cub3d->map->ea_texture = get_texture_xpm(cub3d, id, line);
	set_mask_element(texture_id, &cub3d->file->mask);
}
