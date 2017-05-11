FROM ubuntu:16.04

MAINTAINER ximlor

USER root

ADD ./sources.list /etc/apt

RUN release=$(cat /etc/lsb-release |grep CODENAME |awk -F= '{print $2}') && \
    sed -i "s/{release}/$release/" /etc/apt/sources.list

CMD ["bash"]
