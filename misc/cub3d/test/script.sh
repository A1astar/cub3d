#!/usr/bin/bash

CUB3D='./cub3d'
VALGRIND='valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes \
--trace-fds=yes --trace-children=yes'

main()
{
	pushd .. > /dev/null 
	make
	if [ $? = 0 ]; then
		echo "MAKE SUCCESS"
		testing
		exit 0
	fi
	popd > /dev/null
	exit 1
}

testing()
{
	testing_map
}

test_map()
{
	map=(
		'map/empty.cub'
		'map/goodmap.cub'
		'map/map.wrong'
		'map/wrongmap.cub'
	)
	exit 0
}

profile_prog()
{
	exit 0
}

main $@