FROM ubuntu:16.04

LABEL maintainer="ODIN Docker Maintainer"

RUN apt-get update 

RUN mkdir /root/.odin && chmod 777 /root/.odin

RUN mkdir /root/odin_data && chmod 777 /root/odin_data

COPY bin/* /usr/bin/

RUN chmod 777 /usr/bin/odind /usr/bin/odin-cli /usr/bin/odin-qt /usr/bin/odin-tx

CMD ["sh","-c","odind -datadir=/root/odin_data -conf=/root/.odin/odin.conf"]

EXPOSE 22100 22101





