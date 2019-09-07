#!/bin/sh

WORK_DIR="$(pwd)"

cd /opt/jp-secure/siteguardlite \
&& ./setup.sh \
&& cd $WORK_DIR

# # # # # # # # # # # #
# Q&A
# It's key-punch time!
# # # # # # # # # # # #

# Nginx Config File
# /etc/nginx/nginx.conf

# Nginx Binary File (Nothing to do.)
# /usr/sbin/nginx

# Is the Web server registered in systemd?
# yes

# please enter Nginx service name.
# nginx

# please enter JDK or JRE directory.
# /usr/lib/jvm/jre-11

# please enter the port number of the web console for https.
# 9443

# please enter the addresses allowed to access the web console for https.
# all

# do you change the ssl certificate files?
# no
