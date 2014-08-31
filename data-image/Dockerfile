FROM busybox
MAINTAINER Qingping Hou

RUN adduser -D znc-admin
ADD ./znc.conf /home/znc-admin/.znc/configs/znc.conf

VOLUME /home/znc-admin
