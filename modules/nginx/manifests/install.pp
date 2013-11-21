class nginx::install {
  package { ["pcre-devel"]:
    ensure => present,
    require => [User["nginx"],File["/tmp/nginx-1.4.4.tar.gz"]]
  }
  exec { "build-nginx" :
    cwd => "/tmp",
    command => "/bin/tar xvf nginx-1.4.4.tar.gz && cd nginx-1.4.4 && ./configure",
    logoutput => on_failure,
    timeout => 0,
    require => Class["nginx::fetch"]
  }
}