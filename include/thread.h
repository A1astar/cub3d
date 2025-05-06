/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   thread.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/03 13:07:05 by algadea           #+#    #+#             */
/*   Updated: 2025/05/06 15:12:01 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef THREAD_H
# define THREAD_H

# include <pthread.h>

typedef struct s_thread
{
	long		cpu_core_nbr;
	pthread_t	*tid;
}				t_thread;

#endif
