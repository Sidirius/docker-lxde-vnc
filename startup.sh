#!/bin/bash
mkdir /var/run/sshd
/usr/bin/supervisord -c /supervisord.conf
mkdir /root/.vnc
x11vnc -storepasswd $passwd /root/.vnc/passwd

while [ 1 ]; do
    /bin/bash
done
