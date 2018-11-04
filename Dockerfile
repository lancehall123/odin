FROM ubuntu:16.04

LABEL maintainer="ODIN Docker Maintainer"

RUN apt-get update 

RUN mkdir /root/.odin && chmod 777 /root/.odin

COPY bin/* /usr/bin/

RUN chmod 777 /usr/bin/odind /usr/bin/odin-cli /usr/bin/odin-qt /usr/bin/odin-tx

CMD ["sh","-c","odind"]

VOLUME ["/root/.odin"]

EXPOSE 22100 22101





