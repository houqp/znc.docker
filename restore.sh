#!/bin/bash

BK_DIR=backups

if [ -f $BK_DIR/znc.conf ]; then
    docker run --rm=true \
        --volumes-from znc_data \
        -v $(pwd)/$BK_DIR:/backups \
        busybox cp /backups/znc.conf /home/znc-admin/.znc/configs/znc.conf
else
    echo "znc config $BK_DIR/znc.conf not found, use defult config"
fi
