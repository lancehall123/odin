FROM ubuntu:16.04

LABEL maintainer="ODIN Docker Maintainer"

RUN apt-get update 

RUN mkdir /root/.odin

COPY bin/* /usr/bin/

RUN odind --daemon

RUN chmod 777 /root/.odin/*





