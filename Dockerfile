# Use an official Python runtime as a parent image
FROM fedora:latest

RUN dnf update -y
RUN dnf install scons -y
RUN dnf install -y cmake
RUN dnf install gcc -y
RUN dnf install -y gcc-c++
RUN dnf install doxygen graphviz -y
RUN mkdir /src
RUN mkdir /build
RUN chmod +w /build

ADD /googletest /gtest/gtest/
RUN mkdir /gtest/build; cd /gtest/gtest; cmake ../gtest; make install
