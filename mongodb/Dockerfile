FROM ghcr.io/linuxserver/baseimage-ubuntu:bionic

# environment settings
ARG DEBIAN_FRONTEND="noninteractive"
ENV TZ=Asia/Shanghai

# install packages
RUN \
  echo "**** install build packages ****" && \
  apt-get update && \
  apt-get install -y \
    gnupg wget && \
  wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add - && \
  echo 'deb https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse' \
    > /etc/apt/sources.list.d/mongodb-org-4.2.list && \
  apt-get update && \
  apt-get install -y \
    mongodb-org && \
  echo "**** cleanup ****" && \
  apt-get clean && \
  rm -rf \
    /tmp/* \
    /var/lib/apt/lists/* \
    /var/tmp/* \
    /var/log/*

# add local files
COPY root/ /

# ports and volumes
VOLUME /config/data
EXPOSE 27017 28017