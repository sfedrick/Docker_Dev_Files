FROM ubuntu:latest
# set up utf-8

RUN apt update 
RUN apt install -y locales
RUN locale-gen en_US en_US.UTF-8
RUN update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
RUN LANG=en_US.UTF-8


#set up sources 
RUN apt-get install -y software-properties-common
RUN add-apt-repository universe
#get docker container to work offline
# find context from help->about-> commit
# RUN export VSCODE_CONTEXT=e2816fe719a4026ffa1ee0189dc89bdfdbafb164
# RUN cd /root/ && mkdir .vscode-server
# RUN cd /root/.vscode-server && mkdir bin
# RUN cd /root/.vscode-server/bin && mkdir e2816fe719a4026ffa1ee0189dc89bdfdbafb164
# COPY vscode-server-linux-x64/. /root/.vscode-server/bin/e2816fe719a4026ffa1ee0189dc89bdfdbafb164/





RUN apt-get update
RUN apt-get install -y xauth 
RUN apt-get install -y  curl
RUN curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null
RUN apt-get -y update
RUN apt-get -y upgrade
# run bash install.sh on first run of container
COPY install.sh /home/


#run this command inside the container get MIT-Magic-Cookie key from xauth list
# the :1 is the display name find your display name with echo $DISPLAY
#RUN xauth add :1 MIT-MAGIC-COOKIE-1 531e3fb88ef7036c6a3d1ca4c6232854

#see turtle sim to see how ros works 
#https://docs.ros.org/en/foxy/Tutorials/Beginner-CLI-Tools/Introducing-Turtlesim/Introducing-Turtlesim.html

