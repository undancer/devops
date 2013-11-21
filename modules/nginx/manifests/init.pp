class nginx {
  user { "nginx":
    ensure => present,
    comment => "nginx user",
    gid => "nginx",
    require => Group["nginx"]
  }

  group { "nginx":
    ensure => present
  }
  include nginx::fetch, nginx::install, nginx::config
}