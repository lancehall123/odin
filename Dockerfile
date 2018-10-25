FROM ubuntu:16.04

LABEL maintainer="ODIN Docker Maintainers"

RUN mkdir ~/.odin

COPY setup_auto.bash ~/.odin/ && 

RUN ~/.odin/setup_auto.bash


