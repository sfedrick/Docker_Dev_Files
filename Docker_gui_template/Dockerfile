FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y xauth 
RUN apt-get install -y curl
RUN apt-get update
RUN apt-get install -y gimp

#get docker container to work offline
# RUN export VSCODE_CONTEXT=e2816fe719a4026ffa1ee0189dc89bdfdbafb164
# RUN cd /root/ && mkdir .vscode-server
# RUN cd /root/.vscode-server && mkdir bin
# RUN cd /root/.vscode-server/bin && mkdir e2816fe719a4026ffa1ee0189dc89bdfdbafb164
# COPY vscode-server-linux-x64/. /root/.vscode-server/bin/e2816fe719a4026ffa1ee0189dc89bdfdbafb164/

#run this command inside the container get MIT-Magic-Cookie key from xauth list
#RUN xauth add :1 MIT-MAGIC-COOKIE-1 2fef02a020bda4a56b827fe0b8d18635