exec { "install-firewall":
  creates => "/etc/puppet/modules/firewall",
  command => "/usr/bin/puppet module install puppetlabs-firewall",
  stage => pre
}