#!/bin/bash

for ((i=1; i < 52; i++)); do
	if [ $i -lt 10 ]; then
		mv ezgif-frame-00$i.png background-00$i.png
	else
		mv ezgif-frame-0$i.png background-0$i.png
	fi
done