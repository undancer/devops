#!/usr/bin/env bash

cd /tmp

tar xvf nginx-1.4.4.tar.gz

cd nginx-1.4.4

./configure \
  --prefix=/usr/local/nginx \
  --user=nginx \
  --group=nginx \
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
  --with-http_ssl_module \
  --with-http_gzip_static_module \
  --with-http_ssl_module \
  --with-http_realip_module \
  --with-http_addition_module \
  --with-http_sub_module \
  --with-http_dav_module \
  --with-http_flv_module \
  --with-http_mp4_module \
  --with-http_gzip_static_module \
  --with-http_random_index_module \
  --with-http_secure_link_module \
  --with-http_stub_status_module \
  --with-mail \
  --with-mail_ssl_module \
  --with-file-aio \
  --with-ipv6 \
  --with-cc-opt='-O2 -g -m64 -mtune=generic'

# --without-select_module
# --without-poll_module
# --without-http_ssi_module
# --without-http_userid_module
# --without-http_geo_module
# --without-http_map_module
# --without-http_uwsgi_module
# --without-http_scgi_module
# --without-http_memcached_module
# --without-mail_pop3_module
# --without-mail_imap_module
# --without-mail_smtp_module

make