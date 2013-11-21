class nginx::fetch {
  file { "/tmp/nginx-1.4.4.tar.gz": source => "puppet://$puppetserver/modules/nginx/nginx-1.4.4.tar.gz" }
}