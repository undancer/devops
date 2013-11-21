class nginx::fetch {
  file { "/tmp/nginx.tar.gz": source => "puppet://$puppetserver/root/devops/modules/nginx/files/nginx-1.4.4.tar.gz" }
}