#!/bin/bash

PROJECT_DIR=$(cd .. && pwd)
TEST_DIR=$(pwd)
BINARY="$PROJECT_DIR/cub3D"
MAP_DIR="$TEST_DIR/test_maps"

TEST_CASE=($(find "$MAP_DIR" -maxdepth 1 -type f -name "*.cub"))

print_header() {

	echo "		launch_test maps"
	echo ""
	echo " Project: $BINARY"
	echo " Test maps dir: $MAP_DIR"
	echo " Nb of maps: ${#TEST_CASE[@]}"
}

build_bin() {
	make -C "$PROJECT_DIR" fclean > /dev/null
	if ! make -C "$PROJECT_DIR" ASAN=1 > /dev/null; then
		echo "❌ Échec de la compilation"
		exit 1
	fi
	echo "✅ Compilation ok"
}

main(){
	print_header
	build_bin

	for map_path in "${TEST_CASE[@]}"; do
		map_name=$(basename "$map_path")
		echo ""
		echo "---- Test de : $map_name ----"

		ASAN_OPTIONS=detect_leaks=1 "$BINARY" "$map_path"
		result=$?

		if [ $result -eq 0 ]; then
			echo "✅"
		else
			echo "❌"
		fi
	done
}

main
