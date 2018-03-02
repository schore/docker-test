# Use an official Python runtime as a parent image
FROM fedora:latest

RUN dnf update -y
RUN dnf install scons -y
RUN dnf install texlive -y
RUN dnf install texlive-glossaries -y
RUN dnf install texlive-tocbibind -y
RUN dnf install texlive-german -y
RUN dnf install texlive-babel-german -y
