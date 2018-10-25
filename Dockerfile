FROM ubuntu:16.04

LABEL maintainer="ODIN Docker Maintainers"

RUN mkdir setup

COPY setup_auto.bash setup

RUN setup/setup_auto.bash


