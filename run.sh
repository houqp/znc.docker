#!/bin/bash

HOSTPORT=5001
CONTAINERPORT=5001

docker run -d -p 0.0.0.0:$HOSTPORT:$CONTAINERPORT --name znc -t houqp/znc
