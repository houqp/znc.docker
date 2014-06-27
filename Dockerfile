FROM houqp/znc-base
MAINTAINER Qingping Hou
RUN rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh

ADD ./znc.conf /home/znc-admin/.znc/configs/znc.conf
RUN sh -c 'chown -R znc-admin:znc-admin /home/znc-admin/.znc'
EXPOSE 5001
USER znc-admin
ENTRYPOINT znc -f -d /home/znc-admin/.znc
