FROM ubuntu:18.04

LABEL maintainer=fdock

ENV DEBIAN_FRONTEND noninteractive

ENV LANG de_DE.utf8
ENV LC_MESSAGES C

#################
# System
#################
RUN apt update && \
    apt -y dist-upgrade && \
    apt -y install locales && \
    apt update && \
    echo "Europe/Berlin" > /etc/timezone && \
    localedef -i de_DE -c -f UTF-8 -A /usr/share/locale/locale.alias de_DE.UTF-8 && \
    apt -y purge bzip2 && \
    apt -y autoremove && \
    apt -y autoclean

