/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/06 11:25:33 by algadea           #+#    #+#             */
/*   Updated: 2025/05/06 13:06:23 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <unistd.h>
#include <sys/time.h>

int	main(void) {
	struct timeval	time;

	while (1) {
		gettimeofday(&time, NULL);
		// printf("%ld.%ld\n", time.tv_sec * 1000, time.tv_usec / 1000);
		printf("%ld\n", time.tv_sec * 1000 + time.tv_usec / 1000);
		// printf("%ld.%ld\n", time.tv_sec, time.tv_usec);
	}
}