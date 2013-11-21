class nginx::install {
  package { ["zlib-devel","pcre-devel","openssl-devel"]:
    ensure => present,
    require => [User["nginx"],File["/tmp/nginx-1.4.4.tar.gz"]]
  }
  file { "/tmp/build-nginx.sh": source => "puppet://$puppetserver/modules/nginx/build-nginx.sh" }
  exec { "build-nginx" :
    cwd => "/tmp",
    command => "build-nginx.sh",
    logoutput => on_failure,
    timeout => 0,
    require => [Class["nginx::fetch"],File["/tmp/build-nginx.sh"]]
  }
}