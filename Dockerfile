FROM ubuntu:16.04

LABEL maintainer="ODIN Docker Maintainers"

RUN mkdir setup

COPY setup_auto.bash setup

RUN chmod 777 setup/setup_auto.bash

RUN setup/setup_auto.bash


