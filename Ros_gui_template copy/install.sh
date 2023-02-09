#!/bin/bash

apt install -y ros-humble-desktop 
apt-get -y update
apt-get -y upgrade
apt install -y ros-dev-tools
apt-get -y update
apt-get -y upgrade
curl -sSL http://get.gazebosim.org | sh

apt-get install -y g++
apt-get install -y build-essential
apt-get install -y python3
apt-get install -y python3-pip
apt-get install -y git
#install gedit to help with file changes 
apt-get install -y gedit 
# source set up to the start of your shell startup script we use humble so we
echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
#set ros domain group 
echo "export ROS_DOMAIN_ID=0" >> ~/.bashrc

# install gui to manage ros services
# go to Plugin>Services > Service Caller
apt-get install -y ~nros-humble-rqt*

#handle urdf files properly 
apt-get install -y ros-humble-urdf-tutorial
echo 'export LC_NUMERIC="en_US.UTF-8"' >> ~/.bashrc
#get colcon
apt-get install -y python3-colcon-common-extensions
# add auto complete to colocon bash
echo "source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash" >> ~/.bashrc

# set up ros workspace
cd /home/ && mkdir ros2_ws
cd /home/ros2_ws && mkdir src
cd /home/ros2_ws && colcon build 
echo "source /home/ros2_ws/install/setup.bash" >> ~/.bashrc

#downgrade pip3 because colcon build misbehaves with most recent setuptools
pip3 install setuptools==58.2.0