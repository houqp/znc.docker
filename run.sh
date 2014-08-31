#!/bin/bash

HOSTPORT=5001
CONTAINERPORT=5001

docker run -d --name znc_data houqp/znc-data
docker run -d -p 0.0.0.0:$HOSTPORT:$CONTAINERPORT \
    --volumes-from znc_data \
    --name znc -t houqp/znc
