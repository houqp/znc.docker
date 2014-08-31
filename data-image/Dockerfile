FROM busybox
MAINTAINER Qingping Hou

RUN adduser -D znc-admin
ADD ./znc.conf /home/znc-admin/.znc/configs/znc.conf
RUN chown znc-admin:znc-admin -R /home/znc-admin

VOLUME /home/znc-admin
