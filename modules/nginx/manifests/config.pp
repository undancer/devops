class nginx::config {

  file { "/etc/init.d/nginx":
    source => "puppet://$puppetserver/modules/nginx/init.d/nginx",
    ensure => present,
    mode => 755,
    owner => root
  }
}