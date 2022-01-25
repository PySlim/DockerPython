FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

RUN apt-get update -y

RUN apt-get install git -y

RUN git config --global user.name "Slim Josh"

RUN git config --global user.email slim.zegarra@panbox.io

COPY . . 