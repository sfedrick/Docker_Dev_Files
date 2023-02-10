FROM ros:humble-ros-base AS requirements
# Install git, supervisor, VNC, & X11 packages
RUN set -ex; \
    apt-get update; \
    apt-get install -y \
      bash \
      fluxbox \
      git \
      net-tools \
      novnc \
      supervisor \
      x11vnc \
      xterm \
      xvfb

# Setup xterm and environment variables
ENV HOME=/root \
    DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=C.UTF-8 \
    DISPLAY=:0.0 \
    DISPLAY_WIDTH=1024 \
    DISPLAY_HEIGHT=768 \
    RUN_XTERM=yes \
    RUN_FLUXBOX=yes
COPY . /app
# add useful ros scripts to path
RUN chmod +x /app/Ros_Scripts/*
RUN PATH=$/app/Ros_Scripts/:$PATH
RUN echo "PATH=/app/Ros_Scripts/:$PATH" >> ~/.bashrc

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





CMD ["/app/entrypoint.sh"]
EXPOSE 8080