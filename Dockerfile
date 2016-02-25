FROM debian:jessie

MAINTAINER "Alexandre Kalendarev" <akalendi@mail.ru>

LABEL Description="This image HHVM with msgpack extension" Version="1.0"

RUN apt-get update && apt-get install -y inotify-tools nginx apache2 openssh-server

RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0x5a16e7281be7a449
RUN echo deb http://dl.hhvm.com/debian jessie main | tee /etc/apt/sources.list.d/hhvm.list

RUN apt-get clean && \
    apt-get update && \
    apt-get install -y hhvm &&   apt-get install -y hhvm-dev 
  

RUN  apt-get install -y git curl 
RUN hhvm --version
RUN git clone https://github.com/akalend/hhvm-msgpack.git 
RUN  rm -rf /var/lib/apt/lists/*

COPY php.ini /etc/hhvm/php.ini
COPY init.sh /init.sh

EXPOSE 9000

CMD ["init.sh"]

 
