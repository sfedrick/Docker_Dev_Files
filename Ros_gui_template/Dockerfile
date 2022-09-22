FROM ros:humble-ros-core
RUN apt-get update
RUN apt-get install -y xauth 
RUN apt-get install curl
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

#run this command inside the container get MIT-Magic-Cookie key from xauth list
# the :1 is the display name find your display name with echo $DISPLAY
#RUN xauth add :1 MIT-MAGIC-COOKIE-1 531e3fb88ef7036c6a3d1ca4c6232854

#see turtle sim to see how ros works 
#https://docs.ros.org/en/foxy/Tutorials/Beginner-CLI-Tools/Introducing-Turtlesim/Introducing-Turtlesim.html

