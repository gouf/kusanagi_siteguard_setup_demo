#!/bin/sh

OPENSSL_VERSION="1.1.1c"

# NOTE: Run in nginx-x.y.z source directory
wget "https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz" \
&& tar xzf "openssl-$OPENSSL_VERSION.tar.gz"
