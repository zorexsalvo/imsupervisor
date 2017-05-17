FROM python:2.7
MAINTAINER Zorex Salvo (zorexsalvo@gmail.com)

RUN apt-get -y update && apt-get -y upgrade

COPY requirements.txt /opt/

WORKDIR /opt/

RUN pip install -r requirements.txt
