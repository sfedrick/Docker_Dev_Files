#!/bin/bash
#cd into the source of your workspace folder workspace/src

while getopts n:d: flag
do
    case "${flag}" in
        n) package_name=${OPTARG};;
        d) dependencies=${OPTARG};;
    esac
done

if [ -z "$dependencies" ]; then
 ros2 pkg create $package_name --dependencies $dependencies --build-type ament_cmake 
fi


ros2 pkg create $package_name --build-type ament_cmake 