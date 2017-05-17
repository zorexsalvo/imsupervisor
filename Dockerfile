FROM python:2.7
MAINTAINER Zorex Salvo (zorexsalvo@gmail.com)

RUN apt-get -y update && apt-get -y upgrade \
    && mkdir /var/log/supervisor

WORKDIR /opt/

RUN pip install -r requirements.txt
