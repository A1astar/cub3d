#!/bin/bash

# Global Variables
PROJECT_DIR=$(cd .. && pwd)
TEST_DIR=$(pwd)
BINARY=cub3d

TEST_CASE=(
	"empty-map.cub"
	"not-closed.cub"
)

print_header() {
	echo cacahuete
}

main() {
	print_header
	for test in "${TEST_CASE[@]}"; do
		$BINARY "$test"
		valgrind $BINARY "$test"
	done
}
