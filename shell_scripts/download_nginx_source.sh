#!/bin/sh

NGINX_VERSION='1.17.3'

wget "http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz" \
&& tar xzf "nginx-$NGINX_VERSION.tar.gz" \
&& rm -f "nginx-$NGINX_VERSION.tar.gz" \
&& cd "nginx-$NGINX_VERSION"
