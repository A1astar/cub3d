/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   error.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/27 23:21:28 by agadea            #+#    #+#             */
/*   Updated: 2024/09/10 21:57:54 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	print_error(int errnum)
{
	if (errnum == err_mlx_ptr)
		write(STDERR_FILENO, "ERROR MLX PTR\n", 14);
	else if (errnum == err_win_ptr)
		write(STDERR_FILENO, "ERROR WIN PTR\n", 14);
	else if (errnum == err_arg_nbr)
		write(STDERR_FILENO, "\033[31mERROR ARG NUMBER\n\033[0m", 26);
	else if (errnum == err_filename)
		write(STDERR_FILENO, "ERROR FILENAME\n", 15);
	else if (errnum == fileopen)
		write(STDERR_FILENO, "ERROR OPEN FILE\n", 16);
	else if (errnum == err_malloc)
		write(STDERR_FILENO, "ERROR MALLOC\n", 13);
	else if (errnum == err_id)
		write(STDERR_FILENO, "ERROR ID\n", 9);
	else if (errnum == err_map_format)
		write(STDERR_FILENO, "ERROR MAP DATA\n", 15);
	else if (errnum == err_xpm_to_image)
		write(STDERR_FILENO, "ERROR XPM FILE\n", 15);
	else if (errnum == err_map_starting_pos)
		write(STDERR_FILENO, "ERROR MAP FORMAT\n", 17);
}

void	print_error_then_exit_program(t_cub3d *cub3d, int errnum)
{
	print_error(errnum);
	if (errnum != err_arg_nbr)
		clean_program(cub3d);
	errno = errnum;
	exit(EXIT_FAILURE);
}
