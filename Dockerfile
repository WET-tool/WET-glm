FROM jmad1v07/ubuntu-22.04-python-3.10

RUN apt-get update -y && apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libnetcdf-dev \
    libgd3
# RUN apt-get -y --allow-downgrades install libgd3=2.2.5-5.2ubuntu2.1
RUN apt-get install -y libgd-dev \
    gfortran \
    devscripts \
    debhelper

# GLM
RUN mkdir /glm

COPY "/glm-aed/binaries/ubuntu/22.04/glm_latest/glm" "/glm"