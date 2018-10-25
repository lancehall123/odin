FROM ubuntu:16.04

LABEL maintainer="ODIN Docker Maintainers"

COPY setup_auto.bash ~/.odin/ && 

RUN ~/.odin/setup_auto.bash


