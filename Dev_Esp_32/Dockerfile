FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y xauth 
RUN apt-get install -y  curl
RUN apt-get update
RUN apt-get install -y g++
RUN apt-get install -y build-essential
RUN apt-get install -y git
RUN apt-get install -y gedit 
RUN apt-get -y update
RUN apt-get -y install gdb
WORKDIR /home/
# get esp-idf from github
RUN git clone --recursive https://github.com/espressif/esp-idf
WORKDIR /home/esp-idf/
# install pip packages and python modules
RUN apt-get install -y python3.10-venv
RUN ./install.sh
# some weird shit happens when you try to export things to path
# essentially you need to install libusb
RUN apt-get install -y libhidapi-libusb0
#export things to path so you can use idf.py build to build projects
RUN . ./export.sh
WORKDIR /home/
# install cmake
RUN apt-get install -y cmake
# find more info at https://docs.espressif.com/projects/esp-idf/en/latest/esp32/get-started/index.html#ide
#go into project folder run 
#idf.py create-project <NAME> to create your porject
#idf.py set-target esp-32
# #use idf.py build to build your project
#idf.py build
## flash to the board with
#idf.py -p /dev/ttyUSB0 flash
# read from serial port using 
#idf.py monitor 

#install putty
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y universe
RUN apt-get update
RUN apt-get install -y putty

#run this command inside the container get MIT-Magic-Cookie key from xauth list
#RUN xauth add :1 MIT-MAGIC-COOKIE-1 2fef02a020bda4a56b827fe0b8d18635