FROM ubuntu:16.04

MAINTAINER Tao Chen <tc466@cornell.edu>

# Prerequisites:
# You need a working installation of Vivado HLS on a Linux machine.
# Copy the installation folder here alongside `Dockerfile`, and name
# it `xilinx`. It should contain at least two sub-folders: `Vivado`
# and `Vivado_HLS`.

# Install dependencies

RUN apt-get update && apt-get install -y \
  build-essential \
  autoconf \
  libx11-6

# Add user

RUN adduser --disabled-password --gecos '' vivado
USER vivado

WORKDIR /home/vivado

# Copy files

COPY xilinx /opt/xilinx


