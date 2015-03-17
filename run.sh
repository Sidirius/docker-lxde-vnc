#!/bin/bash
# Setup a password for vnc
echo $passwd
mkdir /root/.vnc
x11vnc -storepasswd $passwd /root/.vnc/passwd
