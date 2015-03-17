#!/bin/bash
mkdir /var/run/sshd
/usr/bin/supervisord -c /supervisord.conf

# Setup a password for vnc
RUN mkdir /.vnc
RUN x11vnc -storepasswd $passwd ~/.vnc/passwd

while [ 1 ]; do
    /bin/bash
done
