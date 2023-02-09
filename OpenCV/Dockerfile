FROM ubuntu:latest


#get docker container to work offline
RUN export VSCODE_CONTEXT=e2816fe719a4026ffa1ee0189dc89bdfdbafb164
RUN cd /root/ && mkdir .vscode-server
RUN cd /root/.vscode-server && mkdir bin
RUN cd /root/.vscode-server/bin && mkdir e2816fe719a4026ffa1ee0189dc89bdfdbafb164
COPY vscode-server-linux-x64/. /root/.vscode-server/bin/e2816fe719a4026ffa1ee0189dc89bdfdbafb164/

#essentials 
RUN apt-get update
RUN apt-get install -y xauth 
RUN apt-get update
RUN apt-get install -y  curl
RUN apt-get install -y git
RUN apt-get install -y gedit 
RUN apt-get install -y nano
#c++
RUN apt-get install -y g++
RUN apt-get install -y build-essential
RUN apt-get -y update
RUN apt-get -y install gdb
RUN apt-get -y update
RUN apt-get install -y libeigen3-dev
RUN apt-get -y update
RUN apt-get install -y libboost-all-dev
RUN apt-get install -y g++ libgtk2.0-dev pkg-config

# get cmake
RUN apt-get -y install cmake




#python stuff 
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y git

#open cv python
RUN pip3 install opencv-python


#open cv C++
#test that the installation is working using
# https://www.geeksforgeeks.org/how-to-install-opencv-for-python-in-linux/
WORKDIR /home/
RUN git clone https://github.com/opencv/opencv.git
RUN mkdir -p build 
WORKDIR /home/build
RUN cmake ../opencv
RUN make -j4
RUN make install


# The header files are at the location 
# /usr/local/include/opencv4

#run this (xauth list) command inside the container get MIT-Magic-Cookie key from xauth list
#RUN xauth add :1 MIT-MAGIC-COOKIE-1 [code from xauth list after mit magic cookie 1]
