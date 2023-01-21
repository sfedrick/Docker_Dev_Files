FROM ubuntu:latest


#get docker container to work offline
RUN cd /root/ && mkdir .vscode-server
RUN cd /root/.vscode-server && mkdir bin
RUN cd /root/.vscode-server/bin && mkdir 97dec172d3256f8ca4bfb2143f3f76b503ca0534
COPY /home/shaun/Code/. .

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


# That’s it. If you did not encounter any error then OpenCV is installed successfully 
#on your Linux system. The header files are at the location 
# /usr/local/include/opencv4

#run this command inside the container get MIT-Magic-Cookie key from xauth list
#RUN xauth add :1 MIT-MAGIC-COOKIE-1 [code from xauth list after mit magic cookie 1]
