FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libnetcdf-dev \
    libgd3
RUN apt-get -y --allow-downgrades install libgd3=2.2.5-5.2ubuntu2.1
RUN apt-get install -y libgd-dev \
    gfortran \
    devscripts \
    debhelper

# GLM
RUN mkdir /glm

COPY "/glm-aed/binaries/ubuntu/20.04/glm_latest/glm" "/glm"