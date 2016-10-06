FROM ubuntu:latest
MAINTAINER gee c
RUN apt-get update -y && apt-get install -y python-pip python-dev build-essential tar git curl nano wget dialog net-tools redis-server
ENV TERM=xterm
ADD /app /app
WORKDIR /shared
EXPOSE 5000
RUN service redis-server stop
RUN pip install -r /app/requirements.txt
