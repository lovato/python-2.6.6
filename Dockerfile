FROM ubuntu:trusty
MAINTAINER maglovato

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y telnet
RUN apt-get install -y curl
RUN apt-get install -y openssh-client
RUN apt-get install -y unzip
RUN apt-get install -y make
RUN curl https://www.python.org/ftp/python/2.6.6/Python-2.6.6.tgz -o /tmp/p266.tzg
RUN cd /tmp
RUN tar zxvf p266.tgz
RUN cd Python-2.6.6
RUN ./configure
RUN make
RUN make install
