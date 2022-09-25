FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y xauth 




RUN apt-get update
#install c++
RUN apt-get install -y g++
RUN apt-get install -y build-essential

#install python
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y git

#install gedit to help with file changes 
RUN apt-get install -y gedit 


# RUN apt-get install -y scilab
WORKDIR /home/

# run this below can't run in docker file because the file stupidly asks
# for the default time zone this could
# for some reason the tar doesn't work fucken linux
# RUN apt-get install wget
# RUN apt-get install tar
# RUN wget https://www.scilab.org/download/6.0.2/scilab-6.0.2.bin.linux-x86_64.tar.gz
# RUN tar -xvf *.tar.gz
# RUN rm -r /home/*tar.gz

#run this command inside the container get MIT-Magic-Cookie key from xauth list
#RUN xauth add :1 MIT-MAGIC-COOKIE-1 2fef02a020bda4a56b827fe0b8d18635