#!/bin/bash
mkdir /var/run/sshd
mkdir /root/.vnc
if [ ! -f /root/.vnc/passwd ]
then
x11vnc -storepasswd $passwd /root/.vnc/passwd
fi
/usr/bin/supervisord -c /supervisord.conf

while [ 1 ]; do
    /bin/bash
done
