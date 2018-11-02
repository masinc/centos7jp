FROM centos:centos7
MAINTAINER masinc

RUN yum update -y &&\ 
    yum clean all
ENV LANG ja_JP.UTF-8
RUN localedef -i ja_JP -f UTF-8 ja_JP.UTF-8 &&\
    echo 'LANG="ja_JP.UTF-8"' >  /etc/locale.conf &&\
    echo 'ZONE="Asia/Tokyo"' > /etc/sysconfig/clock &&\
    ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

