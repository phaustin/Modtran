FROM ubuntu:20.04

# SEE: https://github.com/phusion/baseimage-docker/issues/58
# and https://github.com/phusion/baseimage-docker/issues/319
ARG DEBIAN_FRONTEND=noninteractive

RUN echo "Installing Apt-get packages..." \
    && apt-get update --fix-missing \
    && apt-get install -y apt-utils 2> /dev/null \
    && apt-get install -y wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home/jovyan/work/modtran_files
RUN apt-get update
RUN apt-get install -y gfortran-7 make cmake

WORKDIR /home/jovyan/work/modtran_files

CMD ["/bin/bash"]

