#!/bin/bash

BK_DIR=backups

if [ ! -e $BK_DIR ]; then
    mkdir $BK_DIR
fi

if [ -f $BK_DIR/znc.conf ]; then
    mv $BK_DIR/znc.conf $BK_DIR/znc.conf.`date "+%m-%d-%Y"`bak
fi

docker run --rm=true \
    --volumes-from znc_data -v $(pwd)/backups:/backups \
    busybox sh -c \
        "cp /home/znc-admin/.znc/configs/znc.conf /backups/znc.conf && \
         chown $UID:$GID /backups/znc.conf"
