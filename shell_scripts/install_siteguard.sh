#!/bin/sh

WORK_DIR="$(pwd)"

# SiteGuard instruction params
ARCH="x86_64"
WEB_SERVER="nginx"
SITEGUARD_SITE_VERSION="4.0.0"
SITEGUARD_FILE_VERSION="4.00-2"
SITEGUARD="siteguard-server-edition-$SITEGUARD_FILE_VERSION.$WEB_SERVER.$ARCH"

cd \
&& wget "http://progeny.sakura.ad.jp/siteguard/$SITEGUARD_SITE_VERSION/$WEB_SERVER/$SITEGUARD.tar.gz" \
&& tar xzf "$SITEGUARD.tar.gz" \
&& cd "$SITEGUARD" \
&& make install \
&& cd "$WORK_DIR"
