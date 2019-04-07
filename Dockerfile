FROM ubuntu:18.04
WORKDIR /src
COPY ./build.sh /
RUN apt-get -qq update
RUN apt-get -qq install build-essential
RUN apt-get -qq install gcc-arm-none-eabi
RUN apt-get -qq install flex bison
RUN apt-get -qq install wget
