#!/bin/sh

# NOTE: Run in nginx-x.y.z source directory
mkdir -p extensions && cd extensions \
&& git clone https://github.com/FRiCKLE/ngx_cache_purge.git \
&& git clone https://github.com/nginx-shib/nginx-http-shibboleth.git \
&& git clone https://github.com/vozlt/nginx-module-vts.git \
&& git clone https://github.com/openresty/lua-nginx-module.git \
&& git clone https://github.com/nbs-system/naxsi.git \
&& git clone https://github.com/openresty/headers-more-nginx-module.git \
&& git clone https://github.com/grahamedgecombe/nginx-ct.git \
&& git clone https://github.com/google/ngx_brotli.git \
&& cd ngx_brotli && git submodule update --init && cd ../..

# && git clone https://github.com/phusion/passenger.git \
