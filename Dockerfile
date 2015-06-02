FROM ubuntu:14.04
MAINTAINER Sven Hartmann <sid@sh87.net>

ENV DEBIAN_FRONTEND noninteractive
ENV HOME /root

RUN apt-mark hold initscripts udev plymouth mountall
RUN dpkg-divert --local --rename --add /sbin/initctl && ln -sf /bin/true /sbin/initctl

RUN apt-get update && apt-get upgrade -y --force-yes && apt-get dist-upgrade -y --force-yes \
    && apt-get install -y --force-yes --no-install-recommends supervisor \
        openssh-server sudo \
        net-tools \
        lxde-core lxde-icon-theme x11vnc xvfb screen openbox \
        nodejs wget \
        firefox \
	htop bmon nano \
	lxterminal \
	vnc-java \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*
    
ADD startup.sh /
ADD supervisord.conf /
EXPOSE 5800
EXPOSE 5900
EXPOSE 22
WORKDIR /
ENTRYPOINT ["/startup.sh"]
