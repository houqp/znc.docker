#!/bin/sh
exec /sbin/setuser znc-admin znc -f -d /home/znc-admin/.znc >> /var/log/znc.log 2>&1
