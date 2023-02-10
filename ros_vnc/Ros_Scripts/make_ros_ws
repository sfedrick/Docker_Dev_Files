#!/bin/bash
current_dir=$(pwd)


# -n) is the name of the workspace directory
# -r) is a git hub repo you'd like to clone in the work space
# -s) setting this to anything will stop the script from sourcing the workspace

while getopts n:r:s: flag
do
    case "${flag}" in
        n) workspace_name=${OPTARG};;
        r) repo=${OPTARG};;
        s) nosource=${OPTARG};;
    esac
done

# Check if the argument is empty
if [ -z "$workspace_name" ]; then
  workspace_name="ros_ws"
fi

mkdir -p $current_dir/$workspace_name/src 

if [ ! -z "$repo" ]; then
  cd $current_dir/$workspace_name/src 
  git clone $repo
  
fi

cd $current_dir/$workspace_name
rosdep install -i --from-path src --rosdistro humble -y

colcon build

if [ -z "$nosource" ]; then
 echo "source $current_dir/$workspace_name/install/local_setup.bash" >> ~/.bashrc
fi
