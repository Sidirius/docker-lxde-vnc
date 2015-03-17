#!/bin/bash
# Setup a password for vnc
mkdir /root/.vnc
x11vnc -storepasswd $passwd /root/.vnc/passwd
