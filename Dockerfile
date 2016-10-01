FROM ubuntu:latest
MAINTAINER gee c
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential tar git curl nano wget dialog net-tools
ADD /app /app
WORKDIR /app
RUN pip install -r /app/requirements.txt
CMD  python app.py