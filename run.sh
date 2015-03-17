# Setup a password for vnc
mkdir /.vnc
x11vnc -storepasswd $passwd ~/.vnc/passwd
