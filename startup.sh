#!/bin/bash
mkdir /var/run/sshd
mkdir /root/.vnc
x11vnc -storepasswd $passwd /root/.vnc/passwd
/usr/bin/supervisord -c /supervisord.conf

while [ 1 ]; do
    /bin/bash
done
