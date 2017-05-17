FROM python:2.7
MAINTAINER Zorex Salvo (zorexsalvo@gmail.com)

RUN apt-get -y update && apt-get -y upgrade \
    && mkdir /var/log/supervisor

COPY . /opt/
WORKDIR /opt/

RUN mv etc/* /etc/

RUN pip install -r requirements.txt

ENTRYPOINT ["/opt/entrypoint.sh"]
