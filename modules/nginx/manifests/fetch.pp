class nginx::fetch {
  file { "/tmp/nginx.tar.gz": source => "puppet:///modules/nginx/files/nginx-1.4.4.tar.gz" }
}