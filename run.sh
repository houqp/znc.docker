#!/bin/bash

HOSTPORT=5001
CONTAINERPORT=5001

if [ ! -n "`docker ps -a | grep znc_data`" ]; then
	docker run -d --name znc_data houqp/znc-data
	echo "restoring znc config..."
	bash ./restore.sh
fi

echo "run znc container..."
docker run -d -p 0.0.0.0:$HOSTPORT:$CONTAINERPORT \
    --volumes-from znc_data \
    --name znc -t houqp/znc
