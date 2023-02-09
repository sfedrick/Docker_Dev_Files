FROM consol/ubuntu-xfce-vnc
FROM ros:humble-ros-base
RUN apt-get update
RUN apt-get install -y xauth 
RUN apt-get install -y  curl
RUN curl -sSL http://get.gazebosim.org | sh
RUN apt-get install -y g++
RUN apt-get install -y build-essential
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y git
#install gedit to help with file changes 
RUN apt-get install -y gedit 
# source set up to the start of your shell startup script we use humble so we
RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
#set ros domain group 
RUN echo "export ROS_DOMAIN_ID=0" >> ~/.bashrc

# install gui to manage ros services
# go to Plugin>Services > Service Caller
RUN apt-get install -y ~nros-humble-rqt*

#handle urdf files properly 
RUN apt-get install -y ros-humble-urdf-tutorial
RUN echo 'export LC_NUMERIC="en_US.UTF-8"' >> ~/.bashrc

RUN apt-get install -y python3-colcon-common-extensions
# add auto complete to colocon bash
RUN echo "source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash" >> ~/.bashrc

# set up ros workspace
RUN cd /home/ && mkdir ros2_ws
RUN cd /home/ros2_ws && mkdir src
RUN cd /home/ros2_ws && colcon build 
RUN echo "source /home/ros2_ws/install/setup.bash" >> ~/.bashrc

#downgrade pip3 because colcon build misbehaves with most recent setuptools
RUN pip3 install setuptools==58.2.0

#set up rclpy
RUN apt-get -y install ament-cmake
RUN apt install -y \
  python3-sphinx \
  python3-sphinx-autodoc-typehints \
  python3-sphinx-rtd-theme
RUN  cd /home/ && mkdir rclpy_ws
RUN cd /home/rclpy_ws && mkdir src
RUN cd /home/rclpy_ws/src && git clone https://github.com/ros2/rclpy.git
#RUN cd /home/rclpy_ws/ && colcon build --symlink-install
#RUN echo "source /home/rclpy_ws/install/setup.bash" >> ~/.bashrc 
#run this command inside the container get MIT-Magic-Cookie key from xauth list
# the :1 is the display name find your display name with echo $DISPLAY
#RUN xauth add :1 MIT-MAGIC-COOKIE-1 531e3fb88ef7036c6a3d1ca4c6232854

#see turtle sim to see how ros works 
#https://docs.ros.org/en/foxy/Tutorials/Beginner-CLI-Tools/Introducing-Turtlesim/Introducing-Turtlesim.html

