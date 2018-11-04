FROM ubuntu:16.04

LABEL maintainer="ODIN Docker Maintainer"

RUN apt-get update 

RUN mkdir ~/.odin

COPY bin/* /usr/bin/

CMD ["sh","-c","odind"]

VOLUME ["~/.odin"]

EXPOSE 22100 22101





