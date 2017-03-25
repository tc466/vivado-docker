# vivado-docker

Build a Docker image with Vivado HLS. This can be helpful for running Vivado HLS on platforms not supported by Xilinx, such as macOS.

## Prerequisites

You need a working installation of Vivado HLS on a Linux machine (tested on Ubuntu 16.04). Copy the installation folder here alongside `Dockerfile`, and name it `xilinx`. It should contain at least two sub-folders: `Vivado` and `Vivado_HLS`.

## Build instructions

Inside this directory, run

```docker build -t vivado .```

This will take 10 minutes or longer depending on the speed of your disk.

## Running Vivado HLS

Vivado HLS is installed under `/opt/xilinx/Vivado_HLS/` in the Docker image. You can run the following command to check if it is installed correctly, which should print a help message on using Vivado HLS.

`docker run -it --rm vivado /opt/xilinx/Vivado_HLS/2016.4/bin/vivado_hls -h`

