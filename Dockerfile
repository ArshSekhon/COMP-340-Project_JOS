FROM ubuntu:18.04
RUN apt-get update
RUN apt-get -y install build-essential\
                            gdb\
                            gcc-multilib\
                            qemu\
                            make