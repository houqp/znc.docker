#!/bin/bash

HOSTPORT=5001
CONTAINERPORT=5001

echo "run znc data container..."
docker run -d --name znc_data houqp/znc-data
echo "restoring znc config..."
bash ./restore.sh
echo "run znc container..."
docker run -d -p 0.0.0.0:$HOSTPORT:$CONTAINERPORT \
    --volumes-from znc_data \
    --name znc -t houqp/znc
