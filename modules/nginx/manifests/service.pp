class nginx::service {
  service { "nginx":
    ensure => running,
    enable => true,
    hasrestart => true,
    hasstatus => true,
    subscribe => [Class[nginx::fetch],Class[nginx::install],Class[nginx::config]]
  }
}