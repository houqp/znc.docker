#!/bin/sh
chown -R znc-admin:znc-admin /home/znc-admin
if [ ! -f /home/znc-admin/.znc/znc.pem ]; then
	# create pem file for ssl
	exec /sbin/setuser znc-admin znc -p
fi
exec /sbin/setuser znc-admin znc -f -d /home/znc-admin/.znc # >> /var/log/znc.log 2>&1
