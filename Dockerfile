ARG BASE_IMAGE=ubuntu:bionic-20200311
FROM $BASE_IMAGE
ENV BASE_IMAGE=$BASE_IMAGE

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /root

RUN apt-get -qqy update && \
    apt-get -qqy --no-install-recommends install \
    ca-certificates \
    curl \
    vim \
  && rm -rf /var/lib/apt/lists/*

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash && \
    apt-get -qqy install nodejs && \
    apt-get autoremove --purge -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    apt-get clean
