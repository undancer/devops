node default {
  #include puppetlabs-firewall
  class { "java": stage => pre }
  class { "nginx": stage => main }
}