#!/bin/sh

WORK_DIR="$(pwd)"

cd \
&& wget http://progeny.sakura.ad.jp/siteguard/4.0.0/nginx/siteguard-server-edition-4.00-2.nginx.x86_64.tar.gz \
&& tar xzf siteguard-server-edition-4.00-2.nginx.x86_64.tar.gz \
&& cd siteguard-server-edition-4.00-2.nginx.x86_64 \
&& make install \
&& cd $WORK_DIR
