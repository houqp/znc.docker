FROM phusion/baseimage
MAINTAINER Qingping Hou
ENV HOME /root

RUN rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh
RUN apt-get -y update && apt-get -y install libssl-dev g++ build-essential
RUN useradd -m znc-admin

RUN cd $HOME && \
	curl -o znc.tar.gz http://znc.in/releases/archive/znc-1.6.1.tar.gz && \
	tar xzf znc.tar.gz

RUN cd $HOME/znc* && \
	./configure && make && make install

RUN mkdir /etc/service/znc
ADD znc.sh /etc/service/znc/run

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 5001

