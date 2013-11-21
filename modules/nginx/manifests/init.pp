class nginx {
  user { "nginx":
    ensure => present,
    comment => "nginx user"
  }

  group { "nginx":
    ensure => present
  }
  include nginx::fetch, nginx::install
}