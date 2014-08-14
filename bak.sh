#!/bin/bash

mv znc.conf znc.conf.bak
sudo docker cp znc:/home/znc-admin/.znc/configs/znc.conf ./
