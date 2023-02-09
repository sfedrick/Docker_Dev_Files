#!/bin/bash
cd ..
dir_to_mount=$(pwd)
docker run --gpus device=0 -d -p 5901:5901 -p 6901:6901 -v $dir_to_mount:/shared_drive docker_desktop