#!/bin/bash
docker build --rm=true -t houqp/znc-data ./data-image
docker build --rm=true -t houqp/znc ./znc-image
