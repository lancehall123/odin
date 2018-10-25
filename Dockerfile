FROM ubuntu:16.04

LABEL maintainer="ODIN Docker Maintainers"

RUN mkdir setup

RUN mkdir /root/.odin

COPY setup_auto.bash setup

COPY bin/* /root/.odin/

RUN chmod 777 /root/.odin/*.*

RUN chmod 777 setup/setup_auto.bash

RUN setup/setup_auto.bash


