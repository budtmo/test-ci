ARG BASE_IMAGE=ubuntu:bionic-20200311
FROM $BASE_IMAGE
ENV BASE_IMAGE=$BASE_IMAGE

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -qqy update && \
    apt-get -qqy --no-install-recommends install \
    vim \
  && rm -rf /var/lib/apt/lists/*
