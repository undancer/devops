node default {
  #include puppetlabs-firewall
  #include firewall
  class { "java": stage => pre }
  class { "firewall": stage => pre }
  class { "nginx": stage => main }
}