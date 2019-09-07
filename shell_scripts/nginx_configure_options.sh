#!/bin/sh

# NOTE: Run in nginx-x.y.z source directory
./configure \
  --conf-path=/etc/nginx/nginx.conf \
  --add-module=./extensions/naxsi/naxsi_src \
  --sbin-path=/usr/sbin/nginx \
  --error-log-path=/var/log/nginx/error.log \
  --http-log-path=/var/log/nginx/access.log \
  --pid-path=/var/run/nginx.pid \
  --lock-path=/var/run/nginx.lock \
  --http-client-body-temp-path=/var/cache/nginx/client_temp \
  --http-proxy-temp-path=/var/cache/nginx/proxy_temp \
  --http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp \
  --http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp \
  --http-scgi-temp-path=/var/cache/nginx/scgi_temp \
  --user=nginx \
  --group=nginx \
  --with-http_ssl_module \
  --with-http_realip_module \
  --with-http_addition_module \
  --with-http_sub_module \
  --with-http_dav_module \
  --with-http_flv_module \
  --with-http_mp4_module \
  --with-http_gunzip_module \
  --with-http_gzip_static_module \
  --with-http_random_index_module \
  --with-http_secure_link_module \
  --with-http_stub_status_module \
  --with-http_auth_request_module \
  --with-mail \
  --with-mail_ssl_module \
  --with-file-aio \
  --with-http_v2_module \
  --with-http_image_filter_module \
  --with-http_geoip_module \
  --with-http_perl_module \
  --with-pcre-jit \
  --with-openssl=openssl-1.1.1c \
  --add-module=./extensions/ngx_cache_purge \
  --add-module=./extensions/nginx-ct \
  --add-module=./extensions/ngx_brotli \
  --add-module=./extensions/nginx-http-shibboleth \
  --add-module=./extensions/headers-more-nginx-module \
  --add-module=./extensions/nginx-module-vts \
  --with-cc-opt='-O2 -g -pipe -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=4 -m64 -mtune=generic -I/usr/local/openssl/include' \
  --prefix=/etc/nginx \
  --add-module=/opt/jp-secure/siteguardlite/nginx
  # --add-module=./extensions/lua-nginx-module \ # May not needed. but install it when need.
  # --add-module=./extensions/passenger/src/nginx_module \ # I dont understand why need this. (Is that for Ruby...?)
  # --with-ld-opt=-L/usr/local/openssl/lib \ # Might not need.
  # --add-module=./extensions/ngx_nps \ # Cannot identified this module where from.

