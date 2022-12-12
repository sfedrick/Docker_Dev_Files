FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y xauth 
RUN apt-get install -y curl
RUN apt-get update
RUN apt-get install -y git
WORKDIR /home/
RUN git clone https://github.com/sfedrick/ShaunFedrick.com.git
WORKDIR /home/ShaunFedrick.com
RUN apt-get install -y python3.10-venv
RUN apt-get install -y python3-pip
RUN pip install -r requirements.txt
RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sh

#when you first start the container run 
#heroku git:remote -a shaunfedrick
#then git add, git commit, git push heroku main to make changes

#run this command inside the container get MIT-Magic-Cookie key from xauth list
#RUN xauth add :1 MIT-MAGIC-COOKIE-1 2fef02a020bda4a56b827fe0b8d18635